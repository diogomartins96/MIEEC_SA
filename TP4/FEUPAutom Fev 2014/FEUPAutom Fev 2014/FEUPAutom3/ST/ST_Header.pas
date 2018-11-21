const MaxInBits  = 48;
const MaxOutBits = 48;
const MaxMemBits = 128;
const MaxSysBits = 128;

const MaxMemWords = 128;
const MaxSysWords = 128;
const MaxTimers   = 32;

type TTimerType = (TOn, TOff);

type
  TPLCTimerState = record
    V,P: integer;
    Q: boolean;
    Mode : TTimerType;
    Timebase_ms: Integer;
  end;

var _InBits:  array[0..MaxInBits-1] of boolean;
var _OutBits: array[0..MaxOutBits-1] of boolean;
var _MemBits: array[0..MaxMemBits-1] of boolean;
var _SysBits: array[0..MaxSysBits-1] of boolean;

var _MemWords: array[0..MaxMemWords-1] of integer;
var _SysWords: array[0..MaxSysWords-1] of integer;
var _Timers:   array[0..MaxTimers-1] of TPLCTimerState;

var _RE_InBits:  array[0..MaxInBits-1] of boolean;
var _FE_InBits:  array[0..MaxInBits-1] of boolean;
var _RE_OutBits: array[0..MaxSysBits-1] of boolean;
var _FE_OutBits: array[0..MaxSysBits-1] of boolean;
var _RE_MemBits: array[0..MaxSysBits-1] of boolean;
var _FE_MemBits: array[0..MaxSysBits-1] of boolean;
var _RE_SysBits: array[0..MaxSysBits-1] of boolean;
var _FE_SysBits: array[0..MaxSysBits-1] of boolean;

procedure __start_timer(i : integer);
begin
  _timers[i].v:=0;
  if _timers[i].mode=TOn then
    _timers[i].Q:=(_timers[i].V>=_timers[i].P)
  else
    _timers[i].Q:=(_timers[i].V<_timers[i].P);
end;

procedure _start_timer_0; begin  __start_timer(0);  end;
procedure _start_timer_1; begin  __start_timer(1);  end;
procedure _start_timer_2; begin  __start_timer(2);  end;
procedure _start_timer_3; begin  __start_timer(3);  end;
procedure _start_timer_4; begin  __start_timer(4);  end;
procedure _start_timer_5; begin  __start_timer(5);  end;
procedure _start_timer_6; begin  __start_timer(6);  end;
procedure _start_timer_7; begin  __start_timer(7);  end;
procedure _start_timer_8; begin  __start_timer(8);  end;
procedure _start_timer_9; begin  __start_timer(9);  end;

procedure _start_timer_10; begin  __start_timer(10);  end;
procedure _start_timer_11; begin  __start_timer(11);  end;
procedure _start_timer_12; begin  __start_timer(12);  end;
procedure _start_timer_13; begin  __start_timer(13);  end;
procedure _start_timer_14; begin  __start_timer(14);  end;
procedure _start_timer_15; begin  __start_timer(15);  end;
procedure _start_timer_16; begin  __start_timer(16);  end;
procedure _start_timer_17; begin  __start_timer(17);  end;
procedure _start_timer_18; begin  __start_timer(18);  end;
procedure _start_timer_19; begin  __start_timer(19);  end;

procedure _start_timer_20; begin  __start_timer(21);  end;
procedure _start_timer_21; begin  __start_timer(21);  end;
procedure _start_timer_22; begin  __start_timer(22);  end;
procedure _start_timer_23; begin  __start_timer(23);  end;
procedure _start_timer_24; begin  __start_timer(24);  end;
procedure _start_timer_25; begin  __start_timer(25);  end;
procedure _start_timer_26; begin  __start_timer(26);  end;
procedure _start_timer_27; begin  __start_timer(27);  end;
procedure _start_timer_28; begin  __start_timer(28);  end;
procedure _start_timer_29; begin  __start_timer(29);  end;

procedure _start_timer_30; begin  __start_timer(30);  end;
procedure _start_timer_31; begin  __start_timer(31);  end;


var _start_timers : array [0..MaxTimers-1] of procedure;

