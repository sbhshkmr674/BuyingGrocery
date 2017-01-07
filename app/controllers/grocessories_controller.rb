class GrocessoriesController < ApplicationController
  def index
  	@grocessories=Grocessori.all
  end

  def new 
  	@grocessori=Grocessori.new
  end

  def create
  	@grocessori=Grocessori.create(grocessori_params)

  	if @grocessori.save
  		flash[:success]="Hello ! You created Grocessori"
  		redirect_to root_path
  	else
  		flash[:alert]="Sorry something going Wrong"

  		render new_grocessories_path
  		end
  	end

  	def edit
  		@grocessori=Grocessori.find(params[:id])
  	end

  	def show
  		@grocessori=Grocessori.find(params[:id])
  	end

  	private

  	def grocessori_params
  		params.require(:grocessori).permit(:fruit, :vegetable)
  	end
end
