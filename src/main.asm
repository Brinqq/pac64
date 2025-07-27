.global main

.extern game_start

.text
main:
  push %rbp
  movq %rsp, %rbp

  callq _game_start

  pop %rbp
  xor %rax, %rax
  ret
