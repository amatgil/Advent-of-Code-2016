# Experimental!
# (chunks is experimental but also deprecated in the newest dev)

Parse ← (
  ▽⊸(≠@\n)  # Remove all newlines
  ⊜⋕⊸(≠@\s) # Parse all numbers
  ↯∞_3      # Reshape (flat -> triplets)
)

Part₁ ← (
  Parse
  /+≡(< + °[⊙⊙∘] ⊏⍏.) # Count valid
)

Part₂ ← (
  Parse
  ↯∞_3 ⑄3_3 ⍉         # This will be `◫¤3_3` soon
  /+≡(< + °[⊙⊙∘] ⊏⍏.) # Count valid
)

$"Part 1 sol: _" Part₁ &fras "input.txt"
$"Part 2 sol: _" Part₂ &fras "input.txt"
