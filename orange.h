
void orange_base()
{
  ppu_off();
  
  clear_screen();
  
  vram_adr(NTADR_B(1, 2));
  vram_write("Player 1 and Player 2 wake up", sizeof("Player 1 and Player 2 wake up"));
  
  vram_adr(NTADR_B(1, 3));
  vram_write("trapped inside of an orange.", sizeof("trapped inside of an orange."));
  
  vram_adr(NTADR_B(1, 4));
  vram_write("They sense that they only", sizeof("They sense that they only"));
  
  vram_adr(NTADR_B(1, 5));
  vram_write("have three options:", sizeof("have three options:"));
  
  vram_adr(NTADR_B(2, 10));
  vram_write("A)Go to Citrus Twist", sizeof("A)Go to Citrus Twist"));
  
  vram_adr(NTADR_B(2, 12));
  vram_write("B)Go to Vitamin C makes u pee", sizeof("B)Go to Vitamin C makes u pee"));
  
  vram_adr(NTADR_B(2, 14));
  vram_write("C)Make Player 1 grab smaller      orange", sizeof("C)Make Player 1 grab smaller      orange"));
  
  ppu_on_all();
}