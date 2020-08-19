class CreateProductModels < ActiveRecord::Migration[6.0]
  def change
    create_table :product_models do |t|
      t.string :name, :limit => 50 
      t.timestamps
    end
  end
end
