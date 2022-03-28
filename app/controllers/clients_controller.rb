class ClientsController < ApplicationController

  # errors.full_messages is for troubleshooting and will not be included in production

  def index
    clients = Client.order(:last_name)
    render json: clients
  end

  def retrieve_clients
    Client.order(:last_name)
  end

  def create
    client = Client.new(client_params)
    if client.save
      clients = retrieve_clients
      render json: { message: 'Client Saved!', clients: clients }
    else
      render json: { message: client.errors.full_messages }
    end
  end

  def update
    client = Client.find_by_id(params[:id])
    if client.update(client_params)
      clients = retrieve_clients
      render json: { message: 'Client updated', clients: clients }
    else
      render json: { message: 'Client not updated', errors: client.errors.full_messages }
    end
  end

  def destroy
    client = Client.find_by_id(params[:id])
    if !client
      render json: { message: 'Client not found', errors: client.errors.full_messages }
    else
      client.delete
      clients = retrieve_clients
      render json: { message: 'Client deleted', clients: clients }
    end
  end

  def client_params
    params.permit(:first_name, :last_name, :email, :stage, :phone, :company, :probability)
  end

end
