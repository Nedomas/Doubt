class Quote < ActiveRecord::Base
  attr_accessible :adjClose, :close, :date, :high, :low, :open, :stock_id, :volume
  belongs_to :stock
end
