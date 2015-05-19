class GeocodeTheThingsJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    sleep(15)
    puts 'ending job'
  end
end
