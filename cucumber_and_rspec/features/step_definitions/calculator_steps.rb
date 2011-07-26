Given /^I have opened the calculator$/ do
  visit '/'
end

Given /^I have input "([^"]*)" as the first operand$/ do |first_operand|
  fill_in('first-operand', :with => first_operand)
end

Given /^I have input "([^"]*)" as the second operand$/ do |second_operand|
  fill_in('second-operand', :with => second_operand)
end

When /^I ask for the sum of the two numbers$/ do
  click_button '+'
end

Then /^I get "([^"]*)" as the answer$/ do |answer|
  within("#answer") do
    page.should have_content answer
  end
end
