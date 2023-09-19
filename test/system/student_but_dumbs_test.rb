require "application_system_test_case"

class StudentButDumbsTest < ApplicationSystemTestCase
  setup do
    @student_but_dumb = student_but_dumbs(:one)
  end

  test "visiting the index" do
    visit student_but_dumbs_url
    assert_selector "h1", text: "Student but dumbs"
  end

  test "should create student but dumb" do
    visit student_but_dumbs_url
    click_on "New student but dumb"

    fill_in "Age", with: @student_but_dumb.age
    check "Doctor e watching" if @student_but_dumb.doctor_e_watching
    check "In syria" if @student_but_dumb.in_syria
    fill_in "Name", with: @student_but_dumb.name
    fill_in "Offset from roy", with: @student_but_dumb.offset_from_roy
    click_on "Create Student but dumb"

    assert_text "Student but dumb was successfully created"
    click_on "Back"
  end

  test "should update Student but dumb" do
    visit student_but_dumb_url(@student_but_dumb)
    click_on "Edit this student but dumb", match: :first

    fill_in "Age", with: @student_but_dumb.age
    check "Doctor e watching" if @student_but_dumb.doctor_e_watching
    check "In syria" if @student_but_dumb.in_syria
    fill_in "Name", with: @student_but_dumb.name
    fill_in "Offset from roy", with: @student_but_dumb.offset_from_roy
    click_on "Update Student but dumb"

    assert_text "Student but dumb was successfully updated"
    click_on "Back"
  end

  test "should destroy Student but dumb" do
    visit student_but_dumb_url(@student_but_dumb)
    click_on "Destroy this student but dumb", match: :first

    assert_text "Student but dumb was successfully destroyed"
  end
end
