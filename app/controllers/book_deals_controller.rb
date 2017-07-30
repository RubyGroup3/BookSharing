class BookDealsController < ApplicationController
  before_action :set_book_deal, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :check_user, only: [:edit, :update, :destroy]
  
  # GET /book_deals
  # GET /book_deals.json
  def index
    @book_deals = BookDeal.all
  end

  # GET /book_deals/1
  # GET /book_deals/1.json
  def show
  end

  # GET /book_deals/new
  def new
    @book_deal = BookDeal.new
  end

  # GET /book_deals/1/edit
  def edit
  end

  # POST /book_deals
  # POST /book_deals.json
  def create
    @book_deal = BookDeal.new(book_deal_params)
    @book_deal.user_id = current_user.id if current_user
    respond_to do |format|
      if @book_deal.save
        format.html { redirect_to @book_deal, notice: 'Book deal was successfully created.' }
        format.json { render :show, status: :created, location: @book_deal }
      else
        format.html { render :new }
        format.json { render json: @book_deal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_deals/1
  # PATCH/PUT /book_deals/1.json
  def update
    respond_to do |format|
      if @book_deal.update(book_deal_params)
        format.html { redirect_to @book_deal, notice: 'Book deal was successfully updated.' }
        format.json { render :show, status: :ok, location: @book_deal }
      else
        format.html { render :edit }
        format.json { render json: @book_deal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_deals/1
  # DELETE /book_deals/1.json
  def destroy
    @book_deal.destroy
    respond_to do |format|
      format.html { redirect_to book_deals_url, notice: 'Book deal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def check_user
      if @book_deal.user != current_user
        redirect_to book_deals_path
      end
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_book_deal
      @book_deal = BookDeal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_deal_params
      params.require(:book_deal).permit(:book_id, :user_id, :condition, :status, :publish_at, :edition, :release_date, :description, :price, :return_date, :deal_id, :deal_type, :deal_date)
    end
end
