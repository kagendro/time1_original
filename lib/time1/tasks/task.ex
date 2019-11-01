defmodule Time1.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tasks" do
    field :hours, :integer
    field :name, :string
    field :worker_id, :id

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:name, :hours, :worker_id])
    |> validate_required([:name, :hours, :worker_id])
  end
end
