class Application

  def call(env)
    resp = Rack::Response.new
    #resp.write "Hello, World"
    t = Time.now
    t_hour = t.hour

    if t_hour <= 12
      resp.write "Good Morning"
    else
      resp.write "Good Afternoon"
    end


    resp.finish
  end

end
