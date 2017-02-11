class CommentsController < ApplicationController
  def create
    @comment = concert.comments.new(entry_params)
    if (@comment.save)
      redirect_to "/concerts/#{concert.id}"
    end
  end
  private
    def concert
      @concert = Concert.find_by(id: params[:concert_id])
    end
    def entry_params
      params.require(:comment).permit(:nickname, :content)
    end
end
