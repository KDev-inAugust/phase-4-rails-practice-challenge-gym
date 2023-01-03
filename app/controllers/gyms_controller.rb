class GymsController < ApplicationController
    def index
        gyms=Gym.all
        render json: gyms
    end

    def show
        gym=Gym.find_by(id: params[:id])
        if gym
            render json: gym
        else
            render json: {error: ["we can't find that gym in our database"]}, status: :unprocessable_entity
        end
    end

    def destroy
        gym=Gym.find_by(id:params[:id])
        if gym
            gym.destroy
            head :no_content, status: :continue
        else
            render json: {error: ["Gym not found"]}, status: :unprocessable_entity
        end
    end
end
