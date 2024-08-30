# Takes "bbb-aaaaa-z-y-x-123[abxyz] and returns {validness ID}
IsValid ← (
  ∩≡°□°⊟⊜□↧⊃(≠@[|≠@]).    # Split letters from checksum
  ▽⊙:¬⟜▽↧⊃(≥@0|≤@9)..     # Letters ID checksum
  ⊏⍏.▽↧⊃(≥@a|≤@z).        # Filter out dashes and sort
  ⊏⍖⊃(≡/-◫2⊂⊃(⊚|⧻)◰|⊏⊚◰.) # Sort by frequency
  ≍⊙:↙5                   # Does checksum match?
)

Decrypt ← ⍚(+@a◿26+-@a:)◿26⍜⇌(⋕°□°⊂)⊜□≠@-.

⍤":3"≍{1 "123"}⊟∩□ IsValid "bbb-aaaaa-z-y-x-123[abxyz]"
⍤":3"≍{1 "987"}⊟∩□ IsValid "a-b-c-d-e-f-g-h-987[abcde]"
⍤":3"≍{1 "404"}⊟∩□ IsValid "not-a-real-room-404[oarel]"
⍤":3"≍{0 "200"}⊟∩□ IsValid "totally-real-room-200[decoy]"
⍤":3"≍{"very" "encrypted" "name"} Decrypt "qzmt-zixmtkozy-ivhz-343"

Part₁ ← /+⋕▽≡(IsValid°□)
Part₂ ← (
  ⊃(⊙◌≡(IsValid°□)               # Valid ones
  | ⍚(Decrypt °□⊢⊜□↧⊃(≠@[|≠@]).) # Their decrypted names
  | ⍚(°□⊢↘1⇌⊜□↧↧⊃(≠@-|≠@[|≠@]).)
  )                                       # Their IDs
  ∩▽⊙:.                                   # Filter fake from both decypted and IDS
  ⊚≡(≍{"northpole" "object" "storage"}°□) # Index (of valids) of goal
  ⋕°□⊡                                    # Get final value and make it pretty
)

$"Part 1: '_'; Part2: '_'" ⊃(Part₁|Part₂) ↘¯1 ⊜□≠@\n.&fras "input.txt"
