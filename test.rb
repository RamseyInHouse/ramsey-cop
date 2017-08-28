#!/Users/rick.peyton/.rbenv/versions/2.4.1/bin/ruby

result = []
result << %x(git tag -l)

puts result.first
