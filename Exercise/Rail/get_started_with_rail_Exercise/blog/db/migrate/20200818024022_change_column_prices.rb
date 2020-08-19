class ChangeColumnPrices < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      dir.up {
        change_column :products, :prices, :decimal, :precision => 5
      }
      dir.down {
        change_column :products, :prices, :string
      }
    end
  end
end
