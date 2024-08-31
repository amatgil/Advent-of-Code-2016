# Commands:
# 'rect': AxB
Rect ← ⬚0↥ ↯⇌⊙1⊜⋕≠@x.°{∘}
# 'rotate column': 'x=A by B'
RotCol ← ⍜(⊡⊙⍉)(↻¯:)⊙:∩⋕↘2⊙◌°{⊙⊙∘}
# 'rotate row': 'x=A by B'
RotRow ← ⍜⊡(↻¯:)⊙:∩⋕↘2⊙◌°{⊙⊙∘}

Next ← (
  ≍"rect"°□°⊂⊜□≠@\s.°□
  ⨬(⨬(RotCol|RotRow) ≍"row"°□°⊂
  | Rect°¤))

# ======== TESTS ==========

# Commands by themselves
↯3_7 0
Rect{"3x2"}
RotCol{"x=1" "by" "1"}
RotRow{"y=0" "by" "4"}
RotCol {"x=1" "by" "1"}

⍤"Commands fail"≍[0_1_0_0_1_0_1 1_0_1_0_0_0_0 0_1_0_0_0_0_0]

# The 'Next' function
↯3_7 0
Next □"rect 3x2"
Next □"rotate column x=1 by 1"
Next □"rotate row y=0 by 4"
Next □"rotate column x=1 by 1"
⍤"Next fails"≍[0_1_0_0_1_0_1 1_0_1_0_0_0_0 0_1_0_0_0_0_0]

# =========== PART 1 =============
Part₁ ← /+/+∧(Next): ↯6_50 0

Part₁ ⊜□≠@\n.&fras "input.txt"
