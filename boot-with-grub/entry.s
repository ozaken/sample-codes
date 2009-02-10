MULTIBOOT_HEADER_MAGIC  = 0x1BADB002
MULTIBOOT_HEADER_FLAGS  = 0x0001
CHECKSUM = -(MULTIBOOT_HEADER_MAGIC+MULTIBOOT_HEADER_FLAGS)

.section .entry 
.code32
.globl entry
entry:
    jmp init_cpu_main # <- Entry point of this program
    .align 4
multiboot_hader :
    .long MULTIBOOT_HEADER_MAGIC
    .long MULTIBOOT_HEADER_FLAGS
    .long CHECKSUM

.globl start_hlt
start_hlt:
    hlt
    jmp start_hlt

