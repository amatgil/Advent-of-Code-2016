Decode ← ⊜□↧⊃(≠@,)(≠@\s).
RotR ← ⁅⍜(ℂ°⊟|×ⁿ×i ηe)
RotL ← ⁅⍜(ℂ°⊟|×ⁿ×i¯ηe)

# ========== PART 1 ============

# Takes: `box"R2" -curr_dir- -curr_pos-`
Advance ← ⊙+:×,⋕⨬(⊙RotL|⊙RotR)=@R°⊂°□

F ← (
  °⊂         # Split head and tail of input line
  ⊃(⊙⋅⊙∘|⋅∘) # Shuffle stack: head dir pos tail
  Advance    # Advance
  ⊃(⋅⋅∘|⊙∘)  # Shuffle back to do it again
)

Solve ← (
  Decode :⊙: [0 1] [0 0] # Prepare inputs: list dir pos
  ⍢(F|≠0⧻)               # Advance until we run out
  /+⌵◌◌                  # Get distance (manhattan)
)

⍤":3"=5 Solve "R2, L3"
⍤":3"=2 Solve "R2, R2, R2"
⍤":3"=12 Solve "R5, L5, R5, R3"

$"Part one solution is: '_'" Solve ↘¯1 &fras "input.txt"

# ========== PART 2 ============
\+≡(×⊙⋕⨬([1 0]|[0 1])=@R?°⊂°□) Decode "R8, R4, R4, R8"
