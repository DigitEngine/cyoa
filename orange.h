
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

void orange_1a()
{
  ppu_off();
  
  clear_screen();
  
  vram_adr(NTADR_B(1, 2));
  vram_write("Player 1 and Player 2 go", sizeof("Player 1 and Player 2 go"));
  
  vram_adr(NTADR_B(1, 3));
  vram_write("inside Citrus Twist. They", sizeof("inside Citrus Twist. They"));
  
  vram_adr(NTADR_B(1, 4));
  vram_write("orange peels on the ground,", sizeof("orange peels on the ground,"));
  
  vram_adr(NTADR_B(1, 5));
  vram_write("and a giant red button in", sizeof("and a giant red button in"));
  
  vram_adr(NTADR_B(1, 6));
  vram_write("the middle of the room.", sizeof("the middle of the room."));
  
  vram_adr(NTADR_B(2, 11));
  vram_write("A)Smack the button!! >:D", sizeof("A)Smack the button!! >:D"));
  
  vram_adr(NTADR_B(2, 13));
  vram_write("B)Go back to the main room", sizeof("B)Go back to the main room"));
  
  ppu_on_all();
}

void orange_1b()
{
  ppu_off();
  
  clear_screen();
  
  vram_adr(NTADR_B(1, 2));
  vram_write("When Player 1 and Player 2", sizeof("When Player 1 and Player 2"));
  
  vram_adr(NTADR_B(1, 3));
  vram_write("enter the room, they start", sizeof("enter the room, they start"));
  
  vram_adr(NTADR_B(1, 4));
  vram_write("peeing uncontrollably and", sizeof("peeing uncontrollably and"));
  
  vram_adr(NTADR_B(1, 5));
  vram_write("can't stop! The door seals", sizeof("can't stop! The door seals"));
  
  vram_adr(NTADR_B(1, 6));
  vram_write("behind them, and if they", sizeof("behind them, and if they"));
  
  vram_adr(NTADR_B(1, 7));
  vram_write("don't act soon, they'll end", sizeof("don't act soon, they'll end"));
  
  vram_adr(NTADR_B(1, 8));
  vram_write("up drowning in their own pee.", sizeof("up drowning in their own pee."));
  
  vram_adr(NTADR_B(1, 9));
  vram_write("What a disgusting way to die.", sizeof("Whay a disgusting way to die."));
  
  vram_adr(NTADR_B(2, 14));
  vram_write("A)Attempt to drink the pee", sizeof("A)Attempt to drink the pee"));
  
  vram_adr(NTADR_B(2, 16));
  vram_write("B)Pee at the wall in hopes of     burning a hole through it", sizeof("B)Pee at the wall in hopes of burning a hole     through it"));
  
  ppu_on_all();
}

void orange_1c()
{
  ppu_off();
  
  clear_screen();
  
  vram_adr(NTADR_B(1, 2));
  vram_write("Player 1 grabs the orange and", sizeof("Player 1 grabs the orange and"));
  
  vram_adr(NTADR_B(1, 3));
  vram_write("starts trying to peel it, and", sizeof("starts trying to peel it, and"));
  
  vram_adr(NTADR_B(1, 4));
  vram_write("an intense blast hits Player", sizeof("an intense blast hits Player"));
  
  vram_adr(NTADR_B(1, 5));
  vram_write("1 that feels like they've", sizeof("1 that feels like they've"));
  
  vram_adr(NTADR_B(1, 6));
  vram_write("been split in half. Player 2", sizeof("been split in half. Player 2"));
  
  vram_adr(NTADR_B(1, 7));
  vram_write("is debating over whether", sizeof("is debating over whether"));
  
  vram_adr(NTADR_B(1, 8));
  vram_write("they should:", sizeof("they should:"));
  
  vram_adr(NTADR_B(2, 13));
  vram_write("A)Try to wake up Player 1", sizeof("A)Try to wake up Player 1"));
  
  vram_adr(NTADR_B(2, 15));
  vram_write("B)Continue peeling the            orange", sizeof("B)Continue peeling the           orange"));
  
  ppu_on_all();
}

