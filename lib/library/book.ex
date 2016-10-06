defmodule Library.Book do
  defstruct [:title]

  @typedoc """
  A custom type that holds the properties of a book
  """
  @type t :: %Library.Book{title: String.t}
end
