env = ENV["RACK_ENV"] || "development"


DataMapper.setup(:default, "postgres://localhost/bookmark_manager_#{env}")
# After declaring your models, you should finalise them
DataMapper.finalize

