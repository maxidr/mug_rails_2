class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.references :product
      t.integer :quantity

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
