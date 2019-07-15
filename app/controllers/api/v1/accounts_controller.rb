module Api::V1
  class AccountsController < ActionController::API
    def index
      render :json => { accounts: Account.all }
    end

    def show
      render :json => { account: Account.find(params[:id])}
    end

    def edit
      
    end
  end
end