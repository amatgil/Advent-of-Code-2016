Decode ← ⊜□↧⊃(≠@,)(≠@\s). # ⊜□:⍜¤(:/↧≠", ".) also works
RotR ← ⁅⍜(ℂ°⊟|×ⁿ×i ηe)
RotL ← ⁅⍜(ℂ°⊟|×ⁿ×i¯ηe)

# ========== PART 1 ============

# Takes: `box"R2" -curr_dir- -curr_pos-`
# Might be possible to inline
Advance₁ ← ⊙+:×,⋕⨬(⊙RotL|⊙RotR)=@R°⊂°□

Part₁ ← (
  ⊙(0_1 0_0) Decode # Prepare inputs: list dir pos
  ∧Advance₁         # Advance until we run out
  /+⌵◌              # Get distance (manhattan)
)

# ====== TESTS =======
⍤":3"=5 Part₁ "R2, L3"
⍤":3"=2 Part₁ "R2, R2, R2"
⍤":3"=12 Part₁ "R5, L5, R5, R3"

# '291' with current input.txt
$"Part one solution is: '_'" Part₁ ↘¯1 &fras "input.txt"

# ========== PART 2 ============
# Takes: `box"R2" -curr_dir- -curr_pos- -prev-visited`
# Returns: -new_dir- -new_pos- -prev-visited-
Advance₂ ← ⊙(⊙(⊂:).)⊙+:×,⋕⨬(⊙RotL|⊙RotR)=@R°⊂°□

Part₂ ← (
  ⊙(0_1 0_0 [0_0]) Decode # Prepare inputs: list dir pos
  ∧Advance₂               # Advance until we run out
  ◌◌                      # Discard dir and final pos, leaving only visited lists
  ◫2                      # We're going to fill in the gaps between all pairs
  ≡(                      # For each pair
    /-.                   # Get delta and save for later
    ⊃(⊢⊚≠0|/+)            # How far and which direction
    ⨬(⊙0⇡|0⇡)             # Order the axis properly
    ?⊞⊂                   # Create all deltas
    +<0/+⊢.               # Subtraction without negatives offsets by 1, compensate for it
    ?⊙(¤⊢)                # Fish out start position
    □+                    # Add all deltas to start
  )
  ?/(⊂∩°□) # Make it one contiguous array
  ⊏⊢⊚¬◰.   # Get the first repeated element
  /+?      # Manhattan distance
)

↘¯1 &fras "input.txt"
# "R8, R4, R4, R8"
Part₂
$"Part two solution is: '_'" # IT IS NOT 17
