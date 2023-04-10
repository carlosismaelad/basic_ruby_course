# ruby gem_os.rb

require 'os'

def my_os
  if OS.windows?
    "Windows"
  elsif OS.linux?
    "Linux"
  elsif OS.mac?
    "Osx"
  else
    "Não consegui identificar"
  end
end

puts "Meus PC possui #{OS.cpu_count} cores,
 é #{OS.bits} bits e o sistema operacional é #{my_os} "