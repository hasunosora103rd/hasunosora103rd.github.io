```bash
#!/bin/bash

i=1

for file in *; do
  # ファイルのみ対象（ディレクトリ除外）
  if [ -f "$file" ]; then
    ext="${file##*.}"
    mv "$file" "fes_live_${i}.${ext}"
    i=$((i+1))
  fi
done
```
