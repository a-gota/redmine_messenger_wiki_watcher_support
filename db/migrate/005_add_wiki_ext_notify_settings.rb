# frozen_string_literal: true

class AddWikiExtNotifySettings < ActiveRecord::Migration[4.2]
  def change
    change_table :messenger_settings, bulk: true do |t|
      t.string :post_wiki_channel
      t.integer :post_wiki_to_messenger_channel, default: 0, null: false
      t.string :post_wiki_updates_channel
      t.integer :post_wiki_updates_to_messenger_channel, default: 0, null: false
      t.integer :post_wiki_updates_to_watcher, default: 0, null: false
    end
  end
end
