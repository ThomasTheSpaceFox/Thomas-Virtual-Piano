#!/bin/bash
WHEREAMI="$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd && echo)"
cd $WHEREAMI

export DIALOG='
<window title="Thomas Virtual Piano" image-name="Thomas-Virtual-Piano.png">
  <vbox>
    <hbox>
      <pixmap>
        <input file>speaker.png</input>
      </pixmap>
      <button ok></button>
      <button>
        <label>"About"</label>
        <action>"'$WHEREAMI'/about.sh"</action>
      </button>
      <pixmap>
        <input file>bar.png</input>
      </pixmap>
      <button>
        <label>""</label>
        <action>"beep -f 300 -l 40 -n -f 400 -l 5 -n -f 250 -l 15 -n -f 100 -l 10"</action>
        <input file>"cymbal.png"</input>
      </button>
      <button>
        <label>""</label>
        <action>"beep -f 300 -l 40 -n -f 400 -l 5 -n -f 300 -l 10"</action>
        <input file>"hithat.png"</input>
      </button>
      <button>
        <label>""</label>
        <action>"beep -f 60 -l 40"</action>
        <input file>"bdrum.png"</input>
      </button>
      <button>
        <label>""</label>
        <action>"beep -f 100 -l 40"</action>
        <input file>"ldrum.png"</input>
      </button>
      <text>
        <label>"Thomas Virtual Piano"</label>
      </text>
      <pixmap>
        <input file>speaker.png</input>
      </pixmap>
    </hbox>
    <hbox>
      <pixmap>
        <input file>21.png</input>
      </pixmap>
      <pixmap>
        <input file>22.png</input>
      </pixmap>
      <pixmap>
        <input file>23.png</input>
      </pixmap>
      <pixmap>
        <input file>24.png</input>
      </pixmap>
      <pixmap>
        <input file>25.png</input>
      </pixmap>
      <pixmap>
        <input file>26.png</input>
      </pixmap>
      <pixmap>
        <input file>27.png</input>
      </pixmap>
      <pixmap>
        <input file>28.png</input>
      </pixmap>
      <pixmap>
        <input file>29.png</input>
      </pixmap>
      <pixmap>
        <input file>30.png</input>
      </pixmap>
      <pixmap>
        <input file>31.png</input>
      </pixmap>
      <pixmap>
        <input file>32.png</input>
      </pixmap>
      <pixmap>
        <input file>33.png</input>
      </pixmap>
      <pixmap>
        <input file>34.png</input>
      </pixmap>
      <pixmap>
        <input file>35.png</input>
      </pixmap>
      <pixmap>
        <input file>36.png</input>
      </pixmap>
      <pixmap>
        <input file>37.png</input>
      </pixmap>
      <pixmap>
        <input file>38.png</input>
      </pixmap>
      <pixmap>
        <input file>39.png</input>
      </pixmap>
      <pixmap>
        <input file>40.png</input>
      </pixmap>
    </hbox>
    <hbox>
      <button>
        <label>""</label>
        <action>"beep -f 87"</action>
        <input file>"keyw.png"</input>
      </button>
      <button>
        <label>""</label>
        <action>"beep -f 92"</action>
        <input file>"keyb.png"</input>
      </button>
      <button>
        <label>""</label>
        <action>"beep -f 98"</action>
        <input file>"keyw.png"</input>
      </button>
      <button>
        <label>""</label>
        <action>"beep -f 104"</action>
        <input file>"keyb.png"</input>
      </button>
      <button>
        <label>""</label>
        <action>"beep -f 110"</action>
        <input file>"keyw.png"</input>
      </button>
      <button>
        <label>""</label>
        <action>"beep -f 116"</action>
        <input file>"keyb.png"</input>
      </button>
      <button>
        <label>""</label>
        <action>"beep -f 123"</action>
        <input file>"keyw.png"</input>
      </button>
      <button>
        <label>""</label>
        <action>"beep -f 131"</action>
        <input file>"keyw.png"</input>
      </button>
      <button>
        <label>""</label>
        <action>"beep -f 138"</action>
        <input file>"keyb.png"</input>
      </button>
      <button>
        <label>""</label>
        <action>"beep -f 147"</action>
        <input file>"keyw.png"</input>
      </button>
      <button>
        <label>""</label>
        <action>"beep -f 155"</action>
        <input file>"keyb.png"</input>
      </button>
      <button>
        <label>""</label>
        <action>"beep -f 165"</action>
        <input file>"keyw.png"</input>
      </button>
      <button>
        <label>""</label>
        <action>"beep -f 175"</action>
        <input file>"keyw.png"</input>
      </button>
      <button>
        <label>""</label>
        <action>"beep -f 185"</action>
        <input file>"keyb.png"</input>
      </button>
      <button>
        <label>""</label>
        <action>"beep -f 196"</action>
        <input file>"keyw.png"</input>
      </button>
      <button>
        <label>""</label>
        <action>"beep -f 208"</action>
        <input file>"keyb.png"</input>
      </button>
      <button>
        <label>""</label>
        <action>"beep -f 220"</action>
        <input file>"keyw.png"</input>
      </button>
      <button>
        <label>""</label>
        <action>"beep -f 233"</action>
        <input file>"keyb.png"</input>
      </button>
      <button>
        <label>""</label>
        <action>"beep -f 247"</action>
        <input file>"keyw.png"</input>
      </button>
      <button>
        <label>""</label>
        <action>"beep -f 262"</action>
        <input file>"keyw.png"</input>
      </button>
    </hbox>
  </vbox>
</window>'

I=$IFS; IFS=""
for STATEMENTS in  $(gtkdialog --space-expand=true --space-fill=true --program DIALOG); do
  eval $STATEMENTS
done
IFS=$I

if [ "$EXIT" = "OK" ]; then
  echo ""
else
  echo ""
fi
