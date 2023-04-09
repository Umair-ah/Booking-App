module BookingTypesHelper
    def duration(type)
        if type.duration == 60
            "1 Hr"
        else
            type.duration.to_formatted_s + "mins"
        end
    end
end
