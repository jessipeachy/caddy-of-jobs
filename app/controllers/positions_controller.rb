class PositionsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_position, only: [:show, :edit, :update, :destroy]
  # GET /positions
  # GET /positions.json
  def index
    @positions = current_user.positions.all
  end

  # GET /positions/1
  # GET /positions/1.json
  def show
  end

  # GET /positions/new
  def new
    @position = Position.new
  end

  # GET /positions/1/edit
  def edit
  end

  # POST /positions
  # POST /positions.json
  def create
    @position = Position.new(position_params)

    respond_to do |format|
      if @position.save
        format.html { redirect_to @position, notice: 'Position was successfully created.' }
        format.json { render :show, status: :created, location: @position }
      else
        format.html { render :new }
        format.json { render json: @position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /positions/1
  # PATCH/PUT /positions/1.json
  def update
    respond_to do |format|
      if @position.update(position_params)
        format.html { redirect_to @position, notice: 'Position was successfully updated.' }
        format.json { render :show, status: :ok, location: @position }
      else
        format.html { render :edit }
        format.json { render json: @position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /positions/1
  # DELETE /positions/1.json
  def destroy
    @position.destroy
    respond_to do |format|
      format.html { redirect_to positions_url, notice: 'Position was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_position
      @position = Position.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def position_params
      params.require(:position).permit(:id, :user_id, :company_name, :position_name, :position_description_url, :application_submitted, :cover_letter_submitted, :glassdoor_review, :notes, :date_application_submitted, :response_received, :status, :staffing_agency_name, :staffing_agency_phone, :staffing_agency_url, :staffing_agency_fax, :staffing_agency_address, :staffing_agency_point_of_contact, :staffing_agency_notes, :company_url, :company_phone, :company_address, :company_fax, :company_email_address, :staffing_agency_email_address, :referral_site)
    end
    before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters

    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, 
      :name, :username, :bio, :location, :position) }

    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :password_confirmation, 
      :current_password, :name, :username, :bio, :location, :position) }

  end
end
