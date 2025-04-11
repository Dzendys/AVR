#!/bin/bash

# VYMRDANEJ KOMPILATOR AVR ASSEMBLER
# by: @dzendys_

# ----- COMPILE AND DEBUG ------
# check if there is an input file
if [ -z "$1" ]; then
    echo "No input file"
    echo "Usage: $0 <.asm file>"
    exit 1;
fi;

#check .asm extension
if [ "${1##*.}" != "asm" ]; then
    echo "Invalid input file"
    echo "Usage: $0 <.asm file>"
    exit 1;
fi;

#goofy aah renaming
S_file=$(echo "$1" | sed 's/\.asm$/\.S/1')
elf_file=$(echo "$1" | sed 's/\.asm$/\.elf/1')
cat "$1" > "$S_file"

#compile
avr-gcc -g -mmcu=atmega328p -o "$elf_file" "$S_file"

#check if compilation was successful
if [ $? -ne 0 ]; then
    echo "Compilation failed"
    exit 1;
fi

#cleanup
trap 'kill "$SIMAVR_PID" 2>/dev/null; rm "$S_file"; rm "$elf_file"' EXIT

#run server
simavr -g -m atmega328p "$elf_file" &
SIMAVR_PID=$!

#debug
avr-gdb "$elf_file" \
  -ex "target remote localhost:1234" \
  -ex "tui enable" \
  -ex "layout regs" \
  -ex "source lcd_display.gdb"
