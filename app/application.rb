class Application

  def call(env)
    resp = Rack::Response.new

    time_of_day = Time.now.hour

    if time_of_day >= 12 
      resp.write "Good Morning!"
    else 
      resp.write "Good Afternoon!"
    end

    resp.finish
  end
end
