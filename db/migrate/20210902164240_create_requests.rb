class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.string :product
      t.string :amount
      t.string :intention
      t.timestamp :time

      t.timestamps
    end
  end
end
