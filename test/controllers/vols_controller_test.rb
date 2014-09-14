require 'test_helper'

class VolsControllerTest < ActionController::TestCase
  setup do
    @vol = vols(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vols)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vol" do
    assert_difference('Vol.count') do
      post :create, vol: { BioEthnicity: @vol.BioEthnicity, BioLanguage: @vol.BioLanguage, City1: @vol.City1, Coordinator: @vol.Coordinator, Email1: @vol.Email1, Fax1: @vol.Fax1, Gender: @vol.Gender, IDVolunteer: @vol.IDVolunteer, NameFirst: @vol.NameFirst, NameLast: @vol.NameLast, NameMiddle: @vol.NameMiddle, NamePreferred: @vol.NamePreferred, Newsletter: @vol.Newsletter, Organization: @vol.Organization, Phone1: @vol.Phone1, PhoneCell: @vol.PhoneCell, Prefix: @vol.Prefix, RetireeEmploymentHistory: @vol.RetireeEmploymentHistory, State1: @vol.State1, Street1: @vol.Street1, StudentGradYear: @vol.StudentGradYear, StudentMajor: @vol.StudentMajor, StudentSchool: @vol.StudentSchool, Suffix: @vol.Suffix, Title: @vol.Title, VolArts: @vol.VolArts, VolCareerDay: @vol.VolCareerDay, VolCommitment: @vol.VolCommitment, VolComputer: @vol.VolComputer, VolFacilities: @vol.VolFacilities, VolFieldTrip: @vol.VolFieldTrip, VolGarden: @vol.VolGarden, VolGroupProjects: @vol.VolGroupProjects, VolGuestSpeaker: @vol.VolGuestSpeaker, VolInternships: @vol.VolInternships, VolJobShadow: @vol.VolJobShadow, VolJoinCommittee: @vol.VolJoinCommittee, VolLibrary: @vol.VolLibrary, VolLunchtime: @vol.VolLunchtime, VolMentor: @vol.VolMentor, VolMockInterviews: @vol.VolMockInterviews, VolMusic: @vol.VolMusic, VolOffice: @vol.VolOffice, VolReading: @vol.VolReading, VolSpecialEvents: @vol.VolSpecialEvents, VolSports: @vol.VolSports, VolTutor: @vol.VolTutor, Website: @vol.Website, ZipCode1: @vol.ZipCode1 }
    end

    assert_redirected_to vol_path(assigns(:vol))
  end

  test "should show vol" do
    get :show, id: @vol
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vol
    assert_response :success
  end

  test "should update vol" do
    patch :update, id: @vol, vol: { BioEthnicity: @vol.BioEthnicity, BioLanguage: @vol.BioLanguage, City1: @vol.City1, Coordinator: @vol.Coordinator, Email1: @vol.Email1, Fax1: @vol.Fax1, Gender: @vol.Gender, IDVolunteer: @vol.IDVolunteer, NameFirst: @vol.NameFirst, NameLast: @vol.NameLast, NameMiddle: @vol.NameMiddle, NamePreferred: @vol.NamePreferred, Newsletter: @vol.Newsletter, Organization: @vol.Organization, Phone1: @vol.Phone1, PhoneCell: @vol.PhoneCell, Prefix: @vol.Prefix, RetireeEmploymentHistory: @vol.RetireeEmploymentHistory, State1: @vol.State1, Street1: @vol.Street1, StudentGradYear: @vol.StudentGradYear, StudentMajor: @vol.StudentMajor, StudentSchool: @vol.StudentSchool, Suffix: @vol.Suffix, Title: @vol.Title, VolArts: @vol.VolArts, VolCareerDay: @vol.VolCareerDay, VolCommitment: @vol.VolCommitment, VolComputer: @vol.VolComputer, VolFacilities: @vol.VolFacilities, VolFieldTrip: @vol.VolFieldTrip, VolGarden: @vol.VolGarden, VolGroupProjects: @vol.VolGroupProjects, VolGuestSpeaker: @vol.VolGuestSpeaker, VolInternships: @vol.VolInternships, VolJobShadow: @vol.VolJobShadow, VolJoinCommittee: @vol.VolJoinCommittee, VolLibrary: @vol.VolLibrary, VolLunchtime: @vol.VolLunchtime, VolMentor: @vol.VolMentor, VolMockInterviews: @vol.VolMockInterviews, VolMusic: @vol.VolMusic, VolOffice: @vol.VolOffice, VolReading: @vol.VolReading, VolSpecialEvents: @vol.VolSpecialEvents, VolSports: @vol.VolSports, VolTutor: @vol.VolTutor, Website: @vol.Website, ZipCode1: @vol.ZipCode1 }
    assert_redirected_to vol_path(assigns(:vol))
  end

  test "should destroy vol" do
    assert_difference('Vol.count', -1) do
      delete :destroy, id: @vol
    end

    assert_redirected_to vols_path
  end
end
