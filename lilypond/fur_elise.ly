\version "2.24.1"

% fur elise

upper = \relative {
  \clef G
  \time 3/4
  \autoBeamOff
  r2
  e''8    [dis]

  e8      [dis]
  e8      [b]
  d8      [c]

  a4      r8
  c,8
  e8  [a]

  b4
  r8      e,8
  gis8      [b]

  c4
  r8      e,8
  e'8      [dis]

}

lower = \relative  {
  \clef F
  \time 3/4
  r2
  r4

  r2
  r4

  a2
  r4

  e2
  r4

  a2
  r4
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
}
