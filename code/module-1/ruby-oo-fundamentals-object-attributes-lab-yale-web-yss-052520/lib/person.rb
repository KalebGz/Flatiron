class Person
    def initalize(name, job)
        @name = name
        @job = job
    end

    def name=(name_input)
        @name = name_input
    end

    def name
        @name
    end

    def job=(job_input)
        @job = job_input
    end

    def job
        @job
    end
end