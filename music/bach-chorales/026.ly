\version "2.10.33"

\header {
  title = "26 - O EWIGKEIT, DU DONNERWORT"
  subtitle = "BWV 20. O Ewigkeit, du Donnerwort / J. Schop (1595?-1667)"
  composer = "J. S. Bach"
}


global = {
  \time 4/4
  \key f \major
}


soprano = \relative c' {
  \repeat volta 2 {
    \partial 4 f8  g8 
    a4 bes4 c4 c4 
    d4 e4 f4 \fermata f,8 g8 
    a4 bes4 c4 c4 
    bes4 a4 g4 \fermata a4 
    f4 f4 bes4 a4     %5
    g2 f4 \fermata } c'4 
  g4 a4 bes4 bes4 
  a4 a4 g4 \fermata c4 
  d4 e4 f4 a,4 
  g4 g4 f4 \fermata
}

alto = \relative c' {
  \repeat volta 2 {
    \partial 4 c4 
    f4 e4 f4 a4 
    bes8 a8 g4 a4 c,4 
    f4 g4 g4 f4
    f8 e8 f4 e4 e4
    e4 d4 d8 e8 f4     %5
    f4 e4 c4 } f4 
  g4 g4 fis4 g4 
  g4 fis4 d4 f4 
  f4 c'8 bes8 a8 g8 f4
  f4 e4 c4 
}

tenor = \relative c' {
  \repeat volta 2 {
    \partial 4 a8  bes8 
    c4 bes4 a8 c8 f4 
    f4 c4 c4 a4 
    d4 d4 c8 bes8 a4 
    bes4 c4 c4 a4 
    a4 a4 g4 a4     %5
    d4 c8 bes8 a4 } a4 
  bes4 c4 d4 e4 
  a,8 bes8 c4 bes4 c4 
  bes8 a8 g4 f8 g8 a8 bes8 
  c8 g8 c8 bes8 a4 
}

baixo = \relative c {
  \repeat volta 2 {
    \partial 4 f4 
    f4 g4 a4 f4 
    bes4 c4 f,4 f8 e8 
    d4 c8 bes8 a4 d4 
    g,4 a8 bes8 c4 cis4 
    d8 e8 f8 d8 g4 d8 c8     %5
    bes4 c4 f,4 } f'4 
  e4 ees4 d4 cis4 
  d4 d4 g,4 a4 
  bes4 c4 d8 e8 f4 
  c4 c4 f,4 
}

\score {
  <<
    \new StaffGroup <<
      \override StaffGroup.SystemStartBracket #'style = #'line 
      \new Staff {
        <<
          \global
          \new Voice = "soprano" { \voiceOne \soprano }
          \new Voice = "alto" { \voiceTwo \alto }
        >>
      }
      \new Staff {
        <<
          \global
          \clef "bass"
          \new Voice = "tenor" {\voiceOne \tenor }
          \new Voice = "baixo" { \voiceTwo \baixo \bar "|."}
        >>
      }
    >>
  >>
  \layout {}
  \midi {}
}
