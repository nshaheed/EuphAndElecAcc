\version "2.18.2"
\language "english"

\header {
  title = \markup{\vspace #3 \fontsize #3 \override #'(font-name . "SpectrumMT SC") "Scattered Circulations"}
  %piece = \markup{ \vspace #2 "Scattered Circulations"
  composer = \markup{ \vspace #2.1 \override #'(font-name . "SpectrumMT SC") "Nicholas Shaheed"}
  date = "2014"
  copyright = "2014"
  tagline = ""
  %subtitle = " "
}

scale = \relative c {      
    \hide Stem
    \clef "bass"
    \once \override Staff.TimeSignature #'stencil = ##f
    \time 7/4
    
    gf4 g c df ef f gf4
}

music = \relative c{
  
  \new Staff
    \hide Stem
    \time 4/4
    \clef "bass"
    
    <<
    \new Voice = "first"
      \override Staff.TimeSignature #'stencil = ##f
      \override Score.SpacingSpanner #'strict-note-spacing = ##t
      %\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32)
      { \override DynamicLineSpanner.staff-padding = #6
        \textLengthOn
        
        \override TextScript.staff-padding = #1
        \voiceOne \once \override Slur.eccentricity = #2
        gf'4^\markup{\hspace #.3 "I"} s s gf,4^\markup {\halign #-1.5 \combine \draw-line #'(0 . 2.5) \arrow-head #Y #DOWN ##f} | 
        s16^"II"	 s s s s s s s^\markup {\halign #1 ( \combine \draw-line #'(0 . 2.5) \arrow-head #Y #DOWN ##f )} s s s s s\< s s 
        \override Script.padding = #-1.5 gf''16\fermata | 
        s4\!^"III" s s s16 s s s^\markup {\halign #-1.5 \combine \draw-line #'(0 . 2.5) \arrow-head #Y #DOWN ##f} | 
        s16\>^"IV" s s s^\markup {\halign #-9 ( \combine \draw-line #'(0 . 2.5) \arrow-head #Y #DOWN ##f )} s4 s s16 s s <gf,, gf,!>\!}
    \new Voice = "second"
      { \voiceTwo s1 | gf,\laissezVibrer | 
        c\laissezVibrer | gf\laissezVibrer}
    >>
  
}

\markup {\vspace #1.3 " "}

\markup \fill-line{
  \center-column{
    \score {
        \scale
        \layout {
          \context {
            \Score
            %\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/10)
            
          }
      }
    }
  }
}

\markup{\vspace #1.3 " "}

\markup \fill-line{
  \center-column{
    \score {
      \music
      %\override DynamicLineSpanner.staff-padding = #3
      
      
      \layout {
        \context {
          \Score
          %\set Score.measureLength = #(ly:make-moment 2 1)
          \override Staff.TimeSignature #'stencil = ##f
          %\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/25)
          \override SpacingSpanner.spacing-increment = #2
        }
      }
    }
  }
}

#(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 6) args))))

\markup {\vspace #2 \null}

\markuplist {
  \fontsize #1.5
  \override #'(font-name . "SpectrumMT SC")
  \override-lines #'(baseline-skip . 3.8) {
    \paragraph {
      Scattered Circulations is an improvised piece for low brass and electronic
      accompaniment. Though free to choose any notes at any time, it is 
      recommended that the performer focus on the pitches (in any pitch class)
      given in the displayed scale, as that is the scale the accompaniment is
      built around.
    }
    \vspace #.5
    \paragraph {
      In the score, the black note-heads indicate the beginning and arrival
      points for the player, however, if a section does not begins with a 
      note-head, the player is free to choose a starting note. 
      The whole notes indicate the note being droned by the electronics.
      The downward arrows show where the pedal should be
      pressed (if the arrow is enclosed in parentheses then the pedal can be
      pressed at will in that section).
    }
    \vspace #.5    
    \paragraph{
      In section I the player begins on the first G-flat, and ends the 
      section on the second G-flat while simulatenously pressing on the pedal.
      There is no drone.
    }
    \vspace #.5
    \paragraph{
      In section II there is a G-flat drone.  Additionally, in this section,
      when the pedal is pressed a euphonium sample is played back at a random
      pitch.  Every fourth press the effect heard after the pedal press in 
      section I is played, transposed to the same pitch as the lastest euphonium sample.
      To end this section, hold a note at or higher than the G-flat shown.
      Hold the note until a barrage of the aforementioned effect is heard, this should take
      two to three seconds.  
    }
    \vspace #.5
    \paragraph{
      Section III is accompanied by a C drone.  It is significantly louder than
      the other sections, and there are no note restrictions.  To continue to 
      section IV, press the pedal.
    }
    \vspace #.5
    \paragraph{
      Section IV is a slow decrescendo into nothingness.  The procedure for the
      pedal is identical to section II.  It is recommended to end on one of the indicated
      G-flats.
    }
    \vspace #.5
    \paragraph{
      For technical specifications, see the readme.
    }
    
    
}}
