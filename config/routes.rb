Rails.application.routes.draw do
resources :bloggers, except: :destroy
resources :destinations, except: :destroy
resources :posts, except: :destroy
end