_start_timers[ 0]:=_start_timer_0;
_start_timers[ 1]:=_start_timer_1;
_start_timers[ 2]:=_start_timer_2;
_start_timers[ 3]:=_start_timer_3;
_start_timers[ 4]:=_start_timer_4;
_start_timers[ 5]:=_start_timer_5;
_start_timers[ 6]:=_start_timer_6;
_start_timers[ 7]:=_start_timer_7;
_start_timers[ 8]:=_start_timer_8;
_start_timers[ 9]:=_start_timer_9;

_start_timers[10]:=_start_timer_10;
_start_timers[11]:=_start_timer_11;
_start_timers[12]:=_start_timer_12;
_start_timers[13]:=_start_timer_13;
_start_timers[14]:=_start_timer_14;
_start_timers[15]:=_start_timer_15;
_start_timers[16]:=_start_timer_16;
_start_timers[17]:=_start_timer_17;
_start_timers[18]:=_start_timer_18;
_start_timers[19]:=_start_timer_19;

_start_timers[20]:=_start_timer_20;
_start_timers[21]:=_start_timer_21;
_start_timers[22]:=_start_timer_22;
_start_timers[23]:=_start_timer_23;
_start_timers[24]:=_start_timer_24;
_start_timers[25]:=_start_timer_25;
_start_timers[26]:=_start_timer_26;
_start_timers[27]:=_start_timer_27;
_start_timers[28]:=_start_timer_28;
_start_timers[29]:=_start_timer_29;

_start_timers[30]:=_start_timer_30;
_start_timers[31]:=_start_timer_31;



var _InBitsFunc : array [0..MaxInBits-1] of function : boolean;

function _In00 : boolean; begin result:=_InBits[0]; end;
function _In01 : boolean; begin result:=_InBits[1]; end;
function _In02 : boolean; begin result:=_InBits[2]; end;
function _In03 : boolean; begin result:=_InBits[3]; end;
function _In04 : boolean; begin result:=_InBits[4]; end;
function _In05 : boolean; begin result:=_InBits[5]; end;
function _In06 : boolean; begin result:=_InBits[6]; end;
function _In07 : boolean; begin result:=_InBits[7]; end;
function _In08 : boolean; begin result:=_InBits[8]; end;
function _In09 : boolean; begin result:=_InBits[9]; end;

function _In10 : boolean; begin result:=_InBits[10]; end;
function _In11 : boolean; begin result:=_InBits[11]; end;
function _In12 : boolean; begin result:=_InBits[12]; end;
function _In13 : boolean; begin result:=_InBits[13]; end;
function _In14 : boolean; begin result:=_InBits[14]; end;
function _In15 : boolean; begin result:=_InBits[15]; end;
function _In16 : boolean; begin result:=_InBits[16]; end;
function _In17 : boolean; begin result:=_InBits[17]; end;
function _In18 : boolean; begin result:=_InBits[18]; end;
function _In19 : boolean; begin result:=_InBits[19]; end;

function _In20 : boolean; begin result:=_InBits[20]; end;
function _In21 : boolean; begin result:=_InBits[21]; end;
function _In22 : boolean; begin result:=_InBits[22]; end;
function _In23 : boolean; begin result:=_InBits[23]; end;
function _In24 : boolean; begin result:=_InBits[24]; end;
function _In25 : boolean; begin result:=_InBits[25]; end;
function _In26 : boolean; begin result:=_InBits[26]; end;
function _In27 : boolean; begin result:=_InBits[27]; end;
function _In28 : boolean; begin result:=_InBits[28]; end;
function _In29 : boolean; begin result:=_InBits[29]; end;

function _In30 : boolean; begin result:=_InBits[30]; end;
function _In31 : boolean; begin result:=_InBits[31]; end;
function _In32 : boolean; begin result:=_InBits[32]; end;
function _In33 : boolean; begin result:=_InBits[33]; end;
function _In34 : boolean; begin result:=_InBits[34]; end;
function _In35 : boolean; begin result:=_InBits[35]; end;
function _In36 : boolean; begin result:=_InBits[36]; end;
function _In37 : boolean; begin result:=_InBits[37]; end;
function _In38 : boolean; begin result:=_InBits[38]; end;
function _In39 : boolean; begin result:=_InBits[39]; end;

