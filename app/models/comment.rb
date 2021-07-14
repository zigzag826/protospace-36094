class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :prototype
  validates :text, presence: true

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to prototype_path(@comment.prototype) 
    else
      @prototype = @comment.prototype
      @comments = @prototype.comments
      render "prototypes/show"
    end
  end
end
