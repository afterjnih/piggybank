require 'rack'
require 'show'

class Piggybank
  def call(env)
    sim = ShowInputMenu.new()
    [200, {"Content-Type" => "text/plain"},sim.show]
  end
end