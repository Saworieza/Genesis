require 'test_helper'

class TeacherDetailsControllerTest < ActionController::TestCase
  setup do
    @teacher_detail = teacher_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teacher_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teacher_detail" do
    assert_difference('TeacherDetail.count') do
      post :create, teacher_detail: { birth_date: @teacher_detail.birth_date, certifications: @teacher_detail.certifications, county: @teacher_detail.county, education: @teacher_detail.education, email: @teacher_detail.email, employee_number: @teacher_detail.employee_number, employer: @teacher_detail.employer, employment_date: @teacher_detail.employment_date, full_name: @teacher_detail.full_name, home_address: @teacher_detail.home_address, marital_status: @teacher_detail.marital_status, nationality: @teacher_detail.nationality, phone_1: @teacher_detail.phone_1, phone_2: @teacher_detail.phone_2, subjects: @teacher_detail.subjects, town: @teacher_detail.town }
    end

    assert_redirected_to teacher_detail_path(assigns(:teacher_detail))
  end

  test "should show teacher_detail" do
    get :show, id: @teacher_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teacher_detail
    assert_response :success
  end

  test "should update teacher_detail" do
    patch :update, id: @teacher_detail, teacher_detail: { birth_date: @teacher_detail.birth_date, certifications: @teacher_detail.certifications, county: @teacher_detail.county, education: @teacher_detail.education, email: @teacher_detail.email, employee_number: @teacher_detail.employee_number, employer: @teacher_detail.employer, employment_date: @teacher_detail.employment_date, full_name: @teacher_detail.full_name, home_address: @teacher_detail.home_address, marital_status: @teacher_detail.marital_status, nationality: @teacher_detail.nationality, phone_1: @teacher_detail.phone_1, phone_2: @teacher_detail.phone_2, subjects: @teacher_detail.subjects, town: @teacher_detail.town }
    assert_redirected_to teacher_detail_path(assigns(:teacher_detail))
  end

  test "should destroy teacher_detail" do
    assert_difference('TeacherDetail.count', -1) do
      delete :destroy, id: @teacher_detail
    end

    assert_redirected_to teacher_details_path
  end
end
