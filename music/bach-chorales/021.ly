\version "2.10.33"

\header {
  title = "21 - Herzlich tut mich verlangen"
  composer = "J. S. Bach"
}


global = {
  \time 4/4
  \key a \minor
}


soprano = \relative c' {
  \repeat volta 2 {
    \partial 4 e4 
    a4 g4 f4 e4 
    d2 e4 b'4 
    c4 c4 b4 b4 
    a2. } c4 
  b4 g4 a4 b4   %5
  c2 c4 g4 
  a4 g4 a4 f4 
  e2. c'4 
  b8 c8 d4 c4 b4 
  a2 b4 e,4   %10
  f4 e4 d4 g4 
  e2.
  
}

alto = \relative c' {
  \repeat volta 2 {
    \partial 4 b4 
    e4 e4 d4 cis4 
    d2 cis4 e4 
    dis4 e4 fis4 e8 d8 
    c2. } e8 fis8 
  g4 d4 e4 f4   %5
  g4 f4 e4 g4 
  f4 e8 d8 e4 d4 
  cis2. d4 
  d4 g4. fis8 g4 
  g4 fis4 g4 g4   %10
  d4 c4 c4 b8 c8 
  d4 c4 b
  
}

tenor = \relative c' {
  \repeat volta 2 {
    \partial 4 gis4 
    a4 bes4 a4 g4 
    a8 g16 f16 g8 d8 a'4 b4 
    a4 a4 a4 gis4 
    a2. } a4 
  d4 b4 c4 d4   %5
  c8 bes8 a4 g4 c4 
  c4 cis8 d8 a4 a4 
  a2. a4 
  g8 a8 b4 c4 d4 
  e4 d4 d4 c8 b8   %10
  a4 g4 a4 g8 a8 
  b4 a4 gis
  
}

baixo = \relative c {
  \repeat volta 2 {
    \partial 4 d4 
    c4 cis4 d4 e4 
    f4 bes,4 a4 g'4 
    fis4 e4 dis4 e4 
    a,2. } a'4 
  g4 f4 e4 d4   %5
  e4 f4 c4 e4 
  f4 bes4 cis,4 d4 
  a2. fis'4 
  g4 g,4 a4 b4 
  c4 d4 g,4 c4   %10
  d4 e4 fis4 g4 
  gis4 a4 e 
  
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