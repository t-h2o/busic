\version "2.24.1"


 \header {
  title = "Für Elise"
  subtitle = "Clavierstuck in A Minor - WoO 59"
  composer = "Ludwig van Beethoven"
  mutopiatitle = "Für Elise"
  mutopiacomposer = "BeethovenLv"
  mutopiaopus = "WoO 59"
  mutopiainstrument = "Piano"
  date = "1810"
  source = "Breitkopf & Härtel, 1888"
  style = "Classical"
  license = "Public Domain"
  maintainer = "Stelios Samelis"
  moreInfo = "keywords: fur elise, bagatelle no.25"

 footer = "Mutopia-2015/08/18-931"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\paper {
  top-margin = 8\mm
  bottom-margin = 9\mm
  top-system-spacing.basic-distance = #12
  ragged-last-bottom = ##f
}

%----definitions
hideTupletNumber = \override TupletNumber.transparent = ##t
posPedal = \once \override SustainPedal.extra-offset = #'(0.4 . 0)
posDynTxt = \once \override DynamicText.extra-offset = #'(0.4 . 0)

%upper = \relative {
%  \clef G
%  \time 4/4
%  \autoBeamOff
%
%  r1
%  r1
%  c''8 [c bes c] r8
%  g r g
%
%  c [f e c] r2
%}
%
%lower = \relative  {
%  \clef F
%  \time 4/4
%  c,8 [c'
%  c,8  c']
%  c,8 [c'
%  c,8  c']
%
%  c,8 [c'
%  c,8  c']
%  c,8 [c'
%  c,8  c']
%  
%  c,8 [c'
%  c,8  c']
%  c,8 [c'
%  c,8  c']
% 
%  c,8 [c'
%  c,8  c']
%  c,8 [c'
%  c,8  c']
%}
%
%\score {
%  \new PianoStaff \with { instrumentName = "Piano" }
%  <<
%    \new Staff = "upper" \upper
%    \new Staff = "lower" \lower
%  >>
%  \layout { }
%}
