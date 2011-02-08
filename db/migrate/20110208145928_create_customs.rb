class CreateCustoms < ActiveRecord::Migration
  def self.up
    create_table :customs do |t|
      t.integer :apple
      t.integer :bundle
      t.integer :pickone
      t.integer :nothing

      t.timestamps
    end
  end

  def self.down
    drop_table :customs
  end
end
