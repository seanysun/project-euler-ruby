def next_step(x, y, wid, len)
  if (x + 1) <= wid
    x += 1
    next_step(x, y, wid, len)
    x -= 1
  end
  if (y + 1) <= len
    y += 1
    next_step(x, y, wid, len)
    y -= 1
  end
  if (x == wid) && (y == len)
    @routes += 1
  end
end

@routes       = 0
@total_routes = 0
grid_size     = 20

(grid_size + 1).times do |n|
# a 4x4 square grid is a 5x5 x&y coordinate grid, hence the +1 for grid size
  width  = n
  length = grid_size - n
  next_step(0, 0, width, length)
  @total_routes += @routes ** 2
  @routes = 0
end

puts @total_routes