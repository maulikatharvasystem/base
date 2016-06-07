class Response
  attr_reader :data, :message

  def initialize(data, message)
    @data = data
    @message = message
  end

  def success?
    rails NoImplementedError
  end
end