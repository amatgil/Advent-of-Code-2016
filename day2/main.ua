# ======== PART 1 ==========

# I/O: "ULL" ℂ0 ¯1 -> ¯1+i (8 ULL -> 4)
Step₁ ← (
  ⊃(×i=@U|×¯i=@D|¯=@L|=@R)°□ # Separate out
  ⊂:+++                      # Join all together
  /(⨬(+)(⊙◌)>√2⌵+,,)         # Where do we end up?
)

Part₁ ← (
  :⇌[1_2_3 4_5_6 7_8_9]                        # Input numpad (in that order)
  ⇌◌◌⍢(⊙⟜⊂:Step₁ ⊙:°⊂|≠0⧻) ⊜□≠@\n. :⊙: ℂ0 0 [] # Generate positions in complex form
  ♭∵°⋕⊡≡(⊂°ℂ)+ℂ1 1
) # Decode complex values 

# ======== PART 2 ==========

Step₂ ← (
  ⊃(×i=@U|×¯i=@D|¯=@L|=@R)°□ # Separate out
  ⊂:+++                      # Join all together
  /(⨬(+)(⊙◌)>2+∩⌵°ℂ+,,)      # Where do we end up?
)

# Same as part 2 but now our radius is 2 instead of 1 (manhattan)
Part₂ ← (
  :⇌["  1  " " 234 " "56789" " ABC " "  D  "]   # Input numpad (in that order)
  ⇌◌◌⍢(⊙⟜⊂:Step₂ ⊙:°⊂|≠0⧻) ⊜□≠@\n. :⊙: ℂ0 ¯2 [] # Generate positions in complex form
  ♭∵°⋕⊡≡(⊂°ℂ) +ℂ2 2
) # Decode complex values 

# ======== TESTS AND MAIN ==========
⍤"Part 1 fails" ≍"1985" Part₁ "ULL\nRRDDD\nLURDL\nUUUUD\n"
⍤"Part 2 fails" ≍"5DB3" Part₂ "ULL\nRRDDD\nLURDL\nUUUUD\n"

$"Part 1 sol: _" Part₁ ↘¯1 &fras "input.txt"
$"Part 2 sol: _" Part₂ ↘¯1 &fras "input.txt"
