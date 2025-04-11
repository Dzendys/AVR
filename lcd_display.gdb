# Initialization of LCD buffer
break init_disp
commands
  set $lcd0  = 32
  set $lcd1  = 32
  set $lcd2  = 32
  set $lcd3  = 32
  set $lcd4  = 32
  set $lcd5  = 32
  set $lcd6  = 32
  set $lcd7  = 32
  set $lcd8  = 32
  set $lcd9  = 32
  set $lcd10 = 32
  set $lcd11 = 32
  set $lcd12 = 32
  set $lcd13 = 32
  set $lcd14 = 32
  set $lcd15 = 32
  set $lcd64 = 32
  set $lcd65 = 32
  set $lcd66 = 32
  set $lcd67 = 32
  set $lcd68 = 32
  set $lcd69 = 32
  set $lcd70 = 32
  set $lcd71 = 32
  set $lcd72 = 32
  set $lcd73 = 32
  set $lcd74 = 32
  set $lcd75 = 32
  set $lcd76 = 32
  set $lcd77 = 32
  set $lcd78 = 32
  set $lcd79 = 32
end

# Print LCD buffer
define print_lcd
  printf "┌──────────────────┐\n"
  printf "││"
  printf "%c", $lcd0
  printf "%c", $lcd1
  printf "%c", $lcd2
  printf "%c", $lcd3
  printf "%c", $lcd4
  printf "%c", $lcd5
  printf "%c", $lcd6
  printf "%c", $lcd7
  printf "%c", $lcd8
  printf "%c", $lcd9
  printf "%c", $lcd10
  printf "%c", $lcd11
  printf "%c", $lcd12
  printf "%c", $lcd13
  printf "%c", $lcd14
  printf "%c", $lcd15
  printf "││\n││"
  printf "%c", $lcd64
  printf "%c", $lcd65
  printf "%c", $lcd66
  printf "%c", $lcd67
  printf "%c", $lcd68
  printf "%c", $lcd69
  printf "%c", $lcd70
  printf "%c", $lcd71
  printf "%c", $lcd72
  printf "%c", $lcd73
  printf "%c", $lcd74
  printf "%c", $lcd75
  printf "%c", $lcd76
  printf "%c", $lcd77
  printf "%c", $lcd78
  printf "%c", $lcd79
  printf "││\n"
  printf "└──────────────────┘\n\n"
end

# Edit LCD buffer and show
break show_char
commands
  silent
  if $r17 == 0
    set $lcd0 = $r16
  end
  if $r17 == 1
    set $lcd1 = $r16
  end
  if $r17 == 2
    set $lcd2 = $r16
  end
  if $r17 == 3
    set $lcd3 = $r16
  end
  if $r17 == 4
    set $lcd4 = $r16
  end
  if $r17 == 5
    set $lcd5 = $r16
  end
  if $r17 == 6
    set $lcd6 = $r16
  end
  if $r17 == 7
    set $lcd7 = $r16
  end
  if $r17 == 8
    set $lcd8 = $r16
  end
  if $r17 == 9
    set $lcd9 = $r16
  end
  if $r17 == 10
    set $lcd10 = $r16
  end
  if $r17 == 11
    set $lcd11 = $r16
  end
  if $r17 == 12
    set $lcd12 = $r16
  end
  if $r17 == 13
    set $lcd13 = $r16
  end
  if $r17 == 14
    set $lcd14 = $r16
  end
  if $r17 == 15
    set $lcd15 = $r16
  end
  if $r17 == 64
    set $lcd64 = $r16
  end
  if $r17 == 65
    set $lcd65 = $r16
  end
  if $r17 == 66
    set $lcd66 = $r16
  end
  if $r17 == 67
    set $lcd67 = $r16
  end
  if $r17 == 68
    set $lcd68 = $r16
  end
  if $r17 == 69
    set $lcd69 = $r16
  end
  if $r17 == 70
    set $lcd70 = $r16
  end
  if $r17 == 71
    set $lcd71 = $r16
  end
  if $r17 == 72
    set $lcd72 = $r16
  end
  if $r17 == 73
    set $lcd73 = $r16
  end
  if $r17 == 74
    set $lcd74 = $r16
  end
  if $r17 == 75
    set $lcd75 = $r16
  end
  if $r17 == 76
    set $lcd76 = $r16
  end
  if $r17 == 77
    set $lcd77 = $r16
  end
  if $r17 == 78
    set $lcd78 = $r16
  end
  if $r17 == 79
    set $lcd79 = $r16
  end
  print_lcd
end