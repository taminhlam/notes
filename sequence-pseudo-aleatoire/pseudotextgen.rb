# https://stackoverflow.com/questions/52654509/random-generate-a-valid-unicode-character-in-ruby
n = ARGV.shift.to_i

seq = []


random_utf8 = Enumerator.new do |yielder|
  loop do
    # yielder << rand(0x10000).chr('UTF-8')
    yielder << rand(0x2580..0x259F).chr('UTF-8')
  rescue RangeError
  end
end

n.times do
  seq.push random_utf8.next
end

puts "#{ seq.join }"
