class ClassroomsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @classrooms = current_user.classrooms.all
    @classroom = Classroom.new
    25.times { @classroom.students.build }
    @classroom_active = 'active'
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @classrooms }
    end
  end

  def show
    @classroom = Classroom.find(params[:id])
    @students = @classroom.students.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @classroom }
    end
  end

  def new
    @classroom = Classroom.new
    25.times { @classroom.students.build }

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @classroom }
    end
  end

  def edit
    @classroom = Classroom.find(params[:id])
  end

  def create
    @classroom = current_user.classrooms.build(params[:classroom])

    respond_to do |format|
      if @classroom.save
        format.html { redirect_to @classroom, notice: 'Classroom was successfully created.' }
        format.json { render json: @classroom, status: :created, location: @classroom }
      else
        format.html { render action: "new" }
        format.json { render json: @classroom.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @classroom = Classroom.find(params[:id])

    respond_to do |format|
      if @classroom.update_attributes(params[:classroom])
        format.html { redirect_to @classroom, notice: 'Classroom was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @classroom.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @classroom = Classroom.find(params[:id])
    @classroom.destroy

    respond_to do |format|
      format.html { redirect_to classrooms_url }
      format.json { head :no_content }
    end
  end
end
