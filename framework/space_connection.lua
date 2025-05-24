local space_connection = {}

---A waypoint for asteroid probability
---@param position float Position of the waypoint. Must be between 0.1 and 0.9
---@param probability float Probability of an asteroid spawning
space_connection.probability_waypoint = function(position, probability, angle_when_stopped)
    if position < 0.1 then
        error("Couldn't create waypoint. The position of the waypoint must be above 0.1")
    end
    if position > 0.9 then
        error("Couldn't create waypoint. The position of the waypoint must be below 0.9")
    end

    return { position = position, probability = probability, angle_when_stopped = angle_when_stopped }
end

return space_connection
