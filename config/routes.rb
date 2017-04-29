Rails.application.routes.draw do
get("/create_photo",{:controller=>"photos",:action=>"create_row"})
#UPDATE
get("/photos/:the_id/edit",{:controller=>"photos",:action=>"edit_form"})
get("/update_photos/:the_id",{:controller=>"photos",:action=>"update_row"})

#CREATE
get("/photos/new",{:controller=>"photos",:action=>"new_form"})

#READ
  get("/photos",{:controller=>"photos",:action=>"index"})

get("/photos/:the_id_number",{:controller=>"photos",:action=>"show"})

get("/delete_photo/:the_id", { :controller => "photos", :action => "destroy" })


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


#DELETE
