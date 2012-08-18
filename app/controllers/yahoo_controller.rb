class YahooController < ApplicationController
	require 'csv' 
	require 'open-uri'
	require 'nokogiri'

  def index
  	@stocks = Stock.all
  end

  def show
  end

  def update
  	@stocks = Stock.all
  	@stocks.each do |stock|
  		url = yahoo_url(stock.symbol, '2012-01-01', '2012-02-02')
  		CSV.parse(open(url))[1..-1].each do |row|
  			if !stock.quotes.exists?(:date => row[0])
  				stock.quotes.create(:date => row[0], :open => row[1], :high => row[2], :low => row[3], :close => row[4], :volume => row[5], :adjClose => row[6])
  			end
      end
  	end
  end

  def empty
  end

  private

  def yahoo_url(symbol, from, to)
  	'http://ichart.finance.yahoo.com/table.csv?s=%s&a=%s&b=%s&c=%s&d=%s&e=%s&f=%s&g=d&ignore=.csv' % [
  		symbol, 
  		from.to_date.month,
  		from.to_date.day,
  		from.to_date.year,
  		to.to_date.month,
  		to.to_date.day,
  		to.to_date.year
  	]
  end
end