void orange_1a2a()
{
  ppu_off();
  
  clear_screen();
  
  vram_adr(NTADR_B(1, 2));
  vram_write("When they hit the button, the", sizeof("When they hit the button, the"));
  
  vram_adr(NTADR_B(1, 3));
  vram_write("door slams shut and the room", sizeof("door slams shut and the room"));
  
  vram_adr(NTADR_B(1, 4));
  vram_write("starts filling up with orange", sizeof("starts filling up with orange"));
  
  vram_adr(NTADR_B(1, 5));
  vram_write("juice! The players need to", sizeof("juice! The players need to"));
  
  vram_adr(NTADR_B(1, 6));
  vram_write("find a way out quickly, un-", sizeof("find a way out quicky, un-"));
  
  vram_adr(NTADR_B(1, 7));
  vram_write("less they want to drown while", sizeof("less they want to drown while"));
  
  vram_adr(NTADR_B(1, 8));
  vram_write("nourished with Vitamin C!!", sizeof("nourished with Vitamin C!!"));
  
  vram_adr(NTADR_B(2, 13));
  vram_write("A)Try to drink the orange         juice", sizeof("A)Try to drink the orange         juice"));
  
  vram_adr(NTADR_B(2, 15));
  vram_write("B)Use orange peels to clog        source of orange juice", sizeof("B)Use orange peels to clog        source of orange juice"));
  
  vram_adr(NTADR_B(2, 17));
  vram_write("C)Call upon the ancient           force of the gods...            (Too Powerful!)", sizeof("C)Call upon the ancient           force of the gods...            (Too Powerful!)"));
  
  ppu_on_all();
}

void orange_1a2b()
{
  ppu_off();
  
  clear_screen();
  
  vram_adr(NTADR_B(1, 2));
  vram_write("They go back to the main room.", sizeof("They go back to the main room."));
  
  vram_adr(NTADR_B(2, 7));
  vram_write("A)Go back to Citrus Twist", sizeof("A)Go back to Citrus Twist"));
  
  vram_adr(NTADR_B(2, 9));
  vram_write("B)Go to Vitamin C makes u pee", sizeof("B)Go to Vitamin C make u pee"));
  
  vram_adr(NTADR_B(2, 11));
  vram_write("C)Make Player 1 grab smaller      orange", sizeof("C)Make Player 1 grab smaller      orange"));
  
  ppu_on_all();
}

void orange_1b2a()
{
  ppu_off();
  
  clear_screen();
  
  vram_adr(NTADR_B(1, 2));
  vram_write("Player 1 and Player 2 both de-", sizeof("Player 1 and Player 2 both de-"));
  
  vram_adr(NTADR_B(1, 3));
  vram_write("cide that they want to drink", sizeof("cide that they want to drink"));
  
  vram_adr(NTADR_B(1, 4));
  vram_write("their own pee, for some rea-", sizeof("their own pee, for some rea-"));
  
  vram_adr(NTADR_B(1, 5));
  vram_write("son. When they do, they feel", sizeof("son. When they do, they feel"));
  
  vram_adr(NTADR_B(1, 6));
  vram_write("that their health has been", sizeof("that their health has been"));
  
  vram_adr(NTADR_B(1, 7));
  vram_write("knocked down by 25%.", sizeof("knocked down by 25%."));
  
  vram_adr(NTADR_B(2, 12));
  vram_write("A)Attempt to drink the pee", sizeof("A)Attempt to drink the pee"));
  
  vram_adr(NTADR_B(2, 14));
  vram_write("B)Pee at the wall in hopes of     burning a hole through it", sizeof("B)Pee at the wall in hopes of     burning a hole through it"));
  
  ppu_on_all();
}

void orange_1b2b()
{
  ppu_off();
  
  clear_screen();
  
  vram_adr(NTADR_B(1, 2));
  vram_write("Wow...it...actually worked?", sizeof("Wow...it...actually worked?"));
  
  vram_adr(NTADR_B(1, 3));
  vram_write("Maybe all the citric acid in-", sizeof("Maybe all the citric acid in"));
  
  vram_adr(NTADR_B(1, 4));
  vram_write("side the orange affected their", sizeof("side the orange affected their"));
  
  vram_adr(NTADR_B(1, 5));
  vram_write("pee somehow...", sizeof("pee somehow..."));
  
  vram_adr(NTADR_B(2, 10));
  vram_write("A)Go inside the hole", sizeof("A)Go inside the hole"));
  
  vram_adr(NTADR_B(2, 12));
  vram_write("B)Continue peeing", sizeof("B)Continue peeing"));
  
  ppu_on_all();
}

