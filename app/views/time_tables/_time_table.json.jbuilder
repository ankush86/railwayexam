json.extract! time_table, :id, :arrival_time, :departure_time, :station_id, :train_id, :created_at, :updated_at
json.url time_table_url(time_table, format: :json)