function _In40 : boolean; begin result:=_InBits[40]; end;
function _In41 : boolean; begin result:=_InBits[41]; end;
function _In42 : boolean; begin result:=_InBits[42]; end;
function _In43 : boolean; begin result:=_InBits[43]; end;
function _In44 : boolean; begin result:=_InBits[44]; end;
function _In45 : boolean; begin result:=_InBits[45]; end;
function _In46 : boolean; begin result:=_InBits[46]; end;
function _In47 : boolean; begin result:=_InBits[47]; end;

_InBitsFunc[0]:=_In00;
_InBitsFunc[1]:=_In01;
_InBitsFunc[2]:=_In02;
_InBitsFunc[3]:=_In03;
_InBitsFunc[4]:=_In04;
_InBitsFunc[5]:=_In05;
_InBitsFunc[6]:=_In06;
_InBitsFunc[7]:=_In07;
_InBitsFunc[8]:=_In08;
_InBitsFunc[9]:=_In09;

_InBitsFunc[10]:=_In10;
_InBitsFunc[11]:=_In11;
_InBitsFunc[12]:=_In12;
_InBitsFunc[13]:=_In13;
_InBitsFunc[14]:=_In14;
_InBitsFunc[15]:=_In15;
_InBitsFunc[16]:=_In16;
_InBitsFunc[17]:=_In17;
_InBitsFunc[18]:=_In18;
_InBitsFunc[19]:=_In19;

_InBitsFunc[20]:=_In20;
_InBitsFunc[21]:=_In21;
_InBitsFunc[22]:=_In22;
_InBitsFunc[23]:=_In23;
_InBitsFunc[24]:=_In24;
_InBitsFunc[25]:=_In25;
_InBitsFunc[26]:=_In26;
_InBitsFunc[27]:=_In27;
_InBitsFunc[28]:=_In28;
_InBitsFunc[29]:=_In29;

_InBitsFunc[30]:=_In30;
_InBitsFunc[31]:=_In31;
_InBitsFunc[32]:=_In32;
_InBitsFunc[33]:=_In33;
_InBitsFunc[34]:=_In34;
_InBitsFunc[35]:=_In35;
_InBitsFunc[36]:=_In36;
_InBitsFunc[37]:=_In37;
_InBitsFunc[38]:=_In38;
_InBitsFunc[39]:=_In39;

_InBitsFunc[40]:=_In40;
_InBitsFunc[41]:=_In41;
_InBitsFunc[42]:=_In42;
_InBitsFunc[43]:=_In43;
_InBitsFunc[44]:=_In44;
_InBitsFunc[45]:=_In45;
_InBitsFunc[46]:=_In46;
_InBitsFunc[47]:=_In47;

var _RE_InBitsFunc : array [0..MaxInBits-1] of function : boolean;

function _RE_In00 : boolean; begin result:=_RE_InBits[0]; end;
function _RE_In01 : boolean; begin result:=_RE_InBits[1]; end;
function _RE_In02 : boolean; begin result:=_RE_InBits[2]; end;
function _RE_In03 : boolean; begin result:=_RE_InBits[3]; end;
function _RE_In04 : boolean; begin result:=_RE_InBits[4]; end;
function _RE_In05 : boolean; begin result:=_RE_InBits[5]; end;
function _RE_In06 : boolean; begin result:=_RE_InBits[6]; end;
function _RE_In07 : boolean; begin result:=_RE_InBits[7]; end;
function _RE_In08 : boolean; begin result:=_RE_InBits[8]; end;
function _RE_In09 : boolean; begin result:=_RE_InBits[9]; end;

function _RE_In10 : boolean; begin result:=_RE_InBits[10]; end;
function _RE_In11 : boolean; begin result:=_RE_InBits[11]; end;
function _RE_In12 : boolean; begin result:=_RE_InBits[12]; end;
function _RE_In13 : boolean; begin result:=_RE_InBits[13]; end;
function _RE_In14 : boolean; begin result:=_RE_InBits[14]; end;
function _RE_In15 : boolean; begin result:=_RE_InBits[15]; end;
function _RE_In16 : boolean; begin result:=_RE_InBits[16]; end;
function _RE_In17 : boolean; begin result:=_RE_InBits[17]; end;
function _RE_In18 : boolean; begin result:=_RE_InBits[18]; end;
function _RE_In19 : boolean; begin result:=_RE_InBits[19]; end;

