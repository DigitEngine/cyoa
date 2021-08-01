
#include "neslib.h"

void clear_screen()
{
  vram_adr(NAMETABLE_B);
  vram_fill(0x20, 32*30);
}
#include "orange.h"


//#link "chr_generic.s"
//#link "famitone2.s"

//#link "cyoamusic.s"
//#link "cyoasounds.s"


#define NES_MIRRORING 1

#define TITLE_M 0x00
#define ORANGE_M 0x01
#define SELECT_M 0x02
#define TIMED_M 0x04
#define TM_WAIT_M 0x05

#define TITLE 0x00
#define SELECT 0x01
#define ORANGE 0x02

// ORANGE Macros
#define BASE 0x00

extern char cyoa_music_data[];
extern char sounds[];

const unsigned char palette[] =
{
  0x0f,
  
  0x00,0x0f,0x30, 0x0,
  0x00,0x0f,0x30, 0x0,
  0x00,0x0f,0x30, 0x0,
  0x00,0x0f,0x30, 0x0,
  
  0x03,0x0f,0x33, 0x0,
};

const unsigned char blank_table[] =
{
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
};

const unsigned char attr_table[] =
{
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x05,0x05,0x05,0x05,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
};

static unsigned int wait = 300;
static unsigned char frame = 0;

void fade_in()
{
  byte vb;
  for(vb=0; vb<=4; vb++)
  {
    pal_bright(vb);
    
    ppu_wait_frame();
    ppu_wait_frame();
    ppu_wait_frame();
    ppu_wait_frame();
  }
}

void fade_out()
{
  byte vb;
  for(vb=4; vb>1; vb--)
  {
    pal_bright(vb);
    
    ppu_wait_frame();
    ppu_wait_frame();
    ppu_wait_frame();
    ppu_wait_frame();
  }
}

void title_blink()
{
  if(wait)
  {
    wait--;
  }
  else
  {
    pal_col(5,(frame&16)?0x0f:0x00);
    pal_col(7,(frame&16)?0x0f:0x30);
    frame++;
    wait = 35;
  }
}

void select_scr()
{
  ppu_off();
  
  clear_screen();
  
  vram_adr(0x27c0);
  vram_write(blank_table, 0x40);
  
  vram_adr(NTADR_B(3,2));
  vram_write("Please choose an adventure", sizeof("Please choose an adventure"));
  
  vram_adr(NTADR_B(4,7));
  vram_write("Trapped inside an Orange", sizeof("Trapped inside an Orange"));
  
  vram_adr(NTADR_B(4,9));
  vram_write("Inside Declan", sizeof("Inside Declan"));
  
  vram_adr(NTADR_B(4,11));
  vram_write("Trapped inside Capri-Sun", sizeof("Trapped inside Capri-Sun"));
  
  vram_adr(NTADR_B(4,13));
  vram_write("Stuck in a store at night", sizeof("Stuck in a store at night"));
  
  vram_adr(NTADR_B(4,15));
  vram_write("You're Tiny", sizeof("You're Tiny"));
  
  vram_adr(NTADR_B(4,17));
  vram_write("Inside of a computer", sizeof("Inside of a computer"));
  
  vram_adr(NTADR_B(6,22));
  vram_write("Press A Key to select.", sizeof("Press A Key to select."));
  
  vram_adr(NTADR_B(7,26));
  vram_write("\x10 2020-21 MSDT Games.", sizeof("\x10 2020-21 MSDT Games."));
  
  delay(30);
  ppu_on_all();
}

