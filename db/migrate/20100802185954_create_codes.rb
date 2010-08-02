class CreateCodes < ActiveRecord::Migration
  def self.up
    create_table :codes do |t|
      t.integer :product_id
      t.integer :user_id
      t.string :download_code
      t.datetime :expires_at

      t.timestamps
    end
  end

  def self.down
    drop_table :codes
  end
end