function _RE_In20 : boolean; begin result:=_RE_InBits[20]; end;
function _RE_In21 : boolean; begin result:=_RE_InBits[21]; end;
function _RE_In22 : boolean; begin result:=_RE_InBits[22]; end;
function _RE_In23 : boolean; begin result:=_RE_InBits[23]; end;
function _RE_In24 : boolean; begin result:=_RE_InBits[24]; end;
function _RE_In25 : boolean; begin result:=_RE_InBits[25]; end;
function _RE_In26 : boolean; begin result:=_RE_InBits[26]; end;
function _RE_In27 : boolean; begin result:=_RE_InBits[27]; end;
function _RE_In28 : boolean; begin result:=_RE_InBits[28]; end;
function _RE_In29 : boolean; begin result:=_RE_InBits[29]; end;

function _RE_In30 : boolean; begin result:=_RE_InBits[30]; end;
function _RE_In31 : boolean; begin result:=_RE_InBits[31]; end;
function _RE_In32 : boolean; begin result:=_RE_InBits[32]; end;
function _RE_In33 : boolean; begin result:=_RE_InBits[33]; end;
function _RE_In34 : boolean; begin result:=_RE_InBits[34]; end;
function _RE_In35 : boolean; begin result:=_RE_InBits[35]; end;
function _RE_In36 : boolean; begin result:=_RE_InBits[36]; end;
function _RE_In37 : boolean; begin result:=_RE_InBits[37]; end;
function _RE_In38 : boolean; begin result:=_RE_InBits[38]; end;
function _RE_In39 : boolean; begin result:=_RE_InBits[39]; end;

function _RE_In40 : boolean; begin result:=_RE_InBits[40]; end;
function _RE_In41 : boolean; begin result:=_RE_InBits[41]; end;
function _RE_In42 : boolean; begin result:=_RE_InBits[42]; end;
function _RE_In43 : boolean; begin result:=_RE_InBits[43]; end;
function _RE_In44 : boolean; begin result:=_RE_InBits[44]; end;
function _RE_In45 : boolean; begin result:=_RE_InBits[45]; end;
function _RE_In46 : boolean; begin result:=_RE_InBits[46]; end;
function _RE_In47 : boolean; begin result:=_RE_InBits[47]; end;

_RE_InBitsFunc[0]:=_RE_In00;
_RE_InBitsFunc[1]:=_RE_In01;
_RE_InBitsFunc[2]:=_RE_In02;
_RE_InBitsFunc[3]:=_RE_In03;
_RE_InBitsFunc[4]:=_RE_In04;
_RE_InBitsFunc[5]:=_RE_In05;
_RE_InBitsFunc[6]:=_RE_In06;
_RE_InBitsFunc[7]:=_RE_In07;
_RE_InBitsFunc[8]:=_RE_In08;
_RE_InBitsFunc[9]:=_RE_In09;

_RE_InBitsFunc[10]:=_RE_In10;
_RE_InBitsFunc[11]:=_RE_In11;
_RE_InBitsFunc[12]:=_RE_In12;
_RE_InBitsFunc[13]:=_RE_In13;
_RE_InBitsFunc[14]:=_RE_In14;
_RE_InBitsFunc[15]:=_RE_In15;
_RE_InBitsFunc[16]:=_RE_In16;
_RE_InBitsFunc[17]:=_RE_In17;
_RE_InBitsFunc[18]:=_RE_In18;
_RE_InBitsFunc[19]:=_RE_In19;

_RE_InBitsFunc[20]:=_RE_In20;
_RE_InBitsFunc[21]:=_RE_In21;
_RE_InBitsFunc[22]:=_RE_In22;
_RE_InBitsFunc[23]:=_RE_In23;
_RE_InBitsFunc[24]:=_RE_In24;
_RE_InBitsFunc[25]:=_RE_In25;
_RE_InBitsFunc[26]:=_RE_In26;
_RE_InBitsFunc[27]:=_RE_In27;
_RE_InBitsFunc[28]:=_RE_In28;
_RE_InBitsFunc[29]:=_RE_In29;

