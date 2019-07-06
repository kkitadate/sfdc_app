class AccountsController < ActionController::API
  def index
    render :json => { accounts: Account.all }
  end
end