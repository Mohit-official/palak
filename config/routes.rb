Rails.application.routes.draw do
  
 

  devise_for :admin_users, ActiveAdmin::Devise.config
  root 'home#index'


  # devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  

      devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
    


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
    resources :main_categories 
     
     


     resources :products


     	
     

end
