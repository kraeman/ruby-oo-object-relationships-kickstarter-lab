class Backer
attr_accessor :project

    attr_accessor :name
    @@all = []


    def initialize(name)
        @name = name
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        krae = []
        array = ProjectBacker.all.select {|i| i.backer == self}
        array.each do |k|
            krae << k.project
        end
        krae
    end
end