class myData

	def initialize(list = nil)
		@dataCharcter = list
	end

	def addOccurence(newcharacter)
		@dataCharcter << newcharacter
	end
end