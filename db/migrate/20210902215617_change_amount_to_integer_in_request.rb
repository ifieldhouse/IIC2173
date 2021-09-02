class ChangeAmountToIntegerInRequest < ActiveRecord::Migration[6.1]
  def change
    change_column :requests, :amount, 'integer USING CAST(amount AS integer)'
  end
end
