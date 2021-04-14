{
  type       : Text,
  attributes : {
    list            : Text,
    title           : Text,
    notes           : Optional Text,
    tags            : Optional (List Text),
    checklist-items : Optional (List ./checklistItem.dhall)
  }
}
