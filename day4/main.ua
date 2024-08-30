IsValid ← (
  ∩≡°□°⊟⊜□↧⊃(≠@[|≠@]).
  ▽⊙:¬⟜▽↧⊃(≥@0|≤@9).. # Now: letters ID checksum
  ⊏⍏.▽↧⊃(≥@a|≤@z).
  ⊏⍖⊃(≡/-◫2⊂⊃(⊚|⧻)◰|⊏⊚◰.)
  ≍⊙:↙5)

⍤":3"≍{1 "123"}⊟∩□ IsValid "bbb-aaaaa-z-y-x-123[abxyz]"
⍤":3"≍{1 "987"}⊟∩□ IsValid "a-b-c-d-e-f-g-h-987[abcde]"
⍤":3"≍{1 "404"}⊟∩□ IsValid "not-a-real-room-404[oarel]"
⍤":3"≍{0 "200"}⊟∩□ IsValid "totally-real-room-200[decoy]"

Part₁ ← /+⋕▽≡(IsValid°□)
# $"Part 1 sol: _"Part₁ ↘¯1 ⊜□≠@\n.&fras "input.txt"

Decrypt ← ⍚(+@a◿26+-@a:)◿26⍜⇌(⋕°□°⊂)⊜□≠@-.

⍤":3"≍{"very" "encrypted" "name"} Decrypt "qzmt-zixmtkozy-ivhz-343"

# "bbb-aaaaa-z-y-x-123[abxyz]"

# F ← Decrypt? °□⊢?⊜□?↧⊃(≠@[|≠@]).?
# ⊃(⊙◌≡(IsValid°□)
# | ⍚(Decrypt ⊢⊜□?↧⊃(≠@[|≠@])?)?
# )? ↘¯1 ⊜□≠@\n.&fras "input.txt"
#
# ⍚F ↘¯1 ⊜□≠@\n. &fras "input.txt"

⊃(⊙◌≡(IsValid°□)
| ⍚(Decrypt? °□⊢?⊜□?↧⊃(≠@[|≠@]).)
)? ↘¯1 ⊜□≠@\n.&fras "input.txt"
▽
