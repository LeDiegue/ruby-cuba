module Helpers
  def forbidden!(message = "forbidden")
    error! 401, message
  end

  def error!(status, message)
    res.status = status
    res.write message
    halt(res.finish)
  end
end
