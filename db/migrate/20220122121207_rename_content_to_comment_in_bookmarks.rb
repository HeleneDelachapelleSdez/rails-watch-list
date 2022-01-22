class RenameContentToCommentInBookmarks < ActiveRecord::Migration[6.1]
  def change
    rename_column(:bookmarks, :content, :comment)
  end
end
