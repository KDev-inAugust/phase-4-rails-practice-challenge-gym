class ClientsController < ApplicationController
    
    def show
        client=Client.find_by(id:params[:id])
        if client
        render json: client
        else
            render json: {status: ["can't find that client"]}, status: :unprocessable_entity
        end
    end
end
