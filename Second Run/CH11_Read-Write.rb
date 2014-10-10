#Chapter 11 Read-Write

filename = 'ListerQuote.txt'
test_string = """I promise that I swear absolutely that
I will never mention gazpacho soup again."""


def writeFile (filename, text)
  File.open filename, 'w' do |f|
    f.write text
  end
end

writeFile filename, test_string

read_string = File.read filename
puts(read_string == test_string)
