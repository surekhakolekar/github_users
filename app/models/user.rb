require 'csv'  
class User < ActiveRecord::Base
  def self.import(file)
    users = []  
    CSV.foreach(file.path, headers: true) do |row|
    users << row.to_s
  end
  users
end
end
