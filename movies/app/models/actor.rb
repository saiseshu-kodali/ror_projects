class Actor < ActiveRecord::Base
     self.per_page = 3
     validates :name, uniqueness:	 true
     validates :name, presence: true
	 validates :age, numericality: true
	 #validates :moviesno, numericality: true
	 validates :name,length: { minimum: 3 }

	 before_save :merge_actor_name
	 after_destroy :display_message
	 
	 def merge_actor_name
	 
	     self.name = self.name + " by " + self.age.to_s
	 
	 end
     
	 def display_message
	 
	    logger.error "A field has been deleted......"
		
	 end
	 
end