CivnqApi::Application.routes.draw do
  resources :unconfirmed_matches
  post "/auth/open_id/callback"     => "auth#steam"
end

