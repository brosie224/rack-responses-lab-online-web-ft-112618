class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now

    if t.hour < 12
      resp.write "Good Morning"
    else
      resp.write "Good Afternoon"
    end

    resp.write "\nThe current time is #{t}"

    resp.finish
  end

end
