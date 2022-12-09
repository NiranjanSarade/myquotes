class QuotesController < ApplicationController

  def index
    @quotes = Quote.search(params[:search])
  end

  def show
    @quote = Quote.find(params[:id])
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(quote_params)

    if @quote.save
      redirect_to @quote
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @quote = Quote.find(params[:id])
  end

  def update
    @quote = Quote.find(params[:id])

    if @quote.update(quote_params)
      redirect_to @quote
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @quote = Quote.find(params[:id])
    @quote.destroy

    redirect_to root_path, status: :see_other
  end

   private
    def quote_params
      params.require(:quote).permit(:author, :body, :category, :search)
    end
end