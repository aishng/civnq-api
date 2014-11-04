CivnqApi::Application.routes.draw do
  resources :unconfirmed_matches
  resources :sessions
  post "/auth/open_id/callback"     => "auth#steam"
end

