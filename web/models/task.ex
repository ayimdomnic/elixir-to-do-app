defmodule Web.Task do
  use Web.Web, :model

  schema "tasks" do
    field :name, :string
    field :description, :string
    field :status, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :description, :status])
    |> validate_required([:name, :description, :status])
  end
end
