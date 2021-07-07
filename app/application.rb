class Application
  def call(env)
    resp = Rack::Response.new

    time_1 = Time.now

    if time_1.hour >= 12
      resp.write "Good Afternoon"
    else
      resp.write "Good Morning"
    end
    resp.finish
  end 


end
