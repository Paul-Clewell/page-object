When /^I retrieve a check box element$/ do
  @element = @page.cb_id_element
end

When /^I retrieve a link element$/ do
  @element = @page.google_search_id_element
end

When /^I retrieve a radio button$/ do
  @element = @page.milk_id_element
end

When /^I retrieve a select list$/ do
  @element = @page.sel_list_id_element
end

When /^I retrieve a text field$/ do
  @element = @page.text_field_id_element
end

When /^I retrieve the text area$/ do
  @element = @page.text_area_id_element
end

When /^I retrieve the div element$/ do
  @element = @page.div_id_element
end

When /^I retrieve a table element$/ do
  @element = @page.table_id_element
end

When /^I retrieve a button element$/ do
  @element = @page.button_id_element
end

When /^I retrieve table cell$/ do
  @element = @page.cell_id_element
end

When /^I retrieve a heading element$/ do
  @element = @page.h1_id_element
end

When /^I locate the form$/ do
  @element = @page.form_id_element
end

Then /^I should know it exists$/ do
  @element.should exist
end

Then /^I should know it is visible$/ do
  @element.should be_visible
end

Then /^I should know it is not visible$/ do
  @element.should_not be_visible
end

Then /^I should know its' text is "([^"]*)"$/ do |text|
  @element.text.should == text
end

Then /^I should know its' text includes "([^"]*)"$/ do |text|
  @element.text.should include text
end

Then /^I should know its' value is "([^"]*)"$/ do |value|
  @element.value.should == value
end

Then /^I should know its' value is nil$/ do
  @element.value.should be_nil
end

Then /^I should know it is equal to itself$/ do
  @element.should == @element
end

Then /^I should know its' tag name is "([^"]*)"$/ do |tagname|
  @element.tag_name.should == tagname
end

Then /^I should know the attribute "([^"]*)" is false$/ do |attr_name|
  @attr = @element.attribute(attr_name)
  @attr.should be_false if @attr.is_a? FalseClass
  @attr.should == "false" if @attr.is_a? String
end

Then /^I should be able to click it$/ do
  @element.click
end

When /^I retrieve a list item element$/ do
  @element = @page.li_id_element
end

When /^I retrieve an unordered list element$/ do
  @element = @page.ul_id_element
end

When /^I retrieve an ordered list element$/ do
  @element = @page.ol_id_element
end

When /^I clear the text field$/ do
  @page.text_field_id_element.clear
end

When /^I check an enabled button$/ do
  @element = @page.button_id_element
end

Then /^it should know it is enabled$/ do
  @element.should be_enabled
end

When /^I check a disabled button$/ do
  @element = @page.disabled_button_element
end

Then /^it should know it is not enabled$/ do
  @element.should_not be_enabled
end

Then /^it should know that is it not disabled$/ do
  @element.should_not be_disabled
end

Then /^it should know that it is disabled$/ do
  @element.should be_disabled
end

When /^I set the focus to the test text_field using the onfocus event$/ do
  @page.text_field_element(:id => 'onfocus_text_field').fire_event('onfocus')
end

Then /^I should see the onfocus text "([^\"]*)"$/ do |text|
  @page.div_element(:id => 'onfocus_test').text.should == text
end

When /^I set the focus on the test text_field$/ do
  @page.text_field_element(:id => 'onfocus_text_field').focus
end

When /^I find the child link element$/ do
  @element = @page.child_element
end

When /^ask for the parent element$/ do
  @parent = @element.parent
end

Then /^I should have a div parent$/ do
  @parent.should be_instance_of ::PageObject::Elements::Div
end

When /^I retrieve the label element$/ do
  @element = @page.label_id_element
end