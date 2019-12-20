class AssignmentsController < ApplicationController
  def index
    @assignment = Assignment.first(7)
  end

  def show
    @assignment = Assignment.find(params[:id])
  end

  def new
    @assignment = Assignment.new
  end

  def create
    @assignment = Assignment.new(params[:assignment])    
    @assignment.save
  end

  def delete
    @assignment = Assignment.find(params[:id])
  end

  def destroy
    @assignment = Assignment.find(params[:id])
    @assignment.destroy
  end

  private
  def assignment_params    
    params.require(:assignment).permit(:name, :due_time, :description)
  end
end
