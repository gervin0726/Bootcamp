class ConcertsController < ApplicationController
  def new
    @concert = Concert.new
  end
  def create
    @concert = Concert.new(entry_params)
    if (@concert.save)
      redirect_to "/"
    else
      flash[:alert] = @concert.errors.full_messages
      render 'new'
    end
  end
  def show
      @concert = Concert.find_by(id: params[:id])
      @concert_comments = @concert.comments
  end
  private
    def entry_params
      params.require(:concert).permit(:artist, :date, :price, :venue, :description)
    end
end
