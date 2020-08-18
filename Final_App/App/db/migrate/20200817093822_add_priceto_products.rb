class AddPricetoProducts < ActiveRecord::Migration[6.0]
  # def up 
  #   add_column :products, :prices, :string
  #   #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  
  #     t.timestamps
  #   end
  # end

  # def down 
  #   remove_column :products, :prices
  # end

  def change 
    reversible do |dir|
      dir.up {
        add_column :products, :prices, :string
      }
      dir.down {
        remove_column :products, :prices
      }
    end
  end
end
