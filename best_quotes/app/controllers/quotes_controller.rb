class QuotesController < Rulers::Controller
  def a_quote
    "This is version3 of Rulers now using rerun" +
    "\n<pre>\n#{env}\n</pre>"
  end

  def exception # testing out how to handle exceptions
    raise "It's a bad one!"
  end
end