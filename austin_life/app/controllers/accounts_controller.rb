class AccountsController < ApplicationController

  get '/accounts' do
    # 'accounts home'
    erb :'accounts/accounts'
  end

  # does not let a user create a blank account
  get '/accounts/new' do
    erb :'accounts/create_account'
  end

  # displays a single account
  # get '/accounts/:id' do
  #   erb :'accounts/show_account'
  # end

  # lets a user view account edit form if they are logged in
  # does not let a user edit a account not created by it self
  # get '/accounts/:id/edit' do
  #   erb :'accounts/edit_account'
  # end

  # does not let a user edit an account with blank content
  # patch '/accounts/:id' do
  # end

  # lets a user delete their own account if they are logged in
  # does not let a user delete a account they did not create
  # delete '/accounts/:id/delete' do
  #   redirect_to_accounts
  # end



end
