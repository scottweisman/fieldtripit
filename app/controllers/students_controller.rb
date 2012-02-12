class StudentsController < ApplicationController
  before_filter :find_classroom

  def index
    @students = @classroom.students.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @students }
    end
  end

  def show
    @student = Student.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @student }
    end
  end

  def new
    @student = Student.new
    3.times { @classroom.students.build }
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @student }
    end
  end

  def edit
    @student = @classroom.students.find(params[:id])
  end

  def create
    @student = @classroom.students.build(params[:student])

    respond_to do |format|
      if @student.save
        format.html { redirect_to classroom_student_path, notice: 'Student was successfully created.' }
        format.json { render json: @student, status: :created, location: @student }
      else
        format.html { render action: "new" }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @student = @classroom.students.find(params[:id])

    respond_to do |format|
      if @student.update_attributes(params[:student])
        format.html { redirect_to classroom_student_path, notice: 'Student was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    respond_to do |format|
      format.html { redirect_to classroom_path(@classroom) }
      format.json { head :no_content }
    end
  end
  
  protected
    def find_classroom
      @classroom = Classroom.find(params[:classroom_id])
    end
end