void orange_1c2a()
{
  ppu_off();
  
  clear_screen();
  
  vram_adr(NTADR_B(1, 2));
  vram_write("Player 2 goes over to Player 1", sizeof("Player 2 goes over to Player 1"));
  
  vram_adr(NTADR_B(1, 3));
  vram_write("and starts shaking them, try-", sizeof("and starts shaking them, try-"));
  
  vram_adr(NTADR_B(1, 4));
  vram_write("ing to wake them up. When they", sizeof("ing to wake them up. When they"));
  
  vram_adr(NTADR_B(1, 5));
  vram_write("make physical contact with", sizeof("make physical contact with"));
  
  vram_adr(NTADR_B(1, 6));
  vram_write("their skin, they get hit with", sizeof("their skin, they get hit with"));
  
  vram_adr(NTADR_B(1, 7));
  vram_write("the same blast and black out", sizeof("the same blast and black out"));
  
  vram_adr(NTADR_B(1, 8));
  vram_write("as well. They both wake up in-", sizeof("as well. They both wake up in-"));
  
  vram_adr(NTADR_B(1, 9));
  vram_write("side the smaller orange, A.K.A.", sizeof("side the smaller orange, A.K.A."));
  
  vram_adr(NTADR_B(1, 10));
  vram_write("Alternate Dimension I.D. 2609.", sizeof("Alternate Dimension I.D. 2609."));
  
  vram_adr(NTADR_B(2, 15));
  vram_write("A)Go to Citrus Twist (I.D.        2609)", sizeof("A)Go to Citrus Twist (I.D.        2609)"));
  
  vram_adr(NTADR_B(2, 17));
  vram_write("B)Go to Vitamin C makes u         pee (I.D. 2609)", sizeof("B)Go to Vitamin C makes u         pee (I.D. 2609)")); 
  
  vram_adr(NTADR_B(2, 19));
  vram_write("C)Make Player 1 grab smal-        ler orange (I.D. 2609)", sizeof("C)Make Player 1 grab smal-        ler orange (I.D. 2609)"));
  
  ppu_on_all();
}

void orange_1c2b()
{
  ppu_off();
  
  clear_screen();
  
  vram_adr(NTADR_B(1, 2));
  vram_write("Player 2 grabs the orange and", sizeof("Player 2 grabs the orange and"));
  
  vram_adr(NTADR_B(1, 3));
  vram_write("starts trying to peel it ag-", sizeof("starts trying to peel it ag-"));
  
  vram_adr(NTADR_B(1, 4));
  vram_write("ain. When they do, they get hit", sizeof("ain. When they do, they get hit"));
  
  vram_adr(NTADR_B(1, 5));
  vram_write("with the same sort of blast", sizeof("with the same sort of blast"));
  
  vram_adr(NTADR_B(1, 6));
  vram_write("and black out like Player 1.", sizeof("and black out like Player 1."));
  
  vram_adr(NTADR_B(1, 7));
  vram_write("They both wake up inside the", sizeof("They both wake up inside the"));
  
  vram_adr(NTADR_B(1, 8));
  vram_write("smaller orange, A.K.A. Alter-", sizeof("smaller orange, A.K.A. Alter-"));
  
  vram_adr(NTADR_B(1, 9));
  vram_write("nate Dimension I.D. 2609.", sizeof("nate Dimension I.D. 2609."));
  
  vram_adr(NTADR_B(2, 14));
  vram_write("A)Go to Citrus Twist (I.D.        2609)", sizeof("A)Go to Citrus Twist (I.D.        2609)"));
  
  vram_adr(NTADR_B(2, 16));
  vram_write("B)Go to Vitamin C makes u         pee (I.D. 2609)", sizeof("B)Go to Vitamin C makes u         pee (I.D. 2609)")); 
  
  vram_adr(NTADR_B(2, 18));
  vram_write("C)Make Player 1 grab smal-        ler orange (I.D. 2609)", sizeof("C)Make Player 1 grab smal-        ler orange (I.D. 2609)"));
  
  ppu_on_all();
}

void orange_1a2a3a()
{
  ppu_off();
  
  clear_screen();
  
  vram_adr(NTADR_B(1, 2));
  vram_write("Player 1 and Player 2 both", sizeof("Player 1 and Player 2 both"));
  
  vram_adr(NTADR_B(1, 3));
  vram_write("start trying to drink the or-", sizeof("start trying to drink the or-"));
  
  vram_adr(NTADR_B(1, 4));
  vram_write("ange juice, but it's unusual-", sizeof("ange juice, but it's unusual-"));
  
  vram_adr(NTADR_B(1, 5));
  vram_write("ly acidic. It's more sour than", sizeof("ly acidic. It's more sour than"));
  
  vram_adr(NTADR_B(1, 6));
  vram_write("lemons, and they refuse to e-", sizeof("lemons, and they refuse to e-"));
  
  vram_adr(NTADR_B(1, 7));
  vram_write("ven drink another drop.", sizeof("ven drink another drop."));
  
  vram_adr(NTADR_B(2, 12));
  vram_write("A)Use orange peels to clog        source of orange juice", sizeof("B)Use orange peels to clog        source of orange juice"));
  
  vram_adr(NTADR_B(2, 14));
  vram_write("B)Call upon the ancient           force of the gods...            (Too Powerful!)", sizeof("C)Call upon the ancient           force of the gods...            (Too Powerful!)"));
}

