class CreateOrders < ActiveRecord::Migration
  def change
    create_table :customers do |t|
    t.string :name
    end

    create_table :orders do|t|
    	t.belongs_to :customer, index: true
    	t.datetime :order_date
  end
end
end

