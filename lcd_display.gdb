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
  set $lcd16 = 32
  set $lcd17 = 32
  set $lcd18 = 32
  set $lcd19 = 32
  set $lcd20 = 32
  set $lcd21 = 32
  set $lcd22 = 32
  set $lcd23 = 32
  set $lcd24 = 32
  set $lcd25 = 32
  set $lcd26 = 32
  set $lcd27 = 32
  set $lcd28 = 32
  set $lcd29 = 32
  set $lcd30 = 32
  set $lcd31 = 32
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
  printf "%c", $lcd16
  printf "%c", $lcd17
  printf "%c", $lcd18
  printf "%c", $lcd19
  printf "%c", $lcd20
  printf "%c", $lcd21
  printf "%c", $lcd22
  printf "%c", $lcd23
  printf "%c", $lcd24
  printf "%c", $lcd25
  printf "%c", $lcd26
  printf "%c", $lcd27
  printf "%c", $lcd28
  printf "%c", $lcd29
  printf "%c", $lcd30
  printf "%c", $lcd31
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
  if $r17 == 16
    set $lcd16 = $r16
  end
  if $r17 == 17
    set $lcd17 = $r16
  end
  if $r17 == 18
    set $lcd18 = $r16
  end
  if $r17 == 19
    set $lcd19 = $r16
  end
  if $r17 == 20
    set $lcd20 = $r16
  end
  if $r17 == 21
    set $lcd21 = $r16
  end
  if $r17 == 22
    set $lcd22 = $r16
  end
  if $r17 == 23
    set $lcd23 = $r16
  end
  if $r17 == 24
    set $lcd24 = $r16
  end
  if $r17 == 25
    set $lcd25 = $r16
  end
  if $r17 == 26
    set $lcd26 = $r16
  end
  if $r17 == 27
    set $lcd27 = $r16
  end
  if $r17 == 28
    set $lcd28 = $r16
  end
  if $r17 == 29
    set $lcd29 = $r16
  end
  if $r17 == 30
    set $lcd30 = $r16
  end
  if $r17 == 31
    set $lcd31 = $r16
  end
  print_lcd
end