_RE_InBitsFunc[30]:=_RE_In30;
_RE_InBitsFunc[31]:=_RE_In31;
_RE_InBitsFunc[32]:=_RE_In32;
_RE_InBitsFunc[33]:=_RE_In33;
_RE_InBitsFunc[34]:=_RE_In34;
_RE_InBitsFunc[35]:=_RE_In35;
_RE_InBitsFunc[36]:=_RE_In36;
_RE_InBitsFunc[37]:=_RE_In37;
_RE_InBitsFunc[38]:=_RE_In38;
_RE_InBitsFunc[39]:=_RE_In39;

_RE_InBitsFunc[40]:=_RE_In40;
_RE_InBitsFunc[41]:=_RE_In41;
_RE_InBitsFunc[42]:=_RE_In42;
_RE_InBitsFunc[43]:=_RE_In43;
_RE_InBitsFunc[44]:=_RE_In44;
_RE_InBitsFunc[45]:=_RE_In45;
_RE_InBitsFunc[46]:=_RE_In46;
_RE_InBitsFunc[47]:=_RE_In47;



var _FE_InBitsFunc : array [0..MaxInBits-1] of function : boolean;

function _FE_In00 : boolean; begin result:=_FE_InBits[0]; end;
function _FE_In01 : boolean; begin result:=_FE_InBits[1]; end;
function _FE_In02 : boolean; begin result:=_FE_InBits[2]; end;
function _FE_In03 : boolean; begin result:=_FE_InBits[3]; end;
function _FE_In04 : boolean; begin result:=_FE_InBits[4]; end;
function _FE_In05 : boolean; begin result:=_FE_InBits[5]; end;
function _FE_In06 : boolean; begin result:=_FE_InBits[6]; end;
function _FE_In07 : boolean; begin result:=_FE_InBits[7]; end;
function _FE_In08 : boolean; begin result:=_FE_InBits[8]; end;
function _FE_In09 : boolean; begin result:=_FE_InBits[9]; end;

function _FE_In10 : boolean; begin result:=_FE_InBits[10]; end;
function _FE_In11 : boolean; begin result:=_FE_InBits[11]; end;
function _FE_In12 : boolean; begin result:=_FE_InBits[12]; end;
function _FE_In13 : boolean; begin result:=_FE_InBits[13]; end;
function _FE_In14 : boolean; begin result:=_FE_InBits[14]; end;
function _FE_In15 : boolean; begin result:=_FE_InBits[15]; end;
function _FE_In16 : boolean; begin result:=_FE_InBits[16]; end;
function _FE_In17 : boolean; begin result:=_FE_InBits[17]; end;
function _FE_In18 : boolean; begin result:=_FE_InBits[18]; end;
function _FE_In19 : boolean; begin result:=_FE_InBits[19]; end;

function _FE_In20 : boolean; begin result:=_FE_InBits[20]; end;
function _FE_In21 : boolean; begin result:=_FE_InBits[21]; end;
function _FE_In22 : boolean; begin result:=_FE_InBits[22]; end;
function _FE_In23 : boolean; begin result:=_FE_InBits[23]; end;
function _FE_In24 : boolean; begin result:=_FE_InBits[24]; end;
function _FE_In25 : boolean; begin result:=_FE_InBits[25]; end;
function _FE_In26 : boolean; begin result:=_FE_InBits[26]; end;
function _FE_In27 : boolean; begin result:=_FE_InBits[27]; end;
function _FE_In28 : boolean; begin result:=_FE_InBits[28]; end;
function _FE_In29 : boolean; begin result:=_FE_InBits[29]; end;

function _FE_In30 : boolean; begin result:=_FE_InBits[30]; end;
function _FE_In31 : boolean; begin result:=_FE_InBits[31]; end;
function _FE_In32 : boolean; begin result:=_FE_InBits[32]; end;
function _FE_In33 : boolean; begin result:=_FE_InBits[33]; end;
function _FE_In34 : boolean; begin result:=_FE_InBits[34]; end;
function _FE_In35 : boolean; begin result:=_FE_InBits[35]; end;
function _FE_In36 : boolean; begin result:=_FE_InBits[36]; end;
function _FE_In37 : boolean; begin result:=_FE_InBits[37]; end;
function _FE_In38 : boolean; begin result:=_FE_InBits[38]; end;
function _FE_In39 : boolean; begin result:=_FE_InBits[39]; end;

