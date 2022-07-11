def faces
time = Time.now
filename = "face " + time.strftime("%Y.%m.%d %H-%M-%S") + ".txt"
foreheads = [" / - - - \\", " / ^ - ^ \\", " / - ^ - \\", " / < - > \\"]
eyes = ["| 0     0 |", "| O     o |", "| o     O |", "| O     0 |"]
noses = [" \\   ^   /", " \\   <>  /", " \\  <>   /"]
mouths = ["  \\  -  /", "  \\ <-> /", "  \\ ___ /"]

file = File.new(filename, "w")
file.puts (foreheads.sample + "\n")
file.puts (eyes.sample + "\n")
file.puts (noses.sample + "\n")
file.puts (mouths.sample + "\n")
file.close
end
faces()