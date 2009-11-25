# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def luontiaika
    "This page was created at: #{DateTime.now.day}.#{DateTime.now.month}.#{DateTime.now.year} #{DateTime.now.hour}:#{DateTime.now.min}"
  end
end
