class GeocodeTheThingsJob < ActiveJob::Base
  include Sidekiq::Worker
  queue_as :default

  def perform(*args)
    puts 'ending job'
  end
end
