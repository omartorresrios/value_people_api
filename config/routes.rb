Rails.application.routes.draw do
  scope '/api' do
    namespace :users do
      post 'signup' => 'registrations#create'
      post 'signin' => 'sessions#create'
    end

    get 'all_interests' => 'interest#all_interests'
    get 'all_professions' => 'profession#all_professions'
  end
end
