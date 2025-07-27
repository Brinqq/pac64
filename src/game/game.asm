.include "core/global.asm"
.include "external/sdl_imports.asm"

.extern _gfx_init

.global _game_start

.section .data
  g_exit_flag: .byte false

  .L.str0: .asciz "loop\n"

.section .text

_game_loop:
  push %rbp
  movq %rsp, %rbp
  subq $64, %rsp

  1: //main loop label

  movb g_exit_flag(%rip), %al
  cmpb $true, %al
  # je 0f 
  jmp 1b
  
  0: //exit
  addq $64, %rsp
  pop %rbp
  ret

_game_start:
  push %rbp
  movq %rsp, %rbp
  subq $32, %rsp

  movl $SDL_INIT_VIDEO, %ecx 
  callq SDL_Init

  callq _gfx_init

  callq _game_loop

  addq $32, %rsp
  pop %rbp
  ret
