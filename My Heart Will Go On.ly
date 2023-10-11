\version "2.23.6"  % necessary for upgrading to future LilyPond versions.

\language "français"

\header {
  title = "My Heart Will Go On"
  subtitle = "Titanic"
  instrument = "Acoustic Guitar, Piano"
  composer = "Music by James Horner"
  arranger = "Arranged by Minh-Anh"
}


harmonies = \chordmode {
  dod:m7
  ré
  la:maj7
  ré:sus7
  ré:maj7
}
\new Staff \with { instrumentName = "Guitar" }
<<
  \relative {
    \key mi \major
    \partial 4
    r4
    mi'8\p^\markup {
      \fret-diagram "6-x;5-3;4-2;3-o;2-1;1-o;"
    } si' mi mi~mi si mi,4
    mi8 si' mi mi~mi si mi,4
    mi8 si' mi mi~mi si mi,4
    mi8 si' mi mi~mi si mi,4

  }
  \new PianoStaff  \with { instrumentName = "Piano" }
  <<
    \new Staff
    \relative {
      \tempo "Andante" 4 = 90
      \time 4/4
      \key mi \major
      \partial 4
      mi''8 fad
      << si,2. mi sold2.\p\arpeggio >> fad8 mi
      fad si4. (si8) si, la' sold
      mi4. dod8~4 sold
      si4. mi,8 réd4. mi'16 fad16

    }


    \new Staff
    \relative {
      \clef F
      \key mi \major
      r4
      dod8_\markup{\italic "con pedale"} sold' mi' sold~sold2
      si,,8 fad' dod' fad, réd'2
      la,8 mi' la si dod mi~4
      si,8 fad' la4 si,2
    }
  >>
>>