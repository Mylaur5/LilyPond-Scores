\version "2.23.6"  % necessary for upgrading to future LilyPond versions.

\language "français"

\header {
  title = "My Heart Will Go On"
  subtitle = "Titanic"
  instrument = "Acoustic Guitar, Piano"
  composer = "Music by James Horner"
  arranger = "Arranged by Mylaur"
}

% Make sure to set "1" to have chords lasting for 4 tempo aka at the beginning of each bar
myChords = \chordmode {
  \override ChordName.font-size = #1/2
  s4 dod1:m ré1 la4
}
pianochords = \chords {
  \override ChordName.font-size = #1/2
  \set noChordSymbol = "—"
  s4 dod1:m7 ré la:maj7 si2:7sus4 si2:7
  dod1:m7 si la si2:sus7 mi2
  mi1 si:7/fad la:sus mi2/si si:7sus4
  mi1 si:7/fad la
  s1 mi si:7 la mi2/si si:7
  mi1 si:7 la:sus s1
  dod:m7 si la si:7
  dod:m7 si la si:7
  dod:m7 si la si:7
  dod:m7 sold:m7 la si:7
  dod:m7 si la si2:7sus4 si
  dod1:m7 si:7 la:sus mi2/si si
  dod1:m7 si:7 la:sus la
  mi si:7 la si2 sold:7/sid
  dod1:m7 sold:m la s1
  dod1:m7 si la si:7
  dod1:m7 si:7 la si:7
  dod1:m7 si la si:7
  dod1:m7 sold:m la si:7
  dod1:m7 si la si2:7sus4 si:7
  dod1:m7 si la dod2:m/sold fad:dim7
  fa1:m7 mib réb mib
  fa:m7 mib réb mib:7
  fa:m7 mib réb mib
  fa:m7 do:m7 réb:maj7 mib
  lab mib/lab réb/lab
  mib/lab lab mib/lab
  réb/lab réb lab
}

guitar = \relative {

  \key mi \major
  \partial 4
  s4
  mi'8\mp si' mi mi~mi si mi,4
  mi8 si' mi mi~mi si mi,4
  mi8 si' mi mi~mi si mi,4
  mi8 si' mi mi~mi si mi,4
  mi8 si' mi mi~mi si mi,4
  mi8 si' mi mi~mi si mi,4
  mi8 si' mi mi~mi si mi,4
  mi8 si' mi mi~mi si mi,4


  mi4.\mp mi8 mi4 mi4
  réd mi2~mi8 mi8
  réd4 mi2 fad4
  sold2 fad
  mi4. mi8 mi4 mi4
  réd mi2 mi4
  si1
  r1
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
  sold2 fad
  mi2. r4

  mi8\mp si' mi mi~mi si mi,4
  mi8 si' mi mi~mi si mi,4
  mi8 si' mi mi~mi si mi,4

  mi4.\mp mi8 mi4 mi4
  réd mi2~mi8 mi8
  réd4 mi2 fad4
  sold2 fad
  mi4. mi8 mi4 mi4
  réd mi2 mi4
  si1
  r1

  mi4.mi8 mi4 mi4
  réd mi2~mi8 mi8
  réd4 mi2 fad4
  sold2 fad
  mi4. mi8 mi4 mi4
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
  sold2 fad
  mi1~1 \repeat unfold 6 {r1} %Autre accompagnement ?


  \key lab \major
  lab1
  sib2. mib,4
  mib'2 réb4 do
  sib2 do4 réb
  do2 sib4 lab
  sol lab2 sib4
  fa2.~(fa8 sol16 fa
  mib2 réb)
  lab'1 sib2. mib,8 mib'~
  2 réb4 do
  sib2 do4 réb
  do2 sib4 lab
  sol lab2 sol4
  sol lab2 sib4
  do2 sib
  lab1 r1
  lab1(~lab1 sib2. lab4~lab1)
  lab1 mib2 r8 lab4.
  r1 do1\fermata)
}

