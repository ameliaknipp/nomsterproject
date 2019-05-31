class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  # set per_page globally
WillPaginate.per_page = 1
end


