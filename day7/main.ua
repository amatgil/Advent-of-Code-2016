# Experimental!
HasTLS ← (
  ⊃(=@[⊢|⊜□↧⊃(≠@[|≠@]).)          # Split by hypernet
  ⨬(∘|⊂{"abcd"})                  # Assume we start outside of link, so pad with fake if it does
  ≡(/+≡(↧⊃(≍⇌.|¬/↧ ≡/≍ ◫2))◫4 °□) # Contains ABBA (but not AAAA)
  ◿2⇡⊸⧻                           # top is mask of "where would a 1 be illegal", next is where abbas are
  ⊃(/+↧|/+◌)                      # Any illegals | count them
  ⨬(∘|×0)>0                       # If any illegals, mul by 0
  >0                              # Only matters if there is any
)

# ======= TESTS =======
⍤"Oop"=1 HasTLS"abba[mnop]qrst"
⍤"Oop"=0 HasTLS"abcd[bddb]xyyx"
⍤"Oop"=0 HasTLS"aaaa[qwer]tyui"
⍤"Oop"=1 HasTLS"ioxxoj[asdfgh]zxcvbn"
# ====================

Part₁ ← °□/+⍚HasTLS⊜□≠@\n.
$"Part 1: '_'"Part₁ &fras "input.txt"

# HasSSL = (
#  ⊃(=@[⊢|⊜□↧⊃(≠@[|≠@]).)          # Split by hypernet
#  ⨬(∘|⊂{"abcd"})                  # Assume we start outside of link, so pad with fake if it does
#  ≡(
#    ) # Contains ABBA (but not AAAA)
#
# )

HasABA ← >0/+≡(↧↧⊃(=⊙◌°[⊙⊙∘]|⊙◌≠°[⊙⊙∘]|≍⇌.)) ◫3

⍤"Bad ABA" ≍1 HasABA "aba"
⍤"Bad ABA" ≍0 HasABA "baa"
⍤"Bad ABA" ≍0 HasABA "aaa"

{"zazbz" "bzb""cdb"}
# {"aba" "bab" "xyz"}
∵°□ ⍚(?⊸HasABA)
◿2⇡⊸⧻ # top is mask of "where would a 1 be illegal", next is where abbas are
¬>0/+◡↧
# >0/+.↧
# ⨬(∘|⊏⊚)?
