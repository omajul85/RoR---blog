module TagsHelper
	def find_tag
		@tag = Tag.find(params[:id])
	end
end
