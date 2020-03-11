
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

static unsigned char bright;

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
    wait = 300;
  }
}

void fade_to(unsigned to)
{
  while(bright!=to)
  {
    delay(4);
    if(bright<to) ++bright; else --bright;
    pal_bright(bright);
  }

  if(!bright)
  {
    ppu_off();
    set_vram_update(NULL);
    scroll(0,0);
  }
}

void main(void)
{
  int scr = 0;
  int mult = 400;
  
  bool music_is_playing = false;
  
  unsigned char oam_id = 0;
  
  unsigned char game_state = TITLE;
  
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
        mult=200;
      }
    }
  }
}