# ======== PART 1 ==========

# I/O: "ULL" ℂ0 ¯1 -> ¯1+i (8 ULL -> 4)
Step ← (
  ⊃(×i=@U|×¯i=@D|¯=@L|=@R)°□ # Separate out
  ⊂:+++                      # Join all together
  /(⨬(+)(⊙◌)>√2⌵+,,)         # Where do we end up?
)

# In complex form, not yet turned into numbers

Solve ← (
  :⇌[1_2_3 4_5_6 7_8_9]                       # Input numpad (in that order)
  ⇌◌◌⍢(⊙⟜⊂:Step ⊙:°⊂|≠0⧻) ⊜□≠@\n. :⊙: ℂ0 0 [] # Generate positions in complex form
  ⋕♭∵°⋕⊡≡(⊂°ℂ)+ℂ1 1
) # Decode complex values 

$ ULL
$ RRDDD
$ LURDL
$ UUUUD
⍤":3" =1985 Solve

$"Part 1: '_'" Solve ↘¯1 &fras "input.txt"
