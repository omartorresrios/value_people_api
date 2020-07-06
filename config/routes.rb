Rails.application.routes.draw do
  scope '/api' do
    get 'all_interests' => 'interest#all_interests'
  end
end
