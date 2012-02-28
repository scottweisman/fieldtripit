class TripsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @trips = current_user.trips.all
    @trip = Trip.new
    @trip_active = 'active'
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trips }
    end
  end

  def show
    @trip = Trip.find(params[:id])
    @classrooms = @trip.classrooms
    @students = @trip.students

    @permission = Permission.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @trip }
    end
  end

  def new
    @trip = Trip.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @trip }
    end
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def create
    @trip = current_user.trips.build(params[:trip])
    @classrooms = current_user.classrooms.all

    respond_to do |format|
      if @trip.save && @classrooms.blank?
        format.html { redirect_to new_classroom_path, notice: 'Trip was successfully created.' }
      elsif @trip.save && @classrooms.any?
        format.html { redirect_to @trip, notice: 'Trip was successfully created.' }
      else
        format.html { render action: "new" }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @trip = Trip.find(params[:id])

    respond_to do |format|
      if @trip.update_attributes(params[:trip])
        format.html { redirect_to @trip, notice: 'Trip was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy

    respond_to do |format|
      format.html { redirect_to trips_url }
      format.json { head :no_content }
    end
  end
  
  def deliver
    @trip = Trip.find(params[:id])
    @students = @trip.students.all
    @students.each do |student|
      PermissionMailer.permission_slip(student).deliver
    end
  end
end
