class ClientsController < ApplicationController

  # errors.full_messages is for troubleshooting and will not be included in production

  def index
    clients = Client.order(:last_name)
    render json: clients
  end

  def create
    client = Client.new(client_params)
    if client.save
      render json: { response: 'Client Saved!' }
    else
      render json: { response: 'Client not saved!', status: 500  }
    end
  end

  def update
    client = Client.find_by_id(params[:id])
    if client.update(client_params)
      render json: { response: 'Client updated' }
    else
      render json: { response: 'Client not found', status: 404 }
    end
  end

  def destroy
    client = Client.find_by_id(params[:id])
    if !client
      render json: { response: 'Client not found', status: 404 }
    else
      client.delete
      render json: { response: 'Client deleted' }
    end
  end

  def client_params
    params.permit(:first_name, :last_name, :email, :stage, :phone, :company, :probability)
  end

end
