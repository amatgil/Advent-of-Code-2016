Decode ← ⊜□↧⊃(≠@,)(≠@\s). # ⊜□:⍜¤(:/↧≠", ".) also works
RotR ← ⁅⍜(ℂ°⊟|×ⁿ×i ηe)
RotL ← ⁅⍜(ℂ°⊟|×ⁿ×i¯ηe)

# newdir newpos newvisited ? instructions dir pos visited
Advance ← ⊙(⊙(⊂:).)⊙+:×,⋕⨬(⊙RotL|⊙RotR)=@R°⊂°□

# ========== PART 1 ============

Part₁ ← (
  ⊙(0_1 0_0 [0_0]) Decode # Prepare inputs: list dir pos
  ∧Advance                # Advance until we run out
  /+⌵⊢⇌◌◌                 # Get distance (manhattan) from last position
)

# ========== PART 2 ============
Part₂ ← (
  ⊙(0_1 0_0 [0_0]) Decode # Prepare inputs: list dir pos
  ∧Advance                # Advance until we run out
  ◌◌                      # Discard dir and final pos, leaving only visited lists
  ◫2                      # We're going to fill in the gaps between all pairs
  ≡(                      # For each pair
    /-.                   # Get delta and save for later
    ⊃(⊢⊚≠0|/+)            # How far and which direction
    ⊙(⇡+<0.)              # Place the zero to the correct axis, making sure the negatives don't off-by-one 
    ⨬(⊙0|0)               # Order the axis properly, making sure to handle
    ⊞⊂                    # Create all deltas
    ⊙(¤⊢)                 # Fish out start position
    □+                    # Add all deltas to start
  )
  /(⊂∩°□) # Make it one contiguous array
  ⊏⊢⊚¬◰.  # Get the first repeated element
  /+      # Manhattan distance
)

# ====== TESTS =======
⍤"P1 test failed"=5 Part₁ "R2, L3"
⍤"P1 test failed"=2 Part₁ "R2, R2, R2"
⍤"P1 test failed"=12 Part₁ "R5, L5, R5, R3"
⍤"P2 test failed"=4 Part₂ "R8, R4, R4, R8"

# ======== RUNNING ========
# '291' with current input.txt
$"Part one solution is: '_'" Part₁ ↘¯1 &fras "input.txt"

# '159' with current input.txt
$"Part two solution is: '_'" Part₂ ↘¯1 &fras "input.txt"
