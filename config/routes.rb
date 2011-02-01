Gitcukes::Application.routes.draw do
  match "commit", :to => "features#commit", :as => "commit_feature", :via => :post
  match "update", :to => "features#update", :as => "update_feature", :via => :post
  match "edit", :to => "features#edit", :as => "edit_feature"
  root :to => "features#index"
end
