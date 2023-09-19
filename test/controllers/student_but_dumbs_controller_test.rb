require "test_helper"

class StudentButDumbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_but_dumb = student_but_dumbs(:one)
  end

  test "should get index" do
    get student_but_dumbs_url
    assert_response :success
  end

  test "should get new" do
    get new_student_but_dumb_url
    assert_response :success
  end

  test "should create student_but_dumb" do
    assert_difference("StudentButDumb.count") do
      post student_but_dumbs_url, params: { student_but_dumb: { age: @student_but_dumb.age, doctor_e_watching: @student_but_dumb.doctor_e_watching, in_syria: @student_but_dumb.in_syria, name: @student_but_dumb.name, offset_from_roy: @student_but_dumb.offset_from_roy } }
    end

    assert_redirected_to student_but_dumb_url(StudentButDumb.last)
  end

  test "should show student_but_dumb" do
    get student_but_dumb_url(@student_but_dumb)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_but_dumb_url(@student_but_dumb)
    assert_response :success
  end

  test "should update student_but_dumb" do
    patch student_but_dumb_url(@student_but_dumb), params: { student_but_dumb: { age: @student_but_dumb.age, doctor_e_watching: @student_but_dumb.doctor_e_watching, in_syria: @student_but_dumb.in_syria, name: @student_but_dumb.name, offset_from_roy: @student_but_dumb.offset_from_roy } }
    assert_redirected_to student_but_dumb_url(@student_but_dumb)
  end

  test "should destroy student_but_dumb" do
    assert_difference("StudentButDumb.count", -1) do
      delete student_but_dumb_url(@student_but_dumb)
    end

    assert_redirected_to student_but_dumbs_url
  end
end
