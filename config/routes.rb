Rails.application.routes.draw do
  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  # Routes for the Cofounding resource:
  # CREATE
  get "/cofoundings/new", :controller => "cofoundings", :action => "new"
  post "/create_cofounding", :controller => "cofoundings", :action => "create"

  # READ
  get "/cofoundings", :controller => "cofoundings", :action => "index"
  get "/cofoundings/:id", :controller => "cofoundings", :action => "show"

  # UPDATE
  get "/cofoundings/:id/edit", :controller => "cofoundings", :action => "edit"
  post "/update_cofounding/:id", :controller => "cofoundings", :action => "update"

  # DELETE
  get "/delete_cofounding/:id", :controller => "cofoundings", :action => "destroy"
  #------------------------------


  # Routes for the Startup resource:
  # CREATE
  root "startups#index"
  get "/startups/new", :controller => "startups", :action => "new"
  post "/create_startup", :controller => "startups", :action => "create"

  # READ
  get "/startups", :controller => "startups", :action => "index"
  get "/startups/:id", :controller => "startups", :action => "show"

  # UPDATE
  get "/startups/:id/edit", :controller => "startups", :action => "edit"
  post "/update_startup/:id", :controller => "startups", :action => "update"

  # DELETE
  get "/delete_startup/:id", :controller => "startups", :action => "destroy"
  #------------------------------

  # Routes for the Startup resource:
  # CREATE
  get "/startups/new", :controller => "startups", :action => "new"
  post "/create_startup", :controller => "startups", :action => "create"

  # READ
root 'startups#index'
  get "/startups", :controller => "startups", :action => "index"
  get "/startups/:id", :controller => "startups", :action => "show"

  # UPDATE
  get "/startups/:id/edit", :controller => "startups", :action => "edit"
  post "/update_startup/:id", :controller => "startups", :action => "update"

  # DELETE
  get "/delete_startup/:id", :controller => "startups", :action => "destroy"
  #------------------------------

  # Routes for the Venturefund resource:
  # CREATE
  get "/venturefunds/new", :controller => "venturefunds", :action => "new"
  post "/create_venturefund", :controller => "venturefunds", :action => "create"

  # READ
  get "/venturefunds", :controller => "venturefunds", :action => "index"
  get "/venturefunds/:id", :controller => "venturefunds", :action => "show"

  # UPDATE
  get "/venturefunds/:id/edit", :controller => "venturefunds", :action => "edit"
  post "/update_venturefund/:id", :controller => "venturefunds", :action => "update"

  # DELETE
  get "/delete_venturefund/:id", :controller => "venturefunds", :action => "destroy"

  devise_for :founders
  devise_for :partners
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
