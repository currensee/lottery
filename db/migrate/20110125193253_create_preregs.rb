class CreatePreregs < ActiveRecord::Migration
  def self.up
    create_table :preregs do |t|
      t.string :email
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :preregs
  end
end
