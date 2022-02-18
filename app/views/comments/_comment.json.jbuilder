json.extract! comment, :id, :item_id, :commentor_id, :comment_text,
              :created_at, :updated_at
json.url comment_url(comment, format: :json)
