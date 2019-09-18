module Api
	module V1
		class CharactersController < ApplicationController
			def index
				characters = Character.all
				render json: { status: 'SUCCESS', message: 'Loaded characters', data: characters}, status: :ok
			end

			def show
				characters = Character.find(params[:id])
				render json: { status: 'SUCCESS', message: 'Loaded character', data: characters}, status: :ok
			end

			def create
				character = Character.new(character_params)

				if character.save
					render json: { status: 'SUCCESS', message: 'Saved character', data: character}, status: :ok
				else
					render json: { status: 'ERROR', message: 'Character not saved', data: character.errors}, status: :unprocessable_entity
				end
		   	end

		   	def destroy
				character = Character.find(params[:id])
				character.destroy
				render json: { status: 'SUCCESS', message: 'Deleted character', data: character}, status: :ok
			end

			def update
				character = Character.find(params[:id])
				if character.update_attributes(character_params)
					render json: { status: 'SUCCESS', message: 'Updated character', data: character}, status: :ok
				else
					render json: { status: 'ERROR', message: 'Character not updated', data: character.errors}, status: :unprocessable_entity
				end
			end

		   	private

		   	def character_params
		   		params.permit(:alias, :real_name, :debut, :status, :powers, :bio)
		   	end
		end
	end
end