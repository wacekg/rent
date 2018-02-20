class CommentsController < ApplicationController
  def create
  @car = Car.find(params[:car_id])
  @comment = Comment.new(car_id: @car.id)
  @comment.attributes = comment_params
  if @comment.save
    session[:commenter] = @comment.commenter
    redirect_to car_path(@comment.car_id)
  else
    @like = Like.find_or_initialize_by(car: @car, user: current_user)
    render 'car/show'
  end

end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to car_path(@comment.car_id)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body, :car_id)
  end
end
