Rails.application.routes.draw do
  devise_for :users
  root 'application#start'

  if Rails.env.development?
    authenticate :user do
      mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
    end
  end

  post "/graphql", to: "graphql#execute"
end
