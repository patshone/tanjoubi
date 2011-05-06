class PeopleController < ApplicationController
  def index
    @people = Person.all
  end
  
  def new
    @person = Person.new
  end
  
  def create
    @person = Person.new(params[:person]) 
    @person.save flash[:notice] = "Person has been created." 
    redirect_to @person
  end
      
  def show
    @person = Person.find(params[:id])
  end
end
