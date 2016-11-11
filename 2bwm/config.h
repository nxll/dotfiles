/*  /$$$$$$  /$$                                     
   /$$__  $$| $$                                     
  |__/  \ $$| $$$$$$$  /$$  /$$  /$$ /$$$$$$/$$$$    
    /$$$$$$/| $$__  $$| $$ | $$ | $$| $$_  $$_  $$   
   /$$____/ | $$  \ $$| $$ | $$ | $$| $$ \ $$ \ $$   
  | $$      | $$  | $$| $$ | $$ | $$| $$ | $$ | $$   
  | $$$$$$$$| $$$$$$$/|  $$$$$/$$$$/| $$ | $$ | $$   
  |________/|_______/  \_____/\___/ |__/ |__/ |__/ */

///---User configurable stuff---///
///---Modifiers---///
#define MOD             XCB_MOD_MASK_4       /* Super/Windows key  or check xmodmap(1) with -pm  defined in /usr/include/xcb/xproto.h */
///--Speed---///
/* Move this many pixels when moving or resizing with keyboard unless the window has hints saying otherwise.
 *0)move step slow   1)move step fast
 *2)mouse slow       3)mouse fast     */
static const uint16_t movements[] = {10,40,15,400};
/* resize by line like in mcwm -- jmbi */
static const bool     resize_by_line          = false;
/* the ratio used when resizing and keeping the aspect */
static const float    resize_keep_aspect_ratio= 1.03;
///---Offsets---///
/*0)offsetx          1)offsety
 *2)maxwidth         3)maxheight */
static const uint8_t offsets[] = {0,0,0,0};
///---Colors---///
/*0)focuscol         1)unfocuscol
 *2)fixedcol         3)unkilcol
 *4)fixedunkilcol    5)outerbordercol
 *6)emptycol         */
static const char *colors[] = {"#303030","#202020","#202020","#202020","#303030","#080808","#202020"};
/*
 * If you are using a composition manager enable the COMPTON flag in the Makefile
 * (By changing -DNCOMPTON to -DCOMPTON)
 */
/* if this is set to true the inner border and outer borders colors will be swapped */
static const bool inverted_colors = true;
///---Cursor---///
/* default position of the cursor:
 * correct values are:
 * TOP_LEFT, TOP_RIGHT, BOTTOM_LEFT, BOTTOM_RIGHT, MIDDLE
 * All these are relative to the current window. */
#define CURSOR_POSITION TOP_LEFT
///---Borders---///
/*0) Outer border size. If you put this negative it will be a square.
 *1) Full borderwidth    2) Magnet border size
 *3) Resize border size  */
static const uint8_t borders[] = {2,8,2,8};
/* Windows that won't have a border.*/
#define LOOK_INTO "WM_NAME"
static const char *ignore_names[] = {"bar", "xclock"};
///--Menus and Programs---///
static const char *menucmd[]   = { "interrobang", NULL };
static const char *terminal[]  = { "urxvt", NULL };
static const char *browser[]   = { "inox", NULL };
static const char *files[]     = { "urxvt", "-e", "ranger", NULL };
static const char *scr[]       = { "scrot", "/home/nxll/images/screenshots/%d%b2k%y-%H%M%S.png", NULL };
static const char *lock[]      = { "/home/nxll/bin/lock/lock.sh", NULL };
static const char *toggle[]    = { "mpc", "toggle", NULL };
static const char *stop[]      = { "mpc", "stop", NULL };
static const char *next[]      = { "mpc", "next", NULL };
static const char *prev[]      = { "mpc", "prev", NULL };
static const char *volup[]     = { "pulsemixer", "--id", "0", "--change-volume", "+5", NULL };
static const char *voldown[]   = { "pulsemixer", "--id", "0", "--change-volume", "-5", NULL };
static const char *mute[]      = { "pulsemixer", "--id", "0", "--toggle-mute", NULL };

static const char *click1[]    = { "xdotool","click", "1", NULL };
static const char *click2[]    = { "xdotool","click", "2", NULL };
static const char *click3[]    = { "xdotool","click", "3", NULL };
///--Custom foo---///
static void halfandcentered(const Arg *arg)
{
	Arg arg2 = {.i=TWOBWM_MAXHALF_VERTICAL_LEFT};
	maxhalf(&arg2);
	Arg arg3 = {.i=TWOBWM_TELEPORT_CENTER};
	teleport(&arg3);
}
///---Shortcuts---///
/* Check /usr/include/X11/keysymdef.h for the list of all keys
 * 0x000000 is for no modkey
 * If you are having trouble finding the right keycode use the `xev` to get it
 * For example:
 * KeyRelease event, serial 40, synthetic NO, window 0x1e00001,
 *  root 0x98, subw 0x0, time 211120530, (128,73), root:(855,214),
 *  state 0x10, keycode 171 (keysym 0x1008ff17, XF86AudioNext), same_screen YES,
 *  XLookupString gives 0 bytes: 
 *  XFilterEvent returns: False
 *
 *  The keycode here is keysym 0x1008ff17, so use  0x1008ff17
 *
 *
 * For AZERTY keyboards XK_1...0 should be replaced by :
 *      DESKTOPCHANGE(     XK_ampersand,                     0)
 *      DESKTOPCHANGE(     XK_eacute,                        1)
 *      DESKTOPCHANGE(     XK_quotedbl,                      2)
 *      DESKTOPCHANGE(     XK_apostrophe,                    3)
 *      DESKTOPCHANGE(     XK_parenleft,                     4)
 *      DESKTOPCHANGE(     XK_minus,                         5)
 *      DESKTOPCHANGE(     XK_egrave,                        6)
 *      DESKTOPCHANGE(     XK_underscore,                    7)
 *      DESKTOPCHANGE(     XK_ccedilla,                      8)
 *      DESKTOPCHANGE(     XK_agrave,                        9)*
 */
