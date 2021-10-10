class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    # def appointment_datetime=(time)
    #     byebug
    #     @appointment_datetime = DateTime.strptime(time, '%Y-%m-%dT%H:%M:%S%z')
    # end

    def datetime
        (self.appointment_datetime)? self.appointment_datetime.strftime(" %B %d, %Y at %H:%M") : nil
    end
    
end
