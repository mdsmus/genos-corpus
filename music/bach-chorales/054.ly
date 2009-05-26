\version "2.10.33"

\header {
  title = "54 - LOBT FOTT, IHR CHRISTEN ALLZUGLEICH"
  subtitle = "BWV 151. SüBer Trost, mein Jesus kömmt / N. Herman (1480?-1561)"
  composer = "J. S. Bach"
}


global = {
  \time 4/4
  \key g \major
}


soprano = \relative c'' {
  \partial 4 g4 
    d'4 d4 d4 d4 
  e4 d8 c8 b4\fermata a4 
  b8 cis8 d4 e4 e4 
  d2. \fermata d4 
  d4 d4 d4 b8 c8   %5
  d4 c8 b8 a4\fermata d4 
  c4 b4 a4 a4 
  g8 a8 b8 c8 d4\fermata d4 
  c4 b8 a8 b4 a4 
  g2.\fermata   %10
  
}

alto = \relative c' {
  \partial 4 d4 
    d8 e8 fis4 g4 g4 
  g4 fis4 g4 a4 
  g4 fis4 e8 fis8 g4 
  fis2. a4 
  g4 fis4 g4 g4   %5
  g4 a8 g8 fis4 fis4 
  g8 a8 a8 g8 g8 fis8 fis4 
  g2 fis4 g4 
  g4 g4 g4 fis4 
  d2.   %10
  
}

tenor = \relative c' {
  \partial 4 b4 
    a4 d8 c8 b8 c8 d4 
  c8 b8 a8 d8 d4 d4 
  g,4 a4 b4 cis4 
  a2. d8 c8 
  b4 c4 d4 e4   %5
  d4 e4 a,4 b4 
  b8 a8 b8 c8 d4 c4 
  b4 e4 d4 b4 
  c8 d8 e4 d4 d8 c8 
  b2.  %10
  
}

baixo = \relative c' {
  \partial 4 g4 
    fis4 d4 g8 a8 b4 
  c4 d4 g,4 fis4 
  e4 d4 g4 a4 
  d,2. fis4 
  g4 a4 b4 e,4   %5
  b4 c4 d4 b4 
  e8 fis8 g4 d4 dis4 
  e8 fis8 g8 a8 b4 g4 
  e4 d8 c8 d4 d4 
  g,2. %10
  
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
