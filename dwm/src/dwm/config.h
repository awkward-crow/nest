/* See LICENSE file for copyright and license details. */

/* appearance */
static const char font[]            = "-*-*-medium-*-*-*-14-*-*-*-*-*-*-*";
static const char normbordercolor[] = "#333333"; // "#cccccc";
static const char normbgcolor[]     = "#000000"; // "#333333"; "#cccccc";
static const char normfgcolor[]     = "#999999"; // "#000000";
static const char selbordercolor[]  = "#009900"; // "#0066ff";
static const char selbgcolor[]      = "#333333"; // "#0066ff";
static const char selfgcolor[]      = "#999999"; // "#ffffff";
static const unsigned int borderpx  = 1;        /* border pixel of windows */
static const unsigned int snap      = 32;       /* snap pixel */
static const Bool showbar           = True;     /* False means no bar */
static const Bool topbar            = False;     /* False means bottom bar */

/* tagging */
static const char *tags[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9" };

static const Rule rules[] = {
	/* class      instance    title       tags mask     isfloating   monitor */
	{ "Gimp",     NULL,       NULL,       0,            True,        -1 },
	// { "chrome",  NULL,       NULL,       1 << 8,       False,       -1 },
	{ "VirtualBox",  NULL,       NULL,       1 << 4,       False,       -1 },
	{ "Eclipse",  NULL,       NULL,       1,       False,       -1 },
};

/* layout(s) */
static const float mfact      = 0.55; /* factor of master area size [0.05..0.95] */
static const Bool resizehints = True; /* True means respect size hints in tiled resizals */

static const Layout layouts[] = {
	/* symbol     arrange function */
	{ "[]=",      tile },    /* first entry is default */
	{ "><>",      NULL },    /* no layout function means floating behavior */
	{ "[O]",      monocle },
};

/* key definitions */
#define MODKEY Mod1Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static const char *dmenucmd[] = { "dmenu_run", "-fn", font, "-nb", normbgcolor, "-nf", normfgcolor, "-sb", selbgcolor, "-sf", selfgcolor, NULL };
static const char *termcmd[]  = { "urxvt", NULL };

static Key keys[] = {
	/* modifier                     key        function        argument */
	// { MODKEY,                       XK_u,      spawn,          {.v = dmenucmd } },
	{ MODKEY,                       XK_i,      spawn,          {.v = dmenucmd } },
	// { MODKEY|ShiftMask,             XK_Return, spawn,          {.v = termcmd } },
	{ MODKEY,             XK_Return, spawn,          {.v = termcmd } },
	{ MODKEY|ShiftMask,             XK_i,      togglebar,      {0} },
	{ MODKEY|ShiftMask,                       XK_t,      bubble,         {.i = +1 } },
	{ MODKEY|ShiftMask,                       XK_c,      bubble,         {.i = -1 } },
	{ MODKEY,                       XK_t,      focusstack,     {.i = +1 } },
	{ MODKEY,                       XK_c,      focusstack,     {.i = -1 } },
	{ MODKEY|ControlMask,             XK_t,      roll,           {.i = -1 } }, 
	{ MODKEY|ControlMask,             XK_c,      roll,           {.i = +1 } }, 
	{ MODKEY,                       XK_g,      setmfact,       {.f = -0.05} },
	{ MODKEY,                       XK_r,      setmfact,       {.f = +0.05} },
	{ MODKEY|ControlMask,           XK_Return, zoom,           {0} },
	{ MODKEY,                       XK_Tab,    view,           {0} },
	{ MODKEY|ShiftMask,             XK_apostrophe,      killclient,     {0} },
	{ MODKEY,                       XK_w,      setlayout,      {.v = &layouts[0]} },
	{ MODKEY,                       XK_m,      setlayout,      {.v = &layouts[1]} },
	{ MODKEY|ShiftMask,                       XK_w,      setlayout,      {.v = &layouts[2]} },
	/* { MODKEY,                       XK_space,  setlayout,      {0} }, */
	{ MODKEY|ShiftMask,             XK_space,  togglefloating, {0} },
	{ MODKEY,                       XK_0,      view,           {.ui = ~0 } },
	{ MODKEY|ShiftMask,             XK_0,      tag,            {.ui = ~0 } },
	{ MODKEY|ControlMask,                       XK_w,      focusmon,       {.i = -1 } },
	{ MODKEY|ControlMask,                       XK_v,      focusmon,       {.i = +1 } },
	{ MODKEY|ShiftMask|ControlMask,             XK_w,      tagmon,         {.i = -1 } },
	{ MODKEY|ShiftMask|ControlMask,             XK_v,      tagmon,         {.i = +1 } },
	TAGKEYS(                        XK_exclam,                      0)
	TAGKEYS(                        XK_parenleft,                      1)
	TAGKEYS(                        XK_parenright,                      2)
	TAGKEYS(                        XK_less,                      3)
	TAGKEYS(                        XK_minus,                      4)
	TAGKEYS(                        XK_greater,                      5)
	TAGKEYS(                        XK_plus,                      6)
	TAGKEYS(                        XK_equal,                      7)
	TAGKEYS(                        XK_bracketright,                      8)
	{ MODKEY,             XK_z,      quit,           {0} },
};

/* button definitions */
/* click can be ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
	{ ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
	{ ClkWinTitle,          0,              Button2,        zoom,           {0} },
	{ ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
	{ ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};