function _FE_In40 : boolean; begin result:=_FE_InBits[40]; end;
function _FE_In41 : boolean; begin result:=_FE_InBits[41]; end;
function _FE_In42 : boolean; begin result:=_FE_InBits[42]; end;
function _FE_In43 : boolean; begin result:=_FE_InBits[43]; end;
function _FE_In44 : boolean; begin result:=_FE_InBits[44]; end;
function _FE_In45 : boolean; begin result:=_FE_InBits[45]; end;
function _FE_In46 : boolean; begin result:=_FE_InBits[46]; end;
function _FE_In47 : boolean; begin result:=_FE_InBits[47]; end;


_FE_InBitsFunc[0]:=_FE_In00;
_FE_InBitsFunc[1]:=_FE_In01;
_FE_InBitsFunc[2]:=_FE_In02;
_FE_InBitsFunc[3]:=_FE_In03;
_FE_InBitsFunc[4]:=_FE_In04;
_FE_InBitsFunc[5]:=_FE_In05;
_FE_InBitsFunc[6]:=_FE_In06;
_FE_InBitsFunc[7]:=_FE_In07;
_FE_InBitsFunc[8]:=_FE_In08;
_FE_InBitsFunc[9]:=_FE_In09;

_FE_InBitsFunc[10]:=_FE_In10;
_FE_InBitsFunc[11]:=_FE_In11;
_FE_InBitsFunc[12]:=_FE_In12;
_FE_InBitsFunc[13]:=_FE_In13;
_FE_InBitsFunc[14]:=_FE_In14;
_FE_InBitsFunc[15]:=_FE_In15;
_FE_InBitsFunc[16]:=_FE_In16;
_FE_InBitsFunc[17]:=_FE_In17;
_FE_InBitsFunc[18]:=_FE_In18;
_FE_InBitsFunc[19]:=_FE_In19;

_FE_InBitsFunc[20]:=_FE_In20;
_FE_InBitsFunc[21]:=_FE_In21;
_FE_InBitsFunc[22]:=_FE_In22;
_FE_InBitsFunc[23]:=_FE_In23;
_FE_InBitsFunc[24]:=_FE_In24;
_FE_InBitsFunc[25]:=_FE_In25;
_FE_InBitsFunc[26]:=_FE_In26;
_FE_InBitsFunc[27]:=_FE_In27;
_FE_InBitsFunc[28]:=_FE_In28;
_FE_InBitsFunc[29]:=_FE_In29;

_FE_InBitsFunc[20]:=_FE_In20;
_FE_InBitsFunc[21]:=_FE_In21;
_FE_InBitsFunc[22]:=_FE_In22;
_FE_InBitsFunc[23]:=_FE_In23;
_FE_InBitsFunc[24]:=_FE_In24;
_FE_InBitsFunc[25]:=_FE_In25;
_FE_InBitsFunc[26]:=_FE_In26;
_FE_InBitsFunc[27]:=_FE_In27;
_FE_InBitsFunc[28]:=_FE_In28;
_FE_InBitsFunc[29]:=_FE_In29;

_FE_InBitsFunc[30]:=_FE_In30;
_FE_InBitsFunc[31]:=_FE_In31;
_FE_InBitsFunc[32]:=_FE_In32;
_FE_InBitsFunc[33]:=_FE_In33;
_FE_InBitsFunc[34]:=_FE_In34;
_FE_InBitsFunc[35]:=_FE_In35;
_FE_InBitsFunc[36]:=_FE_In36;
_FE_InBitsFunc[37]:=_FE_In37;
_FE_InBitsFunc[38]:=_FE_In38;
_FE_InBitsFunc[39]:=_FE_In39;

_FE_InBitsFunc[40]:=_FE_In40;
_FE_InBitsFunc[41]:=_FE_In41;
_FE_InBitsFunc[42]:=_FE_In42;
_FE_InBitsFunc[43]:=_FE_In43;
_FE_InBitsFunc[44]:=_FE_In44;
_FE_InBitsFunc[45]:=_FE_In45;
_FE_InBitsFunc[46]:=_FE_In46;
_FE_InBitsFunc[47]:=_FE_In47;





