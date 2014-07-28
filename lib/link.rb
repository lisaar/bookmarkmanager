# This class corresponds to a table int he databse
# we can use it to manipulate the data
class Link
	#this makes the instances of this class Datamapper resources
	include DataMapper::Resource

	#this block describes what resources our model will have
	property :id,	Serial #serial means it will be auto-incremented for every record
	property :title,	String
	property :url,	String

end

