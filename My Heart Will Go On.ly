\version "2.23.6"  % necessary for upgrading to future LilyPond versions.

\language "français"

\header {
  title = "My Heart Will Go On"
  subtitle = "Titanic"
  instrument = "Acoustic Guitar, Piano"
  composer = "Music by James Horner"
  arranger = "Arranged by Mylaur"
}

myChords = \chordmode {s dod:m s s s ré s s s la}


\score {
  <<
    \new ChordNames{
      \set chordChanges = ##t
      \myChords
    }

    \new Staff \with { instrumentName = "Guitar" }

    \relative {

      \key mi \major
      \partial 4
      s4
      mi'8\p%^\markup {\fret-diagram "6-1;5-3;4-3;3-2;2-1;1"}
      si' mi mi~mi si mi,4
      mi8 si' mi mi~mi si mi,4
      mi8 si' mi mi~mi si mi,4
      mi8 si' mi mi~mi si mi,4
      mi8 si' mi mi~mi si mi,4
      mi8 si' mi mi~mi si mi,4
      mi8 si' mi mi~mi si mi,4
      mi8 si' mi mi~mi si mi,4
      mi4. mi8 mi4 mi4
      réd mi2~mi8 mi8
      réd4 mi2 fad4
      sold2 fad
      mi4. mi8 mi4 mi4
      réd mi2 mi4
      si1^\markup \fret-diagram "5-o;4-2;3-2;2-2;1-o"
      r1

      \repeat volta 2 {
        \relative do'{
          mi4. mi8 mi4. mi8
          réd4 mi2 mi4
          réd mi2 fad4
          sold2 fad
          mi4. mi8 mi4 mi
          réd mi2 mi4
          si1
          r1
          mi
          fad2. si,4
          si'2 la4 sold
          fad2 sold4 la
          sold2 fad4 mi
          réd mi2 réd4
          dod2.~(dod8 réd16 dod
          si2 la2)
          mi'1
          fad2. si,4
          si'2 la4 sold8 fad~
          2 sold4 la
          sold2 fad4 mi
          réd mi2 réd4
          réd mi2 fad4
          sold2 fad2
        }
        \alternative{
          {mi1 r1}
          {mi1~1 \repeat unfold 6 {r1} }
        }
      }
      
      \key lab \major
      lab1
      sib2. mib,
      mib'2 réb4 do
      sib2 do réb
      do2 sib lab
      sol lab2 sol
      fa2.~(fa8 sol16 fa
      mib2 réb)
      lab1 sib'2. mib,8 mib'~
      2 réb4 do 
      sib2 do4 réb
      do2 sib4 lab
      sol lab2 sol4
      sol lab2 sib4
      do2 sib
      lab1 \repeat unfold 14 {r1}
      lab1(~lab1 sib2. lab4~lab1)
      r4 lab2.
      (~1~2 sib2\fermata
      lab1~1)
      
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
        << {sold2~4 la16 sold fad mi }  \\ {si2 r8 si4. } >>
        fad'8 si4.~8 si, sold' si
        << mi,2 dod'>> si4 si,
        <<si4. mi fad \arpeggio >> mi8~4 réd
        <<mi,4. sold mi' \arpeggio>>  << {mi,8 mi4}  \\ {sold,8 (sold4)} >> << mi'4 si>>
        <<la4 si réd \arpeggio>> mi2 mi4
        <<la,4 si réd \arpeggio>> mi2 fad4
        <<si,4 mi sold \arpeggio>> si,8 mi <<si2 mi fad>>
        << {mi4. mi8 mi4 mi4}  \\ {<<sold,2 si>> r8 sold4.} >>
        <<la4 si4 réd4 \arpeggio>>  mi2 mi4
        réd2. dod8 si
        la si dod mi la si dod réd
        << mi,4. sold mi'>> << {mi,8 mi4 mi4} \\ {sold,8~sold2} >>
        <<si4 réd \arpeggio>> mi4~mi8 si mi si
        réd4 mi2 fad4
        <<si, mi sold \arpeggio>> si,8 mi << {fad2} \\ {si,4 si4} >>




      }


      \new Staff
      \relative {
        \clef F
        \key mi \major
        s4
        dod8_\markup{\italic "con pedale"} sold' mi' sold~sold2
        si,,8 fad' dod' fad, réd'2
        la,8 mi' la si dod mi~4
        si,8 fad' la4 si,2
        dod8 sold' réd' sold, mi'2
        si,8 fad' dod' fad, réd'2
        la,8 mi' la si dod2
        si,8 fad' la2 si,4 \bar "||"
        mi,8 si' mi2.
        fad,4. si8~4 fad
        la8 mi'4 si'8~4 la,
        si8 sold'8~4 <<si,2 la'>>
        mi,8 si' mi2.
        fad,4. si8~4 fad
        la8 mi' si' mi~2
        la,,8 mi' la si dod2
        mi,,8 si' mi2 mi4
        si8 fad'4 la8~4 si,
        la8 mi'4 si'8~si8 la,4.
        si8 sold'~4 si,8 la'8~4

      }


    >>
  >>


}
