class QuotesController < Rulers::Controller

  def a_quote
    render :a_quote, :verb => :drunk
  end

  def exception # testing out how to handle exceptions
    raise "It's a bad one!"
  end
end