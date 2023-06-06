class AppointmentsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_appointment, except: [:index, :new, :create]

  def index
    @appointments = user_signed_in? ? Appointment.all : Appointment.to_be_scheduled
  end

  def show
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

  def edit
  end

  def update
    if @appointment.update(appointment_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @appointment.destroy
    redirect_to root_path
  end

  private

  def set_appointment
    @appointment = user_signed_in? ? Appointment.find(params[:id]) : Appointment.to_be_scheduled.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end

  def appointment_params
    params.require(:appointment).permit(:name, :date, :phone, :description, :scheduled_for)
  end

  def authenticate_user!
    redirect_to new_user_session_path, alert: "You must sign in to continue" unless user_signed_in?
  end
end