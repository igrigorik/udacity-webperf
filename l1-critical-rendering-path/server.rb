require 'goliath'

class Srv < Goliath::API
  def response(env)
    file = env['REQUEST_PATH'].split('/')[1]
    # type = 'text/html'

    EM::Synchrony.sleep(0.1)

    type = case file
    when /\.html$/
      EM::Synchrony.sleep(0.1)
      'text/html'
    when /\.css$/
      EM::Synchrony.sleep(0.01)
      'text/css'
    when /\.js$/
      EM::Synchrony.sleep(0.01)
      'application/javascript'
    else
      EM::Synchrony.sleep(0.01)
    end

    [200, {'Content-Type' => type}, IO.read(file)]
  end
end
