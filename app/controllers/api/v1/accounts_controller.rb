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

    def update
      acc = Account.find(params[:id])
      if acc.update(name: params[:params][:name])
        render :json => { status: 'OK' }
      else
        render :json => { status: 'ERROR' }
      end
    end
  end
end