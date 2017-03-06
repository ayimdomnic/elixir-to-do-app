defmodule Web.Blog do
  use Web.Web, :model

  schema "blogs" do
    field :title, :string
    field :slug, :string
    field :content, :string
    field :image, :string
    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :slug ,:content])
    |> validate_required([:title, :slug, :content])
  end
end
