  .org $8000

reset:
  lda #$ff
  sta $6002

  lda #$01
  sta $6000

loop:
  ror
  sta $6000

  jmp loop

  .org $fffc
  .word reset
  .word $0000
