class AboutUsController < ApplicationController
	layout false
	
def about
  end

  def home
    redirect_to(:controller => 'homepage', :action => 'home')
  end

  

  def contact
    redirect_to(:controller => 'contact_us', :action => 'contact')
  end
end
