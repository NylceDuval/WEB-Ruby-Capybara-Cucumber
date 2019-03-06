E /^Eu clico no botão "(\w+)"$/ do |termo|
  click_button "#{termo}"
end

E(/^Eu espero por (\d+) segundos$/) do |segundos|
  sleep segundos.to_i
end