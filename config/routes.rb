Rails.application.routes.draw do
  resources :stores, param: :slug do
    resources :line_items
  end

  devise_for :staffs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
