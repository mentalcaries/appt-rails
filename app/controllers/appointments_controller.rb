class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to @appointment
    else
      render :new, status: :unprocessable_entity
    end
  end

  def appointment_params
    params.require(:appointment).permit(:name, :date, :phone, :description)
  end

end