
void orange_base()
{
  ppu_off();
  
  clear_screen();
  
  vram_adr(NTADR_B(2, 2));
  vram_write("Player 1 and Player 2 wake up", sizeof("Player 1 and Player 2 wake up"));
  
  vram_adr(NTADR_B(2, 3));
  vram_write("trapped inside of an orange.", sizeof("trapped inside of an orange."));
  
  vram_adr(NTADR_B(2, 4));
  vram_write("They sense that they only", sizeof("They sense that they only"));
  
  vram_adr(NTADR_B(2, 5));
  vram_write("have three options:", sizeof("have three options:"));
  
  vram_adr(NTADR_B(3, 10));
  vram_write("A)Go to Citrus Twist", sizeof("A)Go to Citrus Twist"));
  
  vram_adr(NTADR_B(3, 12));
  vram_write("B)Go to Vitamin C makes u pee", sizeof("B)Go to Vitamin C makes u pee"));
  
  vram_adr(NTADR_B(3, 14));
  vram_write("C)Make Player 1 grab smaller      orange", sizeof("C)Make Player 1 grab smaller      orange"));
  
  ppu_on_all();
}

void orange_1a()
{
  ppu_off();
  
  clear_screen();
  
  vram_adr(NTADR_B(2, 2));
  vram_write("Player 1 and Player 2 go", sizeof("Player 1 and Player 2 go"));
  
  vram_adr(NTADR_B(2, 3));
  vram_write("inside Citrus Twist. They", sizeof("inside Citrus Twist. They"));
  
  vram_adr(NTADR_B(2, 4));
  vram_write("orange peels on the ground,", sizeof("orange peels on the ground,"));
  
  vram_adr(NTADR_B(2, 5));
  vram_write("and a giant red button in", sizeof("and a giant red button in"));
  
  vram_adr(NTADR_B(2, 6));
  vram_write("the middle of the room.", sizeof("the middle of the room."));
  
  vram_adr(NTADR_B(3, 11));
  vram_write("A)Smack the button!! >:D", sizeof("A)Smack the button!! >:D"));
  
  vram_adr(NTADR_B(3, 13));
  vram_write("B)Go back to the main room", sizeof("B)Go back to the main room"));
  
  ppu_on_all();
}

void orange_1b()
{
  ppu_off();
  
  clear_screen();
  
  vram_adr(NTADR_B(2, 2));
  vram_write("When Player 1 and Player 2", sizeof("When Player 1 and Player 2"));
  
  vram_adr(NTADR_B(2, 3));
  vram_write("enter the room, they start", sizeof("enter the room, they start"));
  
  vram_adr(NTADR_B(2, 4));
  vram_write("peeing uncontrollably and", sizeof("peeing uncontrollably and"));
  
  vram_adr(NTADR_B(2, 5));
  vram_write("can't stop! The door seals", sizeof("can't stop! The door seals"));
  
  vram_adr(NTADR_B(2, 6));
  vram_write("behind them, and if they", sizeof("behind them, and if they"));
  
  vram_adr(NTADR_B(2, 7));
  vram_write("don't act soon, they'll end", sizeof("don't act soon, they'll end"));
  
  vram_adr(NTADR_B(2, 8));
  vram_write("up drowning in their own pee.", sizeof("up drowning in their own pee."));
  
  vram_adr(NTADR_B(2, 9));
  vram_write("What a disgusting way to die.", sizeof("Whay a disgusting way to die."));
  
  vram_adr(NTADR_B(2, 14));
  vram_write("A)Attempt to drink the pee", sizeof("A)Attempt to drink the pee"));
  
  vram_adr(NTADR_B(2, 16));
  vram_write("B)Pee at the wall in hopes of     burning a hole through it", sizeof("B)Pee at the wall in hopes of burning a hole     through it"));
  
  ppu_on_all();
}