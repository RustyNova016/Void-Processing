function char(num)
    return string.char(string.byte("a") + num - 1)
end

function get_ordering(order_list, target)
    local i = 1;

    -- We search the target string in the current table
    for k, v in pairs(order_list) do
        if type(v) == "string" and v == target then
            -- Found the target! We return the letter corresponding to the number
            return char(i)
        end

        -- This is recursive? Then we must go deeper
        if type(v) == "table" then
            local nested = get_ordering(v, target)

            if nested ~= nil then
                -- Found it. We add our letter
                return char(i) .. "-" .. nested
            end
        end

        i = i + 1
    end

    return nil
end
