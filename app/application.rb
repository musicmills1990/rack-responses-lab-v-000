class Application

@@items = ["Apples", "Oranges", "Plums"]
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      @@items.each do |item|
        resp.write "#{item}\n"
      end
    else
      resp.write "Path not found, bitch."
    end
    resp.finish
  end

end
