require 'bunny'

class PolicyPublisher
  def self.publish(msg)
    connection = Bunny.new(host:  'rabbitmq')
    connection.start
    channel = connection.create_channel

    queue = channel.queue('hello', durable: true)

    channel.default_exchange.publish(msg, routing_key: queue.name)
    puts " [x] Sent 'Hello World!'"
    connection.close
  end

  # def self.connection
  #   @connection ||= Bunny.new.tap do |con|
  #     con.start
  #   end
  # end

  # def self.channel
  #   @channel = connection.create_channel
  # end
end
