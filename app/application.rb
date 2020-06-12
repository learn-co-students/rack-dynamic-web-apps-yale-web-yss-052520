class Application

  def call(env)
    resp = Rack::Response.new

    num1 = Kernel.rand(3)
    num2 = Kernel.rand(3)
    num3 = Kernel.rand(3)
    resp.write "#{num1}\n"
    resp.write "#{num2}\n"
    resp.write "#{num3}\n"

    if num1 == num2 && num1 == num3
      resp.write "<h1>You Win!<h1>"
    else
      resp.write "You Lose!"
    end
    resp.finish
  end
  

end
