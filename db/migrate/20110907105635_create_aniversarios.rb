class CreateAniversarios < ActiveRecord::Migration
  def self.up
    create_table :aniversarios do |t|
      t.string :nome
      t.date :dia

      t.timestamps
    end
  end

  def self.down
    drop_table :aniversarios
  end
end
