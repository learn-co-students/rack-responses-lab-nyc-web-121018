class Application
  def call(env)
    resp = Rack::Response.new

    time = Time.now.strftime("%H:%M")
    time_hour = time.split(':').first.to_i

    if time_hour < 12
      resp.write("Good Morning!")
    else
      resp.write("Good Afternoon!")
    end

    resp.finish
  end
end
