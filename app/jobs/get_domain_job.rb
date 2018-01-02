class GetDomainJob < ApplicationJob
  queue_as :default

  def perform(*args)
    while true do
      domain = ZtBtce.get_domain
      puts "ZT! #{Time.now}: #{domain}" 
      sleep 10
    end
  end
end