#define DESKTOPCHANGE(K,N) \
{  MOD ,             K,              changeworkspace, {.i=N}}, \
{  MOD |SHIFT,       K,              sendtoworkspace, {.i=N}},
static key keys[] = {
    /* modifier           key            function           argument */
    // Focus to next/previous window
    {  MOD ,              XK_Tab,        focusnext,         {.i=TWOBWM_FOCUS_NEXT}},
    {  MOD |SHIFT,        XK_Tab,        focusnext,         {.i=TWOBWM_FOCUS_PREVIOUS}},
    // Kill a window
    {  MOD ,              XK_x,          deletewin,         {}},
    // Resize a window
    {  MOD |CONTROL,      XK_Up,         resizestep,        {.i=TWOBWM_RESIZE_UP}},
    {  MOD |CONTROL,      XK_Down,       resizestep,        {.i=TWOBWM_RESIZE_DOWN}},
    {  MOD |CONTROL,      XK_Right,      resizestep,        {.i=TWOBWM_RESIZE_RIGHT}},
    {  MOD |CONTROL,      XK_Left,       resizestep,        {.i=TWOBWM_RESIZE_LEFT}},
    // Move a window
    {  MOD ,              XK_Up,         movestep,          {.i=TWOBWM_MOVE_UP}},
    {  MOD ,              XK_Down,       movestep,          {.i=TWOBWM_MOVE_DOWN}},
    {  MOD ,              XK_Right,      movestep,          {.i=TWOBWM_MOVE_RIGHT}},
    {  MOD ,              XK_Left,       movestep,          {.i=TWOBWM_MOVE_LEFT}},
    // Move a window slower
    {  MOD |SHIFT,        XK_Up,         movestep,          {.i=TWOBWM_MOVE_UP_SLOW}},
    {  MOD |SHIFT,        XK_Down,       movestep,          {.i=TWOBWM_MOVE_DOWN_SLOW}},
    {  MOD |SHIFT,        XK_Right,      movestep,          {.i=TWOBWM_MOVE_RIGHT_SLOW}},
    {  MOD |SHIFT,        XK_Left,       movestep,          {.i=TWOBWM_MOVE_LEFT_SLOW}},
    // Teleport the window to an area of the screen.
    // Center:
    {  MOD ,              XK_g,          teleport,          {.i=TWOBWM_TELEPORT_CENTER}},
    // Center y:
    {  MOD |SHIFT,        XK_g,          teleport,          {.i=TWOBWM_TELEPORT_CENTER_Y}},
    // Center x:
    {  MOD |CONTROL,      XK_g,          teleport,          {.i=TWOBWM_TELEPORT_CENTER_X}},
    // Top left:
    {  MOD ,              XK_y,          teleport,          {.i=TWOBWM_TELEPORT_TOP_LEFT}},
    // Top right:
    {  MOD ,              XK_u,          teleport,          {.i=TWOBWM_TELEPORT_TOP_RIGHT}},
    // Bottom left:
    {  MOD ,              XK_b,          teleport,          {.i=TWOBWM_TELEPORT_BOTTOM_LEFT}},
    // Bottom right:
    {  MOD ,              XK_n,          teleport,          {.i=TWOBWM_TELEPORT_BOTTOM_RIGHT}},
    // Resize while keeping the window aspect
    {  MOD ,              XK_Home,       resizestep_aspect, {.i=TWOBWM_RESIZE_KEEP_ASPECT_GROW}},
    {  MOD ,              XK_End,        resizestep_aspect, {.i=TWOBWM_RESIZE_KEEP_ASPECT_SHRINK}},
    // Full screen window without borders
    {  MOD ,              XK_space,      maximize,          {.i=TWOBWM_FULLSCREEN}},
    //Full screen window without borders overiding offsets
    {  MOD |SHIFT ,       XK_f,          maximize,          {.i=TWOBWM_FULLSCREEN_OVERRIDE_OFFSETS}},
    // Maximize vertically
    {  MOD ,              XK_m,          maxvert_hor,       {.i=TWOBWM_MAXIMIZE_VERTICALLY}},
    // Maximize horizontally
    {  MOD |SHIFT,        XK_m,          maxvert_hor,       {.i=TWOBWM_MAXIMIZE_HORIZONTALLY}},
    // Maximize and move
    // vertically left
    {  MOD |SHIFT,        XK_y,          maxhalf,           {.i=TWOBWM_MAXHALF_VERTICAL_LEFT}},
    // vertically right
    {  MOD |SHIFT,        XK_u,          maxhalf,           {.i=TWOBWM_MAXHALF_VERTICAL_RIGHT}},
    // horizontally left
    {  MOD |SHIFT,        XK_b,          maxhalf,           {.i=TWOBWM_MAXHALF_HORIZONTAL_BOTTOM}},
    // horizontally right
    {  MOD |SHIFT,        XK_n,          maxhalf,           {.i=TWOBWM_MAXHALF_HORIZONTAL_TOP}},
    //fold half vertically
    {  MOD |SHIFT|CONTROL,XK_y,          maxhalf,           {.i=TWOBWM_MAXHALF_FOLD_VERTICAL}},
    //fold half horizontally
    {  MOD |SHIFT|CONTROL,XK_b,          maxhalf,           {.i=TWOBWM_MAXHALF_FOLD_HORIZONTAL}},
    //unfold vertically
    {  MOD |SHIFT|CONTROL,XK_u,          maxhalf,           {.i=TWOBWM_MAXHALF_UNFOLD_VERTICAL}},
    //unfold horizontally
    {  MOD |SHIFT|CONTROL,XK_n,          maxhalf,           {.i=TWOBWM_MAXHALF_UNFOLD_HORIZONTAL}},
    // Next/Previous screen
    {  MOD ,              XK_comma,      changescreen,      {.i=TWOBWM_NEXT_SCREEN}},
    {  MOD ,              XK_period,     changescreen,      {.i=TWOBWM_PREVIOUS_SCREEN}},
    // Raise or lower a window
    {  MOD ,              XK_r,          raiseorlower,      {}},
    // Next/Previous workspace
    {  MOD ,              XK_v,          nextworkspace,     {}},
    {  MOD ,              XK_c,          prevworkspace,     {}},
    // Move to Next/Previous workspace
    {  MOD |SHIFT ,       XK_v,          sendtonextworkspace,{}},
    {  MOD |SHIFT ,       XK_c,          sendtoprevworkspace,{}},
    // Iconify the window
    {  MOD ,              XK_i,          hide,              {}},
    // Make the window unkillable
    {  MOD ,              XK_a,          unkillable,        {}},
    // Make the window appear always on top
    {  MOD |SHIFT,        XK_t,          always_on_top,     {}},
    // Start programs
    {  MOD ,              XK_t,          start,             {.com = terminal}},
    {  MOD ,              XK_p,          start,             {.com = menucmd}},
    {  MOD ,              XK_w,          start,             {.com = browser}},
    {  MOD ,              XK_f,          start,             {.com = files}},
    {  0x000000,          0xff61,        start,             {.com = scr}},
    {  0x000000,          0x1008ff2d,    start,             {.com = lock}},
    // Media Keys
    {  0x000000,          0x1008ff14,    start,             {.com = toggle}},
    {  0x000000,          0x1008ff15,    start,             {.com = stop}},
    {  0x000000,          0x1008ff17,    start,             {.com = next}},
    {  0x000000,          0x1008ff16,    start,             {.com = prev}}, 
    // Volume Control
    {  0x000000,          0x1008ff13,    start,             {.com = volup}},
    {  0x000000,          0x1008ff11,    start,             {.com = voldown}},
    {  0x000000,          0x1008ff12,    start,             {.com = mute}},
    // Exit or restart 2bwm
    {  MOD |SHIFT,        XK_q,          twobwm_exit,       {.i=0}},
    {  MOD,               XK_q,          twobwm_restart,    {.i=0}},

    // Change current workspace
       DESKTOPCHANGE(     XK_1,                             0)
       DESKTOPCHANGE(     XK_2,                             1)
       DESKTOPCHANGE(     XK_3,                             2)
       DESKTOPCHANGE(     XK_4,                             3)
       DESKTOPCHANGE(     XK_5,                             4)
       DESKTOPCHANGE(     XK_6,                             5)
       DESKTOPCHANGE(     XK_7,                             6)
       DESKTOPCHANGE(     XK_8,                             7)
       DESKTOPCHANGE(     XK_9,                             8)
       DESKTOPCHANGE(     XK_0,                             9)
};
static Button buttons[] = {
    {  MOD        ,XCB_BUTTON_INDEX_1,     mousemotion,   {.i=TWOBWM_MOVE}},
    {  MOD        ,XCB_BUTTON_INDEX_3,     mousemotion,   {.i=TWOBWM_RESIZE}},
    {  MOD|CONTROL,XCB_BUTTON_INDEX_3,     start,         {.com = menucmd}},
    {  MOD|SHIFT,  XCB_BUTTON_INDEX_1,     changeworkspace, {.i=0}},
    {  MOD|SHIFT,  XCB_BUTTON_INDEX_3,     changeworkspace, {.i=1}},
    {  MOD|ALT,    XCB_BUTTON_INDEX_1,     changescreen,    {.i=1}},
    {  MOD|ALT,    XCB_BUTTON_INDEX_3,     changescreen,    {.i=0}}
};
