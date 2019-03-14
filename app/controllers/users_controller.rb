class UsersController < ApplicationController
  def index
    @users = User.all

    render("user_templates/index.html.erb")
  end

   def show
     @user = User.find(params.fetch("id_to_display"))

     render("user_templates/show.html.erb")
   end

#   def new_form
#     @photo = Photo.new

#     render("photo_templates/new_form.html.erb")
#   end

#   def create_row
#     @photo = Photo.new

#     @photo.caption = params.fetch("caption")
#     @photo.image = params.fetch("image")
#     @photo.user_id = params.fetch("user_id")

#     if @photo.valid?
#       @photo.save

#       redirect_back(:fallback_location => "/photos", :notice => "Photo created successfully.")
#     else
#       render("photo_templates/new_form_with_errors.html.erb")
#     end
#   end

#   def edit_form
#     @photo = Photo.find(params.fetch("prefill_with_id"))

#     render("photo_templates/edit_form.html.erb")
#   end

#   def update_row
#     @photo = Photo.find(params.fetch("id_to_modify"))

#     @photo.caption = params.fetch("caption")
#     @photo.image = params.fetch("image")
#     @photo.user_id = params.fetch("user_id")

#     if @photo.valid?
#       @photo.save

#       redirect_to("/photos/#{@photo.id}", :notice => "Photo updated successfully.")
#     else
#       render("photo_templates/edit_form_with_errors.html.erb")
#     end
#   end

#   def destroy_row
#     @photo = Photo.find(params.fetch("id_to_remove"))

#     @photo.destroy

#     redirect_to("/photos", :notice => "Photo deleted successfully.")
#   end

end
