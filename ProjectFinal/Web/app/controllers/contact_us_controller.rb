class ContactUsController < ApplicationController
	layout false
def contact
  end
 def home
    redirect_to(:controller => 'homepage', :action => 'home')
  end

  def about
    redirect_to(:controller => 'about_us', :action => 'about')

  end

  
end
