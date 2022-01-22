class AddListAndMovieReferencesToBookmarks < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookmarks, :movie
    add_reference :bookmarks, :list
  end
end
