class CreatePrizecounts < ActiveRecord::Migration
  def self.up
    create_table :prizecounts do |t|
      t.string :prize_name
      t.integer :prize_id
      t.integer :prize_count

      t.timestamps
    end
  end

  def self.down
    drop_table :prizecounts
  end
end