RH = \relative {

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
  \bar "||"
  <<mi,4. sold mi' \arpeggio>>  << {mi,8 mi4}  \\ {sold,8 (sold4)} >> << mi'4 si>>
  <<la4 si réd \arpeggio>> mi2 mi4
  <<la,4 si réd \arpeggio>> mi2 fad4
  <<si,4 mi sold \arpeggio>> si,8 mi <<si2 mi fad>>
  \set Staff.connectArpeggios = ##t
  << {mi4.\arpeggio mi8 mi4 mi4}  \\ {<<sold,2 si\arpeggio>> r8 sold4.} >>
  <<la4 si4 réd4 \arpeggio>>  mi2 mi4
  réd2. dod8 si
  la si dod mi la si dod réd
  << mi,4. sold mi'\arpeggio>> << {mi,8 mi4 mi4} \\ {sold,8~sold2} >>
  <<si4 réd \arpeggio>> mi4~mi8 si mi si
  réd4 mi2 fad4
  <<si, mi sold \arpeggio>> si,8 mi << {fad2} \\ {si,4 si4} >>
  <<sold4. si mi\arpeggio>> << {mi8 mi4 mi4} \\ {sold,8~sold8 si4.} >>
  <<la4 si réd \arpeggio>> mi2 mi4
  si8 la si mi~2
  <<la,2 si mi>> mi,8 la dod réd
  <<mi2 sold2 mi' \arpeggio>> sold,2
  <<fad2. si fad'\arpeggio>> si,4
  <<si2 dod si'\arpeggio>> la8 la, sold' fad~
  4. si,8 sold'4 la
  sold2 fad4 mi
  \set Staff.connectArpeggios = ##t
  << {fad4\arpeggio  mi~mi réd} \\ {fad,2\arpeggio mi8 sold~4} >>
  <<mi1 dod'>>
  <<si,4 mi fad si\arpeggio>> fad8 sold la si dod réd
  <<mi,1 sold mi'\arpeggio>>
  <<fad,2 si fad'\arpeggio>> r8 fad,8 si4
  <<si2 dod mi si' \arpeggio>> << {\stemDown dod,2 \stemNeutral} \\ {\stemUp la'4 \stemNeutral sold8 fad~<<fad4. mi si>>} >>
  << {si8 \stemDown si2 \stemNeutral} \\ {s8 \stemUp sold'4 \stemNeutral la} >>
  <<si,2 mi sold \arpeggio>> <<{fad4 mi} \\ {<<sold,2 si>>}>>
  <<fad4 si réd \arpeggio>> mi4~mi8 fad,~<<fad4 réd'>>
  <<mi,4 la réd \arpeggio>> mi2 fad4
  <<sold,4. si sold' \arpeggio>> sold,8 fad'2
  <<mi,2 sold mi' \arpeggio>> <<{s4 la16 sold fad mi } \\ {sold,2} >>
  fad'8 si4.~8 si, sold' si
  <<mi,2 dod'>> si
  <<si, mi fad \arpeggio>> réd,
  << {mi4. \arpeggio mi8 mi4 mi4} \\ {<<sold,2 si \arpeggio>> r8 sold4.} >>
  réd'4 mi2 mi4
  <<la, si réd\arpeggio>> mi2 fad4
  \chordmode {mi/si \arpeggio} si,8 mi fad2
  << {mi4.  mi8 mi4 mi4} \\ {<<sold,2 si >> r8 sold4.} >>
  <<{réd'4 mi2 mi4} \\ {<<fad, si>> fad8~fad si4. }>>
  si8 mi réd mi si' mi, réd mi
  si-1 mi-2 fad sold-4 la-1 si dod réd
  \chordmode{mi4.:8^7 \arpeggio} mi8 mi4 mi4% Example of 1-3-5-8 chord
  \chordmode{si/fad \arpeggio} mi~8 fad, mi'4
  <<la, si réd\arpeggio>> mi2 fad4
  \chordmode{mi'/si \arpeggio} si, <<si fad'>> sold,
  <<mi4. sold mi' \arpeggio>> mi8 mi4 mi4
  \chordmode{si/fad \arpeggio} mi2 fad4
  <<la,,2 si mi si'>> r8 mi,4.
  \chordmode{la,2:sus2} mi8 la dod réd
  <<mi,2 sold mi'>> r8 réd, mi sold
  <<fad2. si fad'>> si,4
  <<si2 dod mi si' \arpeggio>> <<la,4 dod la'>> sold8 fad~
  4. la,8 <<si4 sold'>> <<dod, la'>>
  <<si,2 sold'>> <<{\stemDown fad,2} \\ {\stemUp fad'4 mi4}>>
  <<{fad,2 \arpeggio fad} \\ {réd'4 \arpeggio mi2 réd4}>>
  <<dod,2~ mi la dod \arpeggio>> \stemUp dod4. réd16 dod
  si4 fad8 sold la si dod réd
  \chordmode{mi1:8^7\arpeggio}
  <<fad,2. si fad'\arpeggio>> si,4
  <<si2 dod mi si' \arpeggio>> <<la,4 dod la'>> sold8 fad~
  fad4. sold,8 <<si4 sold'>> <<dod, la'>>
  <<si,2 sold'>> <<si,8 fad'>> fad, mi' fad,~
  <<fad4 réd'>> <<mi,4 sold mi'>> mi,8 sold réd' mi,
  <<sold4 réd' \arpeggio>> mi2 fad4 <<sold,4. si sold' \arpeggio>> fad,8~<<fad4. fad'>> mi,8
  <<mi2 sold si mi \arpeggio>> r8 sold, fad' mi
  fad si4.~8 si,8 la' sold
  mi4 dod2 si4
  <<mi,4. si' \arpeggio>> mi,8 réd4. mi16 fad
  <<si,2. sold'>> la8 sold
  \mergeDifferentlyDottedOn
  <<{<<\stemDown si,4. mi fad>> \stemNeutral si,8 mi2} \\ {\stemUp fad8 \stemNeutral si~si2 sold8 si}>>
  << {<<dod,4 mi >> dod8. mi4} \\ {\stemUp dod'2.}>> <<réd,4 mi'>>
  <<mi,2 sold dod mi>> <<fad, do' mib fad>>
  \key lab \major
  <<lab, do fa lab>> <<do,, fa>>
  <<sib mib sol sib>> <<mib,,4 sol>> <<mib mib'>>
  <<mib2 fa lab mib' \arpeggio>> \chordmode{réb'4:3.5.8 fa'8:m/+do} <<sib, sib'>>
  << {<< sib,2 sib'>> <<do,4 do'>> <<réb, réb'>>} \\ {<<mib,2 sol>> <<fa lab>>} >>
  \chordmode{fa'2:m/+do\arpeggio do'4:m7^5/+sib lab4:8^7}
  \chordmode{do':m/+sol\arpeggio lab:3.5.8} r8 sol,~<<sol4 do mib sol>>
  \chordmode{fa2:m8^7}
  s2 <<mib,4 lab sib mib>> <<sib,8 sib'>> <<do, do'>> <<réb, réb'>> <<mib, mib'>> <<fa, fa'>> <<sol, sol'>>
  <<lab,2 do fa lab>> <<do,, fa>>
  <<sib mib sol sib>> <<mib,,4 sol>> <<mib mib'>>
  <<fa2 lab mib' \arpeggio>> \chordmode{réb'4:3.5.8 fa'8:m/+do} <<sib, sib'>>
  << {<< sib,2 sib'>> <<do,4 do'>> <<réb, réb'>>} \\ {<<mib,2 sol>> <<fa lab>>} >>
  \chordmode{fa'2:m/+do\arpeggio } <<sib,4 sib'>> <<lab, lab'>>
  \chordmode{do':m/+sol\arpeggio} <<lab,4 lab'~>> <<lab,8 lab'>> sol, sol' do
  <<sib,4 sol'>> <<do, lab'>> sib,8 mib sib'4
  <<do,2 mib do' \arpeggio>> sib
  <<do,2. lab'>> réb,16 do sib lab
  sib8 mib4.~8 mib, sib'4
  lab2. fa4
  mib1
  << {<<do'2. mib lab do \arpeggio>>} \\ {s2 s4 réb16 do sib lab} >>
  sib8 mib4.~8 mib, sib'4
  lab2. fa4
  <<fa,2 lab mib' \arpeggio>> r8 lab,4.
  r2 mib8 lab do mib
  do'1 \fermata


}

LH = \relative {

  \clef F
  \key mi \major
  \partial 4
  s4
  dod8_\markup{\italic "con pedale"} sold' mi' sold~sold2
  si,,8 fad' dod' fad, réd'2
  la,8 mi' la si dod mi~4
  si,8 fad' la4 si,2
  dod8 sold' réd' sold, mi'2
  si,8 fad' dod' fad, réd'2
  la,8 mi' la si dod2
  si,8 fad' la2 si,4
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
  mi,8 si' mi2.
  si8 fad'4 la8~4 si,4
  la8 mi'4.~4 la
  la,8 mi' la si s2
  dod,8 sold' réd' mi~mi4 dod4
  si,8 fad' dod' fad, réd'2
  la,8 mi' la si dod2
  si,8 fad' la si fad'2
  dod,8 sold' réd' sold, mi'2
  si,8 fad'4 réd'8 s2
  la,8 mi' si' dod mi4 la,
  si,8 fad'~4 la si,,
  dod8 dod' sold' réd' mi dod sold dod,
  si fad' réd' fad, dod'4 fad,
  la,8 mi' la si dod2
  si,8 fad' la si fad'2
  dod,8 sold' réd' sold, mi'2
  sold,,8 si réd si si'2
  la,8 mi' la si dod mi~mi4
  si,8 fad' la4 si,2
  dod8 sold' réd' mi s2
  si,8 fad' dod' fad, réd'2
  la,8 mi' la si dod2
  si,8 fad' la \change Staff = "RH" mi' \change Staff = "LH" si,2
  mi,8 si' mi2.
  si8 fad'4 la8~2
  la,8 mi'4 si'8~2
  si,8 sold'~4 si,8 fad' si4
  mi,,8 si' mi2.
  si,8 si'~2.
  la,4. la''8~4 mi
  la,8 mi' la si dod2
  mi,,8 si' mi sold~8 si4.
  si,8 fad'4 la8~4 si4
  la,8 mi' la si dod2
  si,8 fad'8~4 sid,8 sold'~4
  dod,8 sold' réd'4~8 dod sold dod,
  sold8 réd'~4 si'2
  la,8 mi' si' dod~4 la8 mi
  la,8 mi' la si dod4 la8 la,
  dod,8 sold' mi' dod sold'2
  si,8 fad' dod' fad, réd' fad, dod' fad,
  la, mi' la si dod mi4 la,8
  si, fad' la4 la8 fad4 si,8
  dod, dod' sold' réd'~8 dod sold dod,
  si fad'4 dod'8~8 fad,4 si,8
  la8 mi' si' \change Staff = "RH" dod \shiftOn mi4 \change Staff = "LH" la,4
  si,,8 si' fad'4 la si,,4
  dod8 dod' sold' réd' mi dod sold dod,
  si, si' fad' dod' réd dod fad,4
  la,8 mi' la si dod mi dod4
  si,8 fad' la4 la8 fad4 si,8
  dod,8 dod' sold' réd' mi4 sold,
  sold,8 réd'4 si'8~si4 sold,4
  la8 mi' la si dod mi4 dod8
  si, fad' la4~8 la fad4
  dod,8 dod' sold' réd' mi4 dod8 sold
  si, fad' dod' fad, réd' fad, dod'4
  la,8 mi' la si dod mi~4
  si,8 fad' la4 si,8 fad'la si,
  dod, dod' dod sold' réd' mi dod sold
  si,4 fad'~8 fad4.
  la,8 mi' si'4 la8 mi la, la
  sold mi' dod' mi, fad, mib' do' mib,

  \key lab \major
  fa,,8 fa' do' sol' lab fa do fa,
  mib, mib' mib' sol sib mib, mib sib
  réb,, réb' réb' fa mib' lab, réb,4
  mib,,8 mib' mib' sol mib' sib sol mib
  fa,, fa' do' fa~8 mib' lab,4
  mib,,8 mib' mib' sol sib4 mib,
  réb,,8 réb' réb' fa lab mib' fa lab
  mib,, sib' mib4 sib mib,
  fa,8 fa' do' sol' lab fa do fa,
  mib, mib' mib' sol sib mib, mib mib,
  \stemUp réb, réb'' fa lab \stemNeutral mib' réb lab réb,
  mib,,8 mib' mib' sol sib sol4 mib8
  fa, do' fa lab mib' do4 lab8
  mib, do'4 sol'8 sib4 do,4
  réb,8 réb' lab' mib'~8 réb lab réb,
  mib, sol' sib mib~4 mib,

  lab,8 mib' lab do mib2
  lab,,8 mib' sol sib~2
  lab,8 fa' lab réb~2
  lab,8 mib' sol sib~2
  \clef "treble" lab8 mib' sib' do mib2
  lab,,8 mib' sol sib~2
  lab,8 fa' lab réb~2
  \clef "F" réb,,8 lab' mib' fa~2
  lab,,8 mib' sib' do s2
  lab,,1\fermata
}


\score {
  <<
    \new Staff \with {
      instrumentName = "Guitar"
      \consists "Span_arpeggio_engraver"
      midiInstrument = "acoustic guitar (steel)"
    }{
      \guitar
    }
    \new PianoStaff  \with {
      instrumentName = "Piano"
      midiInstrument = "acoustic grand"
    }

    <<
      \set PianoStaff.connectArpeggios = ##t
      \pianochords
      \new Staff = "RH" \RH
      \new Staff = "LH" \LH
    >>
  >>
  \layout {}
  \midi{ }


}
