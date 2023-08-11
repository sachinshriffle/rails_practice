class Customer < ApplicationRecord
	validates :name , presence: {strict: true}, length:{minimum:3} , allow_blank:false
	validates :age , comparison: { greater_than: 18 }
	validates :num, numericality: {only_integer: true}
	validates :address, inclusion:{in: %w(small), message: "not a valid input"}, allow_nil:true
end
