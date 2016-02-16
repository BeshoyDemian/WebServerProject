class CommentController < ApplicationController
 
 def home
    redirect_to(:controller => 'homepage', :action => 'home')
  end

  def about
    redirect_to(:controller => 'about_us', :action => 'about')

  end

  def contact
    redirect_to(:controller => 'contact_us', :action => 'contact')
  end


  def index
  	para=params[:photoid]
  @comments = Comment.where(:photo_id=>para)
  @x=para
  end

  def show
    @comments = Comment.find(params[:id])
  end

  def new
   @comments = Comment.new
  end

def create 

tp = comments_params
  tp[:photo_id] = params[:photo_id]


  @comments = Comment.new(tp)
   if @comments.save
    flash[:notice] = "comments Created sucessfully"
    redirect_to(:action => "index",:photoid=>params[:photo_id]) 

   else
    render ("new") 
   end

end
def destroy
	tb2=params

    @comments = Comment.find(tb2[:id])
    @comments.destroy
        flash[:notice] = "comments '#{@comments.commenttext}'Destroyed sucessfully"

    redirect_to(:action =>"index",:photoid=>tb2[:photo_id])  
end
def update 
  tbupdate=params
  tp = comments_params

  @comments = Comment.find(tbupdate[:id])
  if @comments.update_attributes(tp)
    flash[:notice] = "comments Updated successfully"

    redirect_to(:action => "index",:id => @comments.id,:photoid=>tbupdate[:photo_id]) 
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
    params.require(:comment).permit(:commenttext , :likes , :visible,:photo_id)
  end


end
