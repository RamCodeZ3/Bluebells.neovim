; extends

; The stock Python query assigns @attribute to both parts of a decorator.
; Give the sigil its own capture so it can remain white while the name is blue.
(decorator
  "@" @punctuation.decorator)

; Lowercase imported symbols (for example, dataclass) otherwise remain plain
; variables. Scope the override to from-import names instead of recoloring all
; Python variables.
(import_from_statement
  name: (dotted_name
    (identifier) @module))
