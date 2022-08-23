class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      # テキストの内容、画像情報、投稿時刻、投稿したチャットルーム、投稿したユーザー
      t.text :content
      t.references :room, null:false, foreign_key: true
      t.references :user, null:false, foreign_key: true
      t.timestamps
    end
  end
end
