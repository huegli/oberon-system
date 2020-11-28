#!/bin/sh

FILES1="Blink BootLoad Checkers Clipboard Curves Display Display.Orig"
FILES2="Draw EBNF Edit FileDir Files Fonts GraphTool GraphicFrames"
FILES3="Graphics Hilbert Input Input.Orig Kernel MacroTool Math"
FILES4="MenuViewers Modules Net ORB ORC ORG ORP ORS ORTool Oberon"
FILES5="PCLink1 PIO RISC RS232 Rectangles SCC Sierpinski SmallPrograms"
FILES6="Stars System TextFrames Texts Tools Viewers"

FILES="$FILES1 $FILES2 $FILES3 $FILES4 $FILES5 $FILES6"

for f in $FILES; do
  echo "$f.Mod" > PCLink.SND
  sleep 0.6
  cat "$f.Mod" | tr '\r' '\n' > src/$f.Mod
  rm $f.Mod
done

