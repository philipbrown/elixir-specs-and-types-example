# Library

**Specs and Types example repository**

```elixir
alias Library.{Bookshelf, Book}

# Add a book
Bookshelf.add(%Book{title: "Patterns of Enterprise Application Architecture"})

# Count the books
Bookshelf.count

# Return all of the books
Bookshelf.all
```
