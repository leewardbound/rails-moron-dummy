class CreateThinkingOfs < ActiveRecord::Migration
  def self.up
    create_table :thinking_ofs do |t|
      t.integer :number

      t.timestamps
    end
  end

  def self.down
    drop_table :thinking_ofs
  end
end
