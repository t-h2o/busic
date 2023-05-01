\version "2.25.4"

% fur elise

upper = \relative {
  \clef G
  \time 4/4
  \autoBeamOff

  r1
  r1
  c''8 [c bes c] r8
  g r g

  c [f e c] r2
}

lower = \relative  {
  \clef F
  \time 4/4
  c,8 [c'
  c,8  c']
  c,8 [c'
  c,8  c']

  c,8 [c'
  c,8  c']
  c,8 [c'
  c,8  c']
  
  c,8 [c'
  c,8  c']
  c,8 [c'
  c,8  c']
 
  c,8 [c'
  c,8  c']
  c,8 [c'
  c,8  c']
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
}
