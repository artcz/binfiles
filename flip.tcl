#!/usr/bin/tclsh

puts [string map {a ɐ
                  b q
                  c ɔ
                  d p
                  e ǝ
                  f ɟ
                  g ɓ
                  h ɥ
                  i ı̣
                  j ɾ
                  k ʞ
                  l լ
                  m ɯ
                  n u
                  p d
                  q b
                  r ɹ
                  t ʇ
                  u n
                  v ʌ
                  w ʍ
                  y ʎ
                  ' ,
                  , '
                  . ˙
                  ! ¡
                  ? ¿
                  } [string reverse [join $argv " "]]]
