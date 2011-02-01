Gitcukes::Application.routes.draw do
  match "push", :to => "features#push", :as => "push_features", :via => :post
  match "update", :to => "features#update", :as => "update_feature", :via => :post
  match "edit", :to => "features#edit", :as => "edit_feature"
  match "show", :to => "features#show", :as => "show_feature"
  root :to => "features#index"
end
