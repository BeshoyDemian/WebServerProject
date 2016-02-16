class CommentController_old < ApplicationController
 


  def index
  @comments = Comment.sorted
  end

  def show
    @comments = Comment.find(params[:id])
  end

  def new
   @comments = Comment.new
  end

def create 
  @comments = Comment.new(comments_params)

   if @comments.save
    flash[:notice] = "comments Created sucessfully"
    redirect_to(:action => "index") 

   else
    render ("new") 
   end

end
def destroy
    @comments = Comment.find(params[:id])
    @comments.destroy
        flash[:notice] = "comments '#{@comments.name}'Destroyed sucessfully"

    redirect_to(:action =>"index")  
end
def update 
  @comments = Comment.find(params[:id])
  if @comments.update_attributes(comments_params)
    flash[:notice] = "comments Updated successfully"

    redirect_to(:action => "show", :id => @comments.id) 
   else
    render ("edit")
   end

end
  def edit
        @comments = Comment.find(params[:id])
  end

  def delete
    @comments = Comment.find(params[:id])
  end
  private 
  def comments_params 
    params.require(:comment).permit(:commenttext, :created_at , :visible)
  end


end
