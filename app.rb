require 'cuba'
require "./helpers"

Cuba.plugin(Helpers)

Cuba.define do
  on root do
    forbidden! unless req.env["HTTP_X_AUTH"]
    res.write 'Hello World'
  end
end
