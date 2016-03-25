class QuotesController < Rulers::Controller

  def a_quote
    render :a_quote, :verb => :drunk
  end

  def exception # testing out how to handle exceptions
    raise "It's a bad one!"
  end

  def quote_1
    quote_1 = Rulers::Model::FileModel.find(1)
    render :quote, :obj => quote_1    
  end
end