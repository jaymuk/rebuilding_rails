class QuotesController < Rulers::Controller

  def a_quote
    render :a_quote, :verb => :drunk
  end

  def exception # testing out how to handle exceptions
    raise "It's a bad one!"
  end

  def quote_1
    quote_1 = FileModel.find(1)
    render :quote, :obj => quote_1    
  end

  def index
    quotes = FileModel.all
    render :index, :quotes => quotes
  end

  def new_quote
    attrs = {
      "submitter" => "web user",
      "quote" => "A picture is worth a thousand cringes",
      "attribution" => "Me"
    }
    m = FileModel.create attrs
    render :quote, :obj => m
  end
end