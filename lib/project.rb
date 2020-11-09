class Project

    attr_accessor :title
    @@all = []


    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        krae = []
        array = ProjectBacker.all.select {|i| i.project == self}
        array.each do |k|
            krae << k.backer
        end
        krae
    end
end