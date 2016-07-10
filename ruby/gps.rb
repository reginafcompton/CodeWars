def gps(s, x)
    return 0 if x.length == 0

    speeds = []
    x.each_with_index do |distance, index|
      d = distance - x[index - 1]
      speeds << convert_seconds(d, s)
    end
    speeds.max.to_i
end

def convert_seconds(distance, time)
  (distance / time) * 60 * 60
end

gps(15, [0.0, 0.19, 0.5, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0, 2.25])