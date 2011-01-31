Gitcukes::Application.routes.draw do
  match "update", :to => "features#update", :as => "update_feature"
  match "edit", :to => "features#edit", :as => "edit_feature"
  root :to => "features#index"
end
