Part₁ ← (
  ⍉⊜∘≠@\n.                 # Parse
  ≡(⊃(≡/-◫2⊂:⧻⟜⊚◰⊏⍏.|⊏⍏.◴) # Get fork(nº occurences|sorted deduped)
    ⊏⊢⍖                    # Sort by it 
  ))

Part₂ ← (
  ⍉⊜∘≠@\n.                 # Parse
  ≡(⊃(≡/-◫2⊂:⧻⟜⊚◰⊏⍏.|⊏⍏.◴) # Get fork(nº occurences|sorted deduped)
    ⊏⊢⍏                    # Sort by it
  ))

"eedadn\ndrvtee\neandsr\nraavrd\natevrs\ntsrnev\nsdttsa\nrasrtv\nnssdts\nntnada\nsvetve\ntesnvt\nvntsnd\nvrdear\ndvrsen\nenarar\n"
⊃(⍤"P1 wrong"≍"easter"Part₁↘¯1|⍤"P2 wrong"≍"advent"Part₂↘¯1)

↘¯1&fras"input.txt"
:⊃($"P1: '_'" Part₁|$"P2: '_'"Part₂)
