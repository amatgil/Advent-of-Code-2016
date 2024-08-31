Decode ← ⊜□↧⊃(≠@,)(≠@\s). # ⊜□:⍜¤(:/↧≠", ".) also works
RotR ← ⁅⍜(ℂ°⊟|×ⁿ×i¯ηe)
RotL ← ⁅⍜(ℂ°⊟|×ⁿ×i ηe)

# ========== PART 1 ============

# Takes: `box"R2" -curr_dir- -curr_pos-`
# Might be possible to inline
Advance ← ⊙+:×,⋕⨬(⊙RotL|⊙RotR)=@R°⊂°□

Solve ← (
  ⊙(0_1 0_0) Decode # Prepare inputs: list dir pos
  ∧(Advance)        # Advance until we run out
  /+⌵◌?             # Get distance (manhattan)
)

# ====== TESTS =======
⍤":3"=5 Solve "R2, L3"
⍤":3"=2 Solve "R2, R2, R2"
⍤":3"=12 Solve "R5, L5, R5, R3"

# '291' with current input.txt
$"Part one solution is: '_'" Solve ↘¯1 &fras "input.txt"

# ========== PART 2 ============
# \+≡(×⊙⋕⨬([1 0]|[0 1])=@R?°⊂°□) Decode "R8, R4, R4, R8"

# ∧(Advance?) ⊙(0_1 0_0) Decode "R5, L5, R5, R3"
