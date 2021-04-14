let listToOptional
    : ∀(a : Type) → List a → Optional (List a)
    = λ(a : Type) →
      λ(xs : List a) →

        if (./Prelude.dhall).List.null a xs
          then None (List a)
          else Some xs

in listToOptional
