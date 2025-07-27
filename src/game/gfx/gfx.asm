.include "external/sdl_imports.asm"
.include "core/global.asm"

.global _gfx_init
.global _gfx_update

/* struct Window{
  uint32 height,
  uint32 width,
  opaque* win_handle,
  opaque* render_handle,
};*/

 .section .data
 .align 64

//TODO:Maybe make customizable window data from a configuration file.
//Window default data.
.L_window_width: .word 1920
.L_window_height: .word 1080
.L_window_flag: .quad 0
.L_window_handle: .quad 0
.L_render_handle: .quad 0

.L.str0: .asciz "Pac64"
.L.err0: .asciz "FATAL ERROR: Failed to initialize window and or renderer\n"

.section .text
_create_window:
  callq _create_window
  ret

_gfx_update:
  push %rbp
  movq %rsp, %rbp
  subq $32, %rsp

  addq $32, %rsp
  pop %rbp
  ret


_gfx_init:
  push %rbp
  subq $64, %rsp

  //Create renderer and window
  leaq .L_window_handle(%rip), %rcx
  movq %rcx, 40(%rsp)
  leaq .L_render_handle(%rip), %rcx
  movq %rcx, 48(%rsp)

  leaq .L.str0(%rip), %rcx
  movl .L_window_height(%rip), %eax
  movl .L_window_width(%rip), %r8d
  movl .L_window_flag(%rip), %r9d
  callq SDL_CreateWindowAndRenderer
  cmp $true, %al
  jne 1f


  movq $1, 40(%rsp)
  movq .L_render_handle(%rip), %rcx
  movb $0, %dl
  movb $1, %r8b
  movb $0, %r9b
  callq SDL_SetRenderDrawColor


  movq .L_render_handle(%rip), %rcx
  callq SDL_RenderPresent

  movq .L_render_handle(%rip), %rcx
  callq SDL_RenderClear

  movl $4000, %ecx
  callq SDL_Delay


  0: //exit.
  addq $64, %rsp
  pop %rbp
  ret

  1: //window initialization error.
  callq SDL_GetError
  movq %rax, %rcx
  callq _ErrorWithMessage
  jmp 0b

  


