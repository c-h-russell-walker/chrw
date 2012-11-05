class IndexController < ApplicationController
  def index
  end
  def resume
  	respond_to do |format|
  		format.html
      format.pdf { render :file => "app/assets/resources/resume.pdf" }
  		#format.pdf {render :file => 'app\assets\resources\resume.pdf', 
  		#									 :disposition => 'inline',
      #									 :content_type => 'application/pdf'}
  	end
  end
end
