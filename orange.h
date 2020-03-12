
void orange_base()
{
  ppu_off();
  
  clear_screen();
  
  vram_adr(NTADR_B(2, 2));
  vram_write("Player 1 and Player 2 wake up", sizeof("Player 1 and Player 2 wake up"));
  
  ppu_on_all();
}