defmodule Library.Bookshelf do
  use GenServer

  def start_link do
    GenServer.start_link(__MODULE__, :ok, name: __MODULE__)
  end

  def init(:ok) do
    {:ok, []}
  end

  @spec add(String.t) :: :ok
  def add(book) do
    GenServer.call(__MODULE__, {:add, book})
  end

  @spec count :: integer
  def count do
    GenServer.call(__MODULE__, {:count})
  end

  @spec all :: list(String.t)
  def all do
    GenServer.call(__MODULE__, {:all})
  end

  def handle_call({:add, book}, _from, books) do
    {:reply, :ok, books ++ [book]}
  end

  def handle_call({:count}, _from, books) do
    {:reply, length(books), books}
  end

  def handle_call({:all}, _from, books) do
    {:reply, books, books}
  end
end
