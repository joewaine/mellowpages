class AddGenresPublicationsTable < ActiveRecord::Migration
  def change
    create_table :genres_publications, :id => false do |t|
      t.integer :genre_id
      t.integer :publication_id
    end
  end
end