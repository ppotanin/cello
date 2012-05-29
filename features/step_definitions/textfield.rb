Dir[File.dirname(__FILE__) + "/../../pages/*.rb"].each do |file| 
  require file 
end

Then /^I should can knows if this page has a textfield$/ do
  @page.text_field_is_real?
  @page.close
end

Then /^I should be able to write a text like "(.*?)" in the textfield$/ do |text|
  @page.text_field_fill_with(text)
  @page.close
end

Then /^I shoud be able to get the text "(.*?)" from this textfield$/ do |text|
  @page.text_field_get_text == text
  @page.close
end

Then /^I should be able to know if the text on the textfield does not contais the text "(.*?)"$/ do |text|
  @page.text_field_dont_contain(text) 
  @page.close
end

Then /^I should be able to know if the text on the textfield contais the text "(.*?)"$/ do |text|
  @page.text_field_contains(text) 
  @page.close
end

Then /^I should be able to know if the text on the textfield is the text "(.*?)"$/ do |text|
  @page.text_field_text_is(text) 
  @page.close
end

Then /^I should be able to know if the textfield is empty$/ do
  @page.text_field_is_empty?
  @page.close
end

Then /^I should be able to know if the size of the textfield text is "(.*?)"$/ do |size|
  @page.text_field_text_size == size
  @page.close
end