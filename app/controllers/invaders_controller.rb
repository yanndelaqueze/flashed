class InvadersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_invader, only: %i[show edit update destroy]

  def index
    @invaders = Invader.all.order(name: :asc)
    if params[:query].present? || params[:status].present?
      sql_subquery = <<~SQL
        (invaders.name ILIKE :query
        OR cities.name ILIKE :query)
      SQL
      @invaders = @invaders.joins(:city).where(sql_subquery, query: "%#{params[:query]}%").where(status: params[:status]).order(name: :asc)
    end
  end

  def show
    @city = @invader.city
    authorize @invader
  end

  def new
    @city = City.find(params[:city_id])
    @invader = Invader.new
    authorize @invader
  end

  def create
    @city = City.find(params[:city_id])
    @invader = Invader.new(invader_params)
    @invader.city = @city
    authorize @invader
    if @invader.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @invader
  end

  def update
    authorize @invader
    if @invader.update(invader_params)
      redirect_to invader_path(@invader), notice: 'Invader was successfully updated'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_invader
    @invader = Invader.find(params[:id])
  end

  def invader_params
    params.required(:invader).permit(:name, :status, :address, :city)
  end
end
