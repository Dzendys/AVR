# AVR Assembly Compiler & Debugger

This is a simple Bash script to compile and debug AVR Assembly `.asm` files using `avr-gcc`, `simavr`, and `avr-gdb`. It supports the **ATmega328P** microcontroller and can display the LCD output in the GDB terminal.

---

## 🛠 Requirements

Before using the script, install the necessary tools:

```bash
sudo apt install binutils-avr gcc-avr avr-libc gdb-avr simavr
```

## 💡 Assembly format
Your `.asm` file should follow this format:

```asm
.text
.global main

main:
    ; your AVR assembly code here

loop:
    nop
    jmp loop

.end
```

>You can try and modify the `example.asm` code in this repository.

## 🖥️ LCD Display

>Make sure to include the `printlib.inc` *(keep the version in the repository, as using a different one might cause issues)*.

To display characters on an LCD screen, first call the `init_disp` function to initialize the display. Then, you can use the `show_char` function to display a character at a specified position. The character is passed in `R16`, and the position is determined by `R17`.


```asm
.text
.global main
.include "printlib.inc"

main:
    call init_disp
    ldi r16, 'A'
    ldi r17, 0
    call show_char

loop:
    nop
    jmp loop

.end
```

The LCD display has two lines, with the first line displaying characters at positions `0x00` to `0x0F` and the second line at positions `0x40` to `0x4F`.

## 🚀 Usage

The script checks for the `.asm` extension, changes extention to `.S`, compiles it to an `.elf` binary, and starts **simavr** on `localhost:1234`.

Then it launches **avr-gdb** with a TUI interface for debugging. Additionally, it runs the `lcd_display.gdb` script which shows the LCD output in the GDB terminal.

> Compilation errors will **abort** the script.

>Temporary `.S` and `.elf` files are automatically deleted when you exit the debugger.


## 📜 License
No license. Use and modify freely. Credit and pull requests are appreciated.
