class First
  include Sidekiq::Worker

  def perform(data)
    puts "First #{data}"
  end

end