void orange_1a2a3b()
{
  ppu_off();
  
  clear_screen();
  
  vram_adr(NTADR_B(1, 2));
  vram_write("They both grab a bunch of or-", sizeof("They both grab a bunch of or-"));
  
  vram_adr(NTADR_B(1, 3));
  vram_write("ange peels and find several", sizeof("ange peels and find several"));
  
  vram_adr(NTADR_B(1, 4));
  vram_write("holes in the floor that orange", sizeof("holes in the floor that orange"));
  
  vram_adr(NTADR_B(1, 5));
  vram_write("juice are spraying out of. They", sizeof("juice are spraying out of. They"));
  
  vram_adr(NTADR_B(1, 6));
  vram_write("proceed to shove the holes full", sizeof("proceed to shove the holes full"));
  
  vram_adr(NTADR_B(1, 7));
  vram_write("of the peels, and the flow of", sizeof("of the peels, and the flow of"));
  
  vram_adr(NTADR_B(1, 8));
  vram_write("the orange juice stops. But,", sizeof("the orange juice stops. But,"));
  
  vram_adr(NTADR_B(1, 9));
  vram_write("the juice is unusually acidic,", sizeof("the juice is unusually acidic,"));
  
  vram_adr(NTADR_B(1, 10));
  vram_write("and will probably eat right", sizeof("and will probably eat right"));
  
  vram_adr(NTADR_B(1, 11));
  vram_write("through the peels in a few mi-", sizeof("through the peels in a few mi-"));
  
  vram_adr(NTADR_B(1, 12));
  vram_write("nutes.", sizeof("nutes."));
  
  vram_adr(NTADR_B(2, 17));
  vram_write("A)Eat orange peels while          thinking about how to           escape", sizeof("A)Eat orange peels while          thinking about how to           escape"));
  
  vram_adr(NTADR_B(2, 20));
  vram_write("B)Call upon the ancient force     of the gods", sizeof("B)Call upon the ancient force     of the gods"));
  
  ppu_on_all();
}

void orange_1a2a3c()
{
  ppu_off();
  
  clear_screen();
  
  vram_adr(NTADR_B(1, 2));
  vram_write("Player 1 and Player 2 start", sizeof("Player 1 and Player 2 start"));
  
  vram_adr(NTADR_B(1, 3));
  vram_write("chanting... Soon, they hear a", sizeof("chanting... Soon, they hear a"));
  
  vram_adr(NTADR_B(1, 4));
  vram_write("faint rumble and the entire", sizeof("faint rumble and the entire"));
  
  vram_adr(NTADR_B(1, 5));
  vram_write("universe starts shaking!! Not", sizeof("universe starts shaking!! Not"));
  
  vram_adr(NTADR_B(1, 6));
  vram_write("long afterwards, a blast of", sizeof("long afterwards, a blast of"));
  
  vram_adr(NTADR_B(1, 7));
  vram_write("blinding white light shines", sizeof("blinding white light shines"));
  
  vram_adr(NTADR_B(1, 8));
  vram_write("down on the orange and every-", sizeof("down on the orange and every-"));
  
  vram_adr(NTADR_B(1, 9));
  vram_write("thing disintegrates!! They", sizeof("thing disintegrates!! They"));
  
  vram_adr(NTADR_B(1, 10));
  vram_write("got out, but they're now just", sizeof("got out, but they're now just"));
  
  vram_adr(NTADR_B(1, 11));
  vram_write("simply piles of stardust.", sizeof("simply piles of stardust."));
  
  vram_adr(NTADR_B(1, 12));
  vram_write("They were warned.", sizeof("They were warned."));
  
  vram_adr(NTADR_B(10, 14));
  vram_write("GAME OVER", sizeof("GAME OVER"));
  
  vram_adr(NTADR_B(10, 15));
  vram_write("TRY AGAIN?", sizeof("TRY AGAIN?"));
  
  vram_adr(NTADR_B(12, 20));
  vram_write(" Yes", 4);
  
  vram_adr(NTADR_B(12, 22));
  vram_write(" No", 3);
  
  ppu_on_all();
}

void orange_1a2b3a()
{
  ppu_off();
  
  clear_screen();
  
  vram_adr(NTADR_B(1, 2));
  vram_write("They go back inside Citrus      Twist.", sizeof("They go back inside Citrus      Twist."));
  
  vram_adr(NTADR_B(2, 7));
  vram_write("A)Smack the button!! >:D", sizeof("A)Smack the button!! >:D"));
  
  vram_adr(NTADR_B(2, 9));
  vram_write("B)Go back to the main room", sizeof("B)Go back to the main room"));
  
  
  ppu_on_all();
}

void orange_1a2b3b()
{
  orange_1b();
}

void orange_1a2b3c()
{
  orange_1c();
}

void orange_1b2a3a()
{
  ppu_off();
  
  clear_screen();
  
  vram_adr(NTADR_B(1, 2));
  vram_write("
}



