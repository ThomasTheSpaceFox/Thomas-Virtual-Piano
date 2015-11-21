#!/bin/bash
WHEREAMI="$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd && echo)"
cd $WHEREAMI

export DIALOG='
<window title="Thomas Virtual Piano -about" image-name="Thomas-Virtual-Piano.png">
  <vbox>
    <text wrap="false">
      <input file>about.txt</input>
    </text>
    <hbox>
      <button ok></button>
    </hbox>
  </vbox>
</window>'

I=$IFS; IFS=""
for STATEMENTS in  $(gtkdialog --program DIALOG); do
  eval $STATEMENTS
done
IFS=$I

if [ "$EXIT" = "OK" ]; then
  echo ""
else
  echo ""
fi
