defmodule WeabanexWeb.Schema.Types.Root do
  use Absinthe.Schema.Notation

  alias Crudry.Middlewares.TranslateErrors
  alias WeabanexWeb.Resolvers.User, as: UserResolver
  alias WeabanexWeb.Resolvers.Training, as: TrainingResolver
  alias WeabanexWeb.Schema.Types.{User, Training}

  import_types User
  import_types Training
  import_types WeabanexWeb.Schema.Types.Custom.UUID4

  object :root_query do
    field :get_user, type: :user do
      arg :id, non_null(:uuid4)

      resolve &UserResolver.get/2
      middleware TranslateErrors
    end
  end

  object :root_mutation do
    field :create_user, type: :user do
      arg :input, non_null(:create_user_input)

      resolve &UserResolver.create/2
      middleware TranslateErrors
    end

    field :create_trainig, type: :training do
      arg :input, non_null(:create_training_input)

      resolve &TrainingResolver.create/2
      middleware TranslateErrors
    end
  end
end
