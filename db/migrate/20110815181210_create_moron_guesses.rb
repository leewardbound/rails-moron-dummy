class CreateMoronGuesses < ActiveRecord::Migration
  def self.up
    create_table :moron_guesses do |t|
      t.references :thinking_of
      t.integer :guess

      t.timestamps
    end
  end

  def self.down
    drop_table :moron_guesses
  end
end
