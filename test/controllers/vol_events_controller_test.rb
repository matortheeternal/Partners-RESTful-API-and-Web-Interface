require 'test_helper'

class VolEventsControllerTest < ActionController::TestCase
  setup do
    @vol_event = vol_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vol_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vol_event" do
    assert_difference('VolEvent.count') do
      post :create, vol_event: { AcademicYear: @vol_event.AcademicYear, AccountCreated: @vol_event.AccountCreated, AccountModified: @vol_event.AccountModified, AccountPassportCreated: @vol_event.AccountPassportCreated, DateCreated: @vol_event.DateCreated, DateEvent: @vol_event.DateEvent, DateModified: @vol_event.DateModified, DatePassportCreated: @vol_event.DatePassportCreated, DatePassportDue: @vol_event.DatePassportDue, EmailTeacher: @vol_event.EmailTeacher, EmailVolunteer: @vol_event.EmailVolunteer, EventType: @vol_event.EventType, Feedback: @vol_event.Feedback, FeedbackTeacher: @vol_event.FeedbackTeacher, FeedbackVolunteer: @vol_event.FeedbackVolunteer, Hours: @vol_event.Hours, HoursTotal: @vol_event.HoursTotal, IDEvent: @vol_event.IDEvent, IDRequest: @vol_event.IDRequest, IDVolunteer: @vol_event.IDVolunteer, Instructions: @vol_event.Instructions, NameSchool: @vol_event.NameSchool, NameTeacher: @vol_event.NameTeacher, NameVolunteer: @vol_event.NameVolunteer, Project: @vol_event.Project, ProjectAndDate: @vol_event.ProjectAndDate, ScheduleOngoing: @vol_event.ScheduleOngoing, Status: @vol_event.Status, Time: @vol_event.Time }
    end

    assert_redirected_to vol_event_path(assigns(:vol_event))
  end

  test "should show vol_event" do
    get :show, id: @vol_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vol_event
    assert_response :success
  end

  test "should update vol_event" do
    patch :update, id: @vol_event, vol_event: { AcademicYear: @vol_event.AcademicYear, AccountCreated: @vol_event.AccountCreated, AccountModified: @vol_event.AccountModified, AccountPassportCreated: @vol_event.AccountPassportCreated, DateCreated: @vol_event.DateCreated, DateEvent: @vol_event.DateEvent, DateModified: @vol_event.DateModified, DatePassportCreated: @vol_event.DatePassportCreated, DatePassportDue: @vol_event.DatePassportDue, EmailTeacher: @vol_event.EmailTeacher, EmailVolunteer: @vol_event.EmailVolunteer, EventType: @vol_event.EventType, Feedback: @vol_event.Feedback, FeedbackTeacher: @vol_event.FeedbackTeacher, FeedbackVolunteer: @vol_event.FeedbackVolunteer, Hours: @vol_event.Hours, HoursTotal: @vol_event.HoursTotal, IDEvent: @vol_event.IDEvent, IDRequest: @vol_event.IDRequest, IDVolunteer: @vol_event.IDVolunteer, Instructions: @vol_event.Instructions, NameSchool: @vol_event.NameSchool, NameTeacher: @vol_event.NameTeacher, NameVolunteer: @vol_event.NameVolunteer, Project: @vol_event.Project, ProjectAndDate: @vol_event.ProjectAndDate, ScheduleOngoing: @vol_event.ScheduleOngoing, Status: @vol_event.Status, Time: @vol_event.Time }
    assert_redirected_to vol_event_path(assigns(:vol_event))
  end

  test "should destroy vol_event" do
    assert_difference('VolEvent.count', -1) do
      delete :destroy, id: @vol_event
    end

    assert_redirected_to vol_events_path
  end
end
