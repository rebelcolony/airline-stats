class AirlinesController < ApplicationController
  before_filter :authorize, :except => :index

  def index
    @airlines = Airline.find(:all, :conditions => ["name LIKE ?", "%#{params[:search]}%"], :order => 'name')
  end

  def show
    @airline = Airline.find(params[:id])
  end

  def new
    @airline = Airline.new
  end


  def edit
    @airline = Airline.find(params[:id])
  end


  def create
    @airline = Airline.create(params[:airline])
      if @airline.save
        flash[:notice] = 'Airline was successfully created.'
        redirect_to(@airline)  
      else
        render :action => "new"
      end
  end


  def update
    @airline = Airline.find(params[:id])
      if @airline.update_attributes(params[:airline])
        flash[:notice] = 'Airline was successfully updated.'
        redirect_to(@airline)
      else
        render :action => "edit"
      end
  end


  def destroy
    @airline = Airline.find(params[:id])
    @airline.destroy
    redirect_to(airlines_url)
  end
end
