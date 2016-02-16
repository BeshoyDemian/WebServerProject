class MickeyController < ApplicationController
	layout false
  def mickey
  	render('mickey')
  end

  def about
  	redirect_to(:controller => 'about_us', :action => 'about')

  end

  def contact
  	redirect_to(:controller => 'contact_us', :action => 'contact')
  end
end
