class CoursesController < ApplicationController
  
  before_filter :ensure_login, :only => [:new, :create, :update, :destroy]
  
  def index
     @courses = Course.find(:all)
  end
  
  def list
    @courses = Course.find(:all)
  end
  
  def show
    @course = Course.find(params[:id])
  end
  
  def new
    @course = Course.new
  end
  
  def edit
    @course = Course.find(params[:id])
  end
  
  def create
    @course = Course.new(params[:course])

    if @course.save
      flash[:notice] = 'Course created successfully'
      redirect_to(@course)
    else
      render :action => "new"
    end
  end
  
  def update
    @course = Course.find(params[:id])
    
    if @course.update_attributes(params[:course])
      flash[:notice] = 'Course successfully updated'
      redirect_to(@course)
    else
      render :action => "edit"
    end
  end
  
  def destroy 
    @course = Course.find(params[:id])
    @course.destroy
    
    redirect_to(courses_url)
  end
end
