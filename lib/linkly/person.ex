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

  # define changeset
  @doc """

  - in IEx -


    person = %Friends.Person{}

    changeset = Friends.Person.changeset(person, %{})

    Friends.Repo.insert(changeset)

  The changeset knows about the person, the changes and the validation rules that must be met
  before the data can be entered into the database.

  """
  def changeset(person, params \\ %{}) do
    person
    # Casting tells the changeset what parameters are allowed to be passed through in this changeset,
    # and anything not in the list will be ignored.
    |> Ecto.Changeset.cast(params, [:first_name, :last_name, :age])
    # Validate_required which says that, for this changeset, we expect first_name and last_name
    # to have values specified.
    |> Ecto.Changeset.validate_required([:first_name, :last_name])
  end





end
