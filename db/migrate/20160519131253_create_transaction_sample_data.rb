class CreateTransactionSampleData < ActiveRecord::Migration[5.0]
  def change
    create_table :transaction_sample_data, :force => true do |t|
      t.references :application, index: true, foreign_key: true
      t.references :host, index: true, foreign_key: true
      t.references :grouping, index: true, type: :string, polymorphic: true
      t.references :layer, index: true, foreign_key: true
      t.string :trace_id, index: true
      t.string :sample_type, :default => "web"
      t.string :name
      t.datetime :timestamp
      t.float :duration
      t.float :exclusive_duration
      t.string :trace_key
      t.string :uuid
      t.string :url
      t.string :domain
      t.string :controller
      t.string :action
      t.text :payload
      t.timestamps null: false
    end
  end
end
