class EcommerceWebsitesController < ApplicationController
  before_action :set_ecommerce_website, only: %i[ show edit update destroy ]

  # GET /ecommerce_websites or /ecommerce_websites.json
  def index
    @ecommerce_websites = EcommerceWebsite.all
  end

  # GET /ecommerce_websites/1 or /ecommerce_websites/1.json
  def show
  end

  # GET /ecommerce_websites/new
  def new
    @ecommerce_website = EcommerceWebsite.new
  end

  # GET /ecommerce_websites/1/edit
  def edit
  end

  # POST /ecommerce_websites or /ecommerce_websites.json
  def create
    @ecommerce_website = EcommerceWebsite.new(ecommerce_website_params)

    respond_to do |format|
      if @ecommerce_website.save
        format.html { redirect_to ecommerce_website_url(@ecommerce_website), notice: "Ecommerce website was successfully created." }
        format.json { render :show, status: :created, location: @ecommerce_website }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ecommerce_website.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ecommerce_websites/1 or /ecommerce_websites/1.json
  def update
    respond_to do |format|
      if @ecommerce_website.update(ecommerce_website_params)
        format.html { redirect_to ecommerce_website_url(@ecommerce_website), notice: "Ecommerce website was successfully updated." }
        format.json { render :show, status: :ok, location: @ecommerce_website }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ecommerce_website.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ecommerce_websites/1 or /ecommerce_websites/1.json
  def destroy
    @ecommerce_website.destroy

    respond_to do |format|
      format.html { redirect_to ecommerce_websites_url, notice: "Ecommerce website was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ecommerce_website
      @ecommerce_website = EcommerceWebsite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ecommerce_website_params
      params.require(:ecommerce_website).permit(:name, :url, :access_token)
    end
end
