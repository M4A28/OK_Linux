#!/bin/bash

if [ ! -f "/bin/enscript" ] && [ ! -f "/bin/pdftk" ] && [ ! -f "/bin/ps2pdf" ]; then
  echo "there is missing package.
          the fallowing package will be install :
          - pdftk
          - enscript
          - ps2pdf"
  sudo apt install pdftk enscript ps2pdf -y
  else
    if [ ! -z "$1" ] && [ ! -z "$2" ]; then
      echo "pdf under processing"
      page_num=$(pdftk "$1" dump_data | grep "NumberOfPages" | cut -d":" -f2)
      enscript -L1 --header='|page $% of $=|' --output - < <(for i in $(seq "$page_num"); do echo; done) | ps2pdf - | pdftk "$1" multistamp - output $2
      echo "all done"
      else
        echo "Usage: [$0] [input pdf] [output pdf]
        example: $0 java_file.pdf java_output.pdf"
    fi
fi
