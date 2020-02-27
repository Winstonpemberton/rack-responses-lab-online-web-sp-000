class Application

  def call(env)
    resp = Rack::Response.new

    time_of_day = Time.now.hour

    morning_message = resp.write "Good Morning!"
    afternoon_message = resp.write "Good Afternoon!"

    time_of_day <= 12 ? morning_message : afternoon_message
    resp.finish
  end
end
