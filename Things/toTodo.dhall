let Prelude = ../Prelude.dhall

let toChecklistItems
  : List Text → List ./Schema/checklistItem.dhall
  = Prelude.List.map Text ./Schema/checklistItem.dhall ./toChecklistItem.dhall

let toTodo
    : ./simpleTodo.dhall -> ./Schema/todo.dhall
    = λ(todo : ./simpleTodo.dhall) →

        {
          type = "to-do",
          attributes = {
            title = todo.title,
            notes = todo.notes,

            list = todo.list,
            tags = ../listToOptional.dhall Text todo.tags,

            checklist-items = ../listToOptional.dhall ./Schema/checklistItem.dhall (toChecklistItems todo.checklist)
          }
        }

in toTodo
