.global _ErrorWithMessage

.extern exit
.extern printf

.section .data
.L.str0: .asciz "\nExiting program!"

.section .text

// void x(const char* error_string)
_ErrorWithMessage:
  push %rbp
  subq $32, %rsp

  //rax set already
  callq printf

  leaq .L.str0(%rip), %rcx
  callq printf

  mov $1, %rcx
  callq exit

  addq $32, %rsp
  pop %rbp



