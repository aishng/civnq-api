CivnqApi::Application.routes.draw do
  resources :unconfirmed_matches, only: [:index, :create] do
    member do
      post :reject
    end
  end
  resources :rejected_matches
  resources :sessions
  post "/auth/open_id/callback"     => "auth#steam"
end

