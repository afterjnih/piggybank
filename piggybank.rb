require 'rack'

class Piggybank
  def call(env)
    [200, {"Content-Type" => "text/plain"},["Hello piggybank"]]
  end
end