class AddCatchphraseToCharacters < ActiveRecord::Migration[6.1]
  def change
    change_table :characters do |t|
      t.string :catchphrase
    end
  end
end
