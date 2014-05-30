require 'goliath'

class Srv < Goliath::API
  use Goliath::Rack::Params

  def response(env)
    file = env['REQUEST_PATH'].split('/')[1]

    rtt  = env.params.fetch('rtt', 0.1).to_f
    processing = env.params.fetch('processing', 0.01).to_f
    EM::Synchrony.sleep(rtt + processing)

    type = case file
    when /\.html$/
      'text/html'
    when /\.css$/
      'text/css'
    when /\.js$/
      'application/javascript'
    end

    [200, {'Content-Type' => type}, IO.read(file)]
  end
end
