class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def active_job_example
    #render 'active_job_example'
  end

  def geo_code_the_things
    puts 'starting job'
    # Delayed::Job
    # GeocodeTheThingsJob.delay
    #
    #SideKiq
    #GeocodeTheThingsJob.perform_async
    #
    # ActiveJob
    GeocodeTheThingsJob.perform_later
    redirect_to root_url
  end

end
