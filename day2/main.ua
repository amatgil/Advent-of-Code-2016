# ======== PART 1 ==========

# I/O example: "ULL" (0+0i) -> 1
# Adv ←

# get @R Dirs
# ⍢(Adv|≠0⧻)?
# "ULD" ℂ0 0

# I/O: "ULL" ℂ0 ¯1 -> ¯1+i (8 ULL -> 4)
Step ← (
  ⊃(×i=@U|×¯i=@D|¯=@L|=@R)°□ # Separate out
  ⊂:+++                      # Join all together
  /(⨬(+)(⊙◌)>√2⌵+,,)         # Where do we end up?
)

# Step "ULL" ℂ0 ¯1
# \(Step?)?⊜□≠@\n.Input ℂ0 0

# In complex form, not yet turned into numbers
# (Todo, make Input a parameter)
F ← ⇌◌◌⍢(⊙⟜⊂:Step ⊙:°⊂|≠0⧻) ⊜□≠@\n. :⊙: ℂ0 0 []

Solve ← ⋕♭∵°⋕⊡≡(⊂°ℂ)+ℂ1 1 F :⇌[1_2_3 4_5_6 7_8_9]

$ ULL
$ RRDDD
$ LURDL
$ UUUUD
⍤":3" =1985 Solve

$"Part 1: '_'" Solve ↘¯1&fras "input.txt"
