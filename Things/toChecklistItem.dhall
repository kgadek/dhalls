let toChecklistItem
  : Text -> ./Schema/checklistItem.dhall
  = λ(title : Text) ->

      {
        type = "checklist-item",
        attributes = {
          title = title
        }
      }

in toChecklistItem
