class Application

  def call(env)
    resp = Rack::Response.new

    time_of_day = Time.now.hour

    time_of_day >= 12 ? resp.write "Good Morning!" : resp.write "Good Afternoon!"

    resp.finish 
  end
end
