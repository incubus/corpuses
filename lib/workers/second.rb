class Second
  include Sidekiq::Worker

  def perform(data)
    puts "Second #{data}"
  end

end
