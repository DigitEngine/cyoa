
#include "neslib.h"
//#link "chr_generic.s"
//#link "famitone2.s"

//#link "cyoamusic.s"

#define NES_MIRRORING 1

#define TITLE_M 0x00
#define ORANGE_M 0x01
#define SELECT_M 0x02

#define TITLE 0x00
#define SELECT 0x01

extern char cyoa_music_data[];

const unsigned char palette[] =
{
  0x0f,
  
  0x00,0x0f,0x30, 0x0,
  0x00,0x0f,0x30, 0x0,
  0x00,0x0f,0x30, 0x0,
  0x00,0x0f,0x30, 0x0,
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
  
  vram_adr(NAMETABLE_B);
  vram_fill(0x20, 32*30);
  
  vram_adr(NTADR_B(2,2));
  vram_write("Please select your adventure", sizeof("Please select your adventure."));
  
  vram_adr(NTADR_B(4,7));
  vram_write("Trapped Inside an Orange", sizeof("Trapped Inside an Orange"));
  
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
  
  unsigned char oam_id = 0;
  
  unsigned char game_state = TITLE;
  
  byte p1;
  
  famitone_init(cyoa_music_data);
  famitone_init(cyoa_music_data);
  nmi_set_callback(famitone_update);
  
  ppu_off();
  
  pal_bg(palette);
  
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
    if(game_state == TITLE)
    {
      if(scr == (32*8))
      {
        title_blink();
        if(!music_is_playing) { music_play(0); music_is_playing = true; }
      	
      }
      mult--;
      if(mult == 0)
      {
        if(scr != (32*8))scr++;
        scroll(scr, 0);
        mult=30;
      }
      if(p1 & PAD_START)
      {
        scroll((32*8), 0);
        delay(40);
        select_scr();
        music_stop();
        game_state = SELECT;
      }
    }
    if(game_state == SELECT)
    {
      
    }
  }
}