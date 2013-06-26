module ApplicationHelper
	def title(title)
		@page_title = "QManage"
		if title.nil?
			@page_title
		else
			@page_title += " | " + title
		end

		content_for :title do
			@page_title
		end
	end
end
