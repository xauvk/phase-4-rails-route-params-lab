class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show
    render json: Student.all.find(params[:id])
  end

  def match
    render json: Student.all.where(first_name: params[:key1])
  end

end
