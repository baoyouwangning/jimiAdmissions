json.array!(@course_description_and_prices) do |course_description_and_price|
  json.extract! course_description_and_price, :course_name, :course_hour, :course_price, :course_teacher
  json.url course_description_and_price_url(course_description_and_price, format: :json)
end
