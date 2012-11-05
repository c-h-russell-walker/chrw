class IndexController < ApplicationController
  def index
  end
  def pdf
    pdf_filename = File.join(Rails.root, "app/assets/resources/resume.pdf")
    send_file(pdf_filename, :filename => "resume.pdf", 
                            :disposition => 'inline', 
                            :type => "application/pdf")
  end

end