void main(void)
{
  int scr = 0;
  int mult = 400;
  
  bool music_is_playing = false;
  
  bool nf = true;
  
  unsigned char oam_id = 0;
  
  unsigned char game_state = TITLE;
  
  unsigned char orange_state = BASE;
  
  byte p1;
  byte p2;
  int i;
  int color = 1;
  
  int arr_y = 7*8;
  
  famitone_init(cyoa_music_data);
  famitone_init(cyoa_music_data);
  sfx_init(&sounds);
  nmi_set_callback(famitone_update);
  
  ppu_off();
  
  pal_bright(0);
  pal_col(0, 0x0f);
  pal_col(1, 0x03);
  pal_col(2, 0x0f);
  pal_col(3, 0x33);
  
  vram_adr(NTADR_A(1, 1));
  vram_write("I started working on this", sizeof("I started working on this"));
  vram_adr(NTADR_A(1, 2));
  vram_write("game, quit in March 2020, and", sizeof("game, quit in March 2020, and"));
  vram_adr(NTADR_A(1, 3));
  vram_write("started working on again in", sizeof("started working on again in"));
  vram_adr(NTADR_A(1, 4));
  vram_write("July 2021. I started writing", sizeof("July 2021. I started writing"));
  vram_adr(NTADR_A(1, 5));
  vram_write("The paths for the first ad-", sizeof("The paths for the first ad-"));
  vram_adr(NTADR_A(1, 6));
  vram_write("venture, Trapped in an Orange,", sizeof("venture, Trapped in an Orange,"));
  vram_adr(NTADR_A(1, 7));
  vram_write("but I lost the original", sizeof("but I lost the original"));
  vram_adr(NTADR_A(1, 8));
  vram_write("papers.", sizeof("papers."));
  
  vram_adr(NTADR_A(1, 11));
  vram_write("The following game is most", sizeof("The following game is most"));
  vram_adr(NTADR_A(1, 12));
  vram_write("likely different than it", sizeof("likely different than it"));
  vram_adr(NTADR_A(1, 13));
  vram_write("would've been if I had", sizeof("would've been if I had"));
  vram_adr(NTADR_A(1, 14));
  vram_write("completed it before, since", sizeof("completed it before, since"));
  vram_adr(NTADR_A(1, 15));
  vram_write("there was stuff I didn't put", sizeof("there was stuff I didn't put"));
  vram_adr(NTADR_A(1, 16));
  vram_write("in the game code before I", sizeof("in the game code before I"));
  vram_adr(NTADR_A(1, 17));
  vram_write("lost the original storyline,", sizeof("lost the original storyline,"));
  vram_adr(NTADR_A(1, 18));
  vram_write("plus the stuff I never got", sizeof("plus the stuff I never got"));
  vram_adr(NTADR_A(1, 19));
  vram_write("to.", sizeof("to."));
  
  vram_adr(NTADR_A(1, 24));
  vram_write("Enjoy!!  -Matthew", sizeof("Enjoy!!  -Matthew"));
  
  ppu_on_all();
  
  fade_in();
  for(i = 0; i < 1000; i++)
  {
    
    int g = i - ((i / 10) * 10);
    if(g == 5)color++;
    if(color > 0x0c)color = 1;
    pal_col(1, color);
    pal_col(3, color + 0x30);
    
    p1 = pad_trigger(0);
    if(p1 & PAD_START)i = 1000;
    
    ppu_wait_frame();
  }
  fade_out();
  pal_bright(0);
  for(i = 0; i < 50; i++)ppu_wait_frame();
  pal_bright(4);
  
  ppu_off();
  vram_adr(NAMETABLE_A);
  vram_fill(0, 32 * 30);
  
  pal_all(palette);
  
  scroll(scr, 0);
  
  vram_adr(NTADR_B(3,4));
  vram_write("Choose your adventure and", sizeof("Choose your adventure and"));
  
  vram_adr(NTADR_B(6,6));
  vram_write("that sort of thing.", sizeof("that sort of thing."));

  vram_adr(NTADR_B(8,16));
  vram_write("Press Start Key", sizeof("Press Start Key"));
  
  vram_adr(NTADR_B(2,24));
  vram_write("Created by Matthew, Sean and", sizeof("Created by Sean, Matthew and"));
  
  vram_adr(NTADR_B(13,26));
  vram_write("Declan", 7);
  
  vram_adr(0x27c0);
  vram_write(attr_table, 0x40);
  
  ppu_on_all();
  
  while(1)
  {
    p1 = pad_trigger(0);
    p2 = pad_trigger(1);
    if(game_state == TITLE)
    {
      if(scr == (32*8))
      {
        title_blink();
        if(!music_is_playing)
        {
          music_play(TITLE_M); 
          music_is_playing = true;
        }
      }
      mult--;
      if(mult == 0)
      {
        if(scr != (32*8))scr++;
        scroll(scr, 0);
        mult=10;
      }
      if(p1 & PAD_START)
      {
        scroll((32*8), 0);
        music_stop();
        sfx_play(0, 0);
        delay(20);
        select_scr();
        oam_clear();
        music_is_playing = false;
        game_state = SELECT;
      }
    }
    if(game_state == SELECT)
    {
      if(!music_is_playing) { music_play(SELECT_M); music_is_playing = true; }
      oam_id = oam_spr(2*8, arr_y, 0x1f, 0, oam_id);
      if(p1 & PAD_UP) { arr_y -= 16; sfx_play(1, 0); oam_clear(); }
      if(p1 & PAD_DOWN) { arr_y += 16; sfx_play(1, 0); oam_clear(); }
      if(arr_y > (7*8)+16*5)arr_y = 7*8;
      if(arr_y < 7*8)arr_y = (7*8)+16*5;
      
      if(p1 & PAD_A && arr_y == 7*8)
      {
        music_stop();
        sfx_play(0, 0);
        ppu_off();
        delay(40);
        oam_clear();
        orange_1a2a3b();
        music_is_playing = false;
        game_state = ORANGE;
      }
    }
    if(game_state == ORANGE)
    {
      if(!music_is_playing) { music_play(TM_WAIT_M); music_is_playing = true; }
      if(orange_state == BASE)
      {
        
      }
    }
  }
}