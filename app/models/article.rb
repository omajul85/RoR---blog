class Article < ActiveRecord::Base
	belongs_to :author
	has_many :comments
	has_many :taggings
	has_many :tags, through: :taggings
	
	# paperclip related
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

	def tag_list
		# Another alternative is to define a new Tag#to_s method which overrides the default
  	self.tags.collect do |tag|
    	tag.name
  	end.join(", ")
	end

	def tag_list=(tags_string)
		tag_names = tags_string.split(",").collect{ |s| s.strip.downcase }.uniq
		new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
  	
  	# self refers to the article
  	self.tags = new_or_found_tags
	end

end
