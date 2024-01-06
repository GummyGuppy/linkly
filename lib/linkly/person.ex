defmodule Linkly.Person do
  use Ecto.Schema

  @doc """
    This defines the schema from the database that this schema maps to.
    In this case, we're telling Ecto that the Friends.Person schema maps to the people table
    in the database, and the first_name, last_name and age fields in that table.
    The second argument passed to field tells Ecto how we want the information from the database
    to be represented in our schema.
  """
  schema "people" do
    field :first_name, :string
    field :last_name, :string
    field :age, :integer
  end
end
