class Api::UniversitiesController < ApplicationController

  def index
    @universities = University.all
     render :index
  end
   def show
    @university = University.find_by(id: params[:id])
    render :show
   end

  def create
     @university = University.new(name: params[:name])
     if @university.save
     render :show
     else
      render json: {message: @university.errors.full_messages.join(", ")}
    end
  end

   def update
     @university = University.find_by(id: params[:id])
     @university.update(name: params[:name])
     render :show
   end

   def destroy
    @university = University.find_by(id: params[:id])
    @university.destroy
    @universities = University.all
    render :index
   end
end
