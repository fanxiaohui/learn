SECTIONS {
    . = 0x80000000;
    .text : { start.o(.text)
			  main.o(.text)
              led.o(.text)
              uart.o(.text)
			  printf.o(.text)
              *(.text) 
            }
    .rodata ALIGN(4) : {*(.rodata*)} 
    .data   ALIGN(4) : { *(.data) }
    __bss_start = .;
    .bss ALIGN(4)  : { *(.bss)  *(COMMON) }
    __bss_end = .;
}
