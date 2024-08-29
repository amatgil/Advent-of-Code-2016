# ======== PART 1 ==========

# I/O: "ULL" ℂ0 ¯1 -> ¯1+i (8 ULL -> 4)
Step ← (
  ⊃(×i=@U|×¯i=@D|¯=@L|=@R)°□ # Separate out
  ⊂:+++                      # Join all together
  /(⨬(+)(⊙◌)>√2⌵+,,)         # Where do we end up?
)

Solve ← (
  :⇌[1_2_3 4_5_6 7_8_9]                       # Input numpad (in that order)
  ⇌◌◌⍢(⊙⟜⊂:Step ⊙:°⊂|≠0⧻) ⊜□≠@\n. :⊙: ℂ0 0 [] # Generate positions in complex form
  ⋕♭∵°⋕⊡≡(⊂°ℂ)+ℂ1 1
) # Decode complex values 

⍤":3" =1985 Solve "ULL\nRRDDD\nLURDL\nUUUUD\n"

$"Part 1 answer: _" Solve ↘¯1 &fras "input.txt"
