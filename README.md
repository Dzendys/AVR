# AVR Assembly Compiler & Debugger

This is a simple Bash script to compile and debug AVR Assembly `.asm` files using `avr-gcc`, `simavr`, and `avr-gdb`. It supports the **ATmega328P** microcontroller.

---

## 🛠 Requirements

Before using the script, install the necessary tools:

```bash
sudo apt install binutils-avr gcc-avr avr-libc gdb-avr simavr avrdude
```

## 💡 Assembly format
Your `.asm` file should follow this format:

```asm
.text
.global main

main:
    ; your AVR assembly code here
end:
    jmp end

.end
```

>You can try the `example.asm` code in this repository.

## 🚀 Usage

The script checks for the `.asm` extension, changes extention to `.S`, compiles it to an `.elf` binary, and starts **simavr** on `localhost:1234`.

Then it launches **avr-gdb** with a TUI interface for debugging.

> Compilation errors will **abort** the script.

>Temporary `.S` and `.elf` files are automatically deleted when you exit the debugger.


## 📜 License
No license. Use and modify freely. Credit and pull requests are appreciated.
