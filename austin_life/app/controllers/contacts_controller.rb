class ContactsController < ApplicationController

  get '/contacts' do
    # 'contacts home'
    erb :'contacts/contacts'
  end

  # does not let a user create a blank contact
  get '/contacts/new' do
    erb :'contacts/create_contact'
  end

  # displays a single contact
  # get '/contacts/:id' do
  #   erb :'contacts/show_contact'
  # end

  # lets a user view contact edit form if they are logged in
  # does not let a user edit a contact not created by it self
  # get '/contacts/:id/edit' do
  #   erb :'contacts/edit_contact'
  # end

  # does not let a user edit an contact with blank content
  # patch '/contacts/:id' do
  # end

  # lets a user delete their own contact if they are logged in
  # does not let a user delete a contact they did not create
  # delete '/contacts/:id/delete' do
  #   redirect_to_contacts
  # end



end
