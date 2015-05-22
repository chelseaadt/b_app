class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
    t.string :name
  end

  create_table :accounts do |t|
  	t.belongs_to :supplier, index: true
  	t.string :account_number

  end
end
end