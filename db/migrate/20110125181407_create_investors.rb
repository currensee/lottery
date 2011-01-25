class CreateInvestors < ActiveRecord::Migration
  def self.up
    create_table :investors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.integer :prize_id
      t.integer :prize2_id
      t.integer :entries

      t.timestamps
    end
  end

  def self.down
    drop_table :investors
  end
end
