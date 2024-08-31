Check ← (
  ⊃(=@[⊢|⊜□↧⊃(≠@[|≠@]).)          # Split by hypernet
  ⨬(∘|⊂{"abcd"})                  # Assume we start outside of link, so pad with fake if it does
  ≡(/+≡(↧⊃(≍⇌.|¬/↧ ≡/≍ ◫2))◫4 °□) # Contains ABBA (but not AAAA)
  ◿2⇡⊸⧻                           # top is mask of "where would a 1 be illegal", next is where abbas are
  ⊃(/+↧|/+◌)                      # Any illegals | count them
  ⨬(∘|×0)>0                       # If any illegals, mul by 0
  >0                              # Only matters if there is any
)

# ======= TESTS =======
⍤"Oop"=1 Check"abba[mnop]qrst"
⍤"Oop"=0 Check"abcd[bddb]xyyx"
⍤"Oop"=0 Check"aaaa[qwer]tyui"
⍤"Oop"=1 Check"ioxxoj[asdfgh]zxcvbn"
# ====================

Part₁ ← °□/+⍚Check⊜□≠@\n.
$"Part 1: '_'"Part₁ &fras "input.txt"
