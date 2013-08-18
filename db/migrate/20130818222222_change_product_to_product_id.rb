class ChangeProductToProductId < ActiveRecord::Migration
   def change
     remove_column :exercises, :body_part, :string
     add_column :exercises, :body_part_id, :integer
   end
 end