class Application
  def call(env)
    resp = Rack::Response.new

    time = Time.now.strftime("%H:%M")
    time_hour = time.split(':').first.to_i

    # For future reference, above code is also possible via Time.now.hour

    if time_hour >= 12
      resp.write("Good Afternoon!")
    else
      resp.write("Good Morning!")
    end

    resp.finish
  end
end
