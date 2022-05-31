# frozen_string_literal: true

json.extract! example, :id, :created_at, :updated_at
json.url example_url(example, format: :json)
