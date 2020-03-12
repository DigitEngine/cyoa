
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

#define TITLE 0x00
#define SELECT 0x01
#define ORANGE 0x02

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

void title_blink()
{
  if(wait)
  {
    wait--;
  }
  else
  {
    pal_col(5,(frame&32)?0x0f:0x00);
    pal_col(7,(frame&32)?0x0f:0x30);
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
  vram_write("Inside of a computer", 20);
  
  vram_adr(NTADR_B(8,26));
  vram_write("\x10 2020 MSDT Games.", sizeof("\x10 2020 MSDT Games."));
  
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
  
  byte p1;
  byte p2;
  
  int arr_y = 7*8;
  
  famitone_init(cyoa_music_data);
  famitone_init(cyoa_music_data);
  sfx_init(&sounds);
  nmi_set_callback(famitone_update);
  
  ppu_off();
  
  pal_all(palette);
  
  scroll(scr, 0);
  
  vram_adr(NTADR_B(3,4));
  vram_write("Choose your adventure and", sizeof("Choose your adventure and"));
  
  vram_adr(NTADR_B(6,6));
  vram_write("that sort of thing.", sizeof("that sort of thing."));

  vram_adr(NTADR_B(8,16));
  vram_write("Press Start Key", sizeof("Press Start Key"));
  
  vram_adr(NTADR_B(2,24));
  vram_write("Created by Sean, Matthew and", sizeof("Created by Sean, Matthew and"));
  
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
        music_is_playing = false;
        game_state = SELECT;
      }
    }
    if(game_state == SELECT)
    {
      if(!music_is_playing) { music_play(SELECT_M); music_is_playing = true; }
      oam_id = oam_spr(2*8, arr_y, 0x1f, 0, oam_id);
      if(p1 & PAD_UP) { arr_y -= 16; sfx_play(1, 0); }
      if(p1 & PAD_DOWN) { arr_y += 16; sfx_play(1, 0); }
      if(p2 & PAD_UP) { arr_y -= 16; sfx_play(1, 0); }
      if(p2 & PAD_DOWN) { arr_y += 16; sfx_play(1, 0); }
      if(arr_y > (7*8)+16*5)arr_y = 7*8;
      if(arr_y < 7*8)arr_y = (7*8)+16*5;
      
      if(p1 & PAD_START && arr_y == 7*8)
      {
        music_stop();
        sfx_play(0, 0);
        delay(20);
        orange_base();
        music_is_playing = false;
        game_state = ORANGE;
      }
    }
    if(game_state == ORANGE)
    {
      if(!music_is_playing) { music_play(ORANGE_M); music_is_playing = true; }
      
    }
  }
}