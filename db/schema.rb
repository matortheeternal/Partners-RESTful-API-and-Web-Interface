# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140803232225) do

  create_table "events", force: true do |t|
    t.string   "eventID"
    t.string   "date"
    t.string   "time"
    t.string   "location"
    t.string   "GPSLocation"
    t.boolean  "completionStatus"
    t.string   "description"
    t.string   "startTime"
    t.string   "endTime"
    t.integer  "totalTime"
    t.string   "survey"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "oauth_access_grants", force: true do |t|
    t.integer  "resource_owner_id", null: false
    t.integer  "application_id",    null: false
    t.string   "token",             null: false
    t.integer  "expires_in",        null: false
    t.text     "redirect_uri",      null: false
    t.datetime "created_at",        null: false
    t.datetime "revoked_at"
    t.string   "scopes"
  end

  add_index "oauth_access_grants", ["token"], name: "index_oauth_access_grants_on_token", unique: true, using: :btree

  create_table "oauth_access_tokens", force: true do |t|
    t.integer  "resource_owner_id"
    t.integer  "application_id"
    t.string   "token",             null: false
    t.string   "refresh_token"
    t.integer  "expires_in"
    t.datetime "revoked_at"
    t.datetime "created_at",        null: false
    t.string   "scopes"
  end

  add_index "oauth_access_tokens", ["refresh_token"], name: "index_oauth_access_tokens_on_refresh_token", unique: true, using: :btree
  add_index "oauth_access_tokens", ["resource_owner_id"], name: "index_oauth_access_tokens_on_resource_owner_id", using: :btree
  add_index "oauth_access_tokens", ["token"], name: "index_oauth_access_tokens_on_token", unique: true, using: :btree

  create_table "oauth_applications", force: true do |t|
    t.string   "name",         null: false
    t.string   "uid",          null: false
    t.string   "secret",       null: false
    t.text     "redirect_uri", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "oauth_applications", ["uid"], name: "index_oauth_applications_on_uid", unique: true, using: :btree

  create_table "schools", force: true do |t|
    t.integer  "IDSchool"
    t.string   "NameSchool"
    t.string   "Principal"
    t.string   "Street"
    t.string   "City"
    t.string   "State"
    t.string   "Zip"
    t.string   "Phone"
    t.string   "Fax"
    t.string   "District"
    t.string   "Region"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "usertype"
    t.integer  "volunteer"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

  create_table "vol_events", force: true do |t|
    t.integer  "IDEvent"
    t.integer  "IDVolunteer"
    t.string   "DateEvent"
    t.string   "EventType"
    t.string   "Project"
    t.float    "Hours",                  limit: 24
    t.string   "Feedback"
    t.float    "HoursTotal",             limit: 24
    t.string   "NameSchool"
    t.string   "Status"
    t.string   "NameTeacher"
    t.string   "Time"
    t.string   "Instructions"
    t.string   "DatePassportCreated"
    t.string   "DatePassportDue"
    t.string   "IDRequest"
    t.string   "DateCreated"
    t.string   "DateModified"
    t.string   "AccountCreated"
    t.string   "AccountModified"
    t.string   "AccountPassportCreated"
    t.string   "ScheduleOngoing"
    t.string   "NameVolunteer"
    t.string   "EmailTeacher"
    t.string   "EmailVolunteer"
    t.string   "ProjectAndDate"
    t.string   "FeedbackVolunteer"
    t.string   "FeedbackTeacher"
    t.string   "AcademicYear"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vols", force: true do |t|
    t.integer  "IDVolunteer"
    t.string   "Prefix"
    t.string   "NameFirst"
    t.string   "NamePreferred"
    t.string   "NameMiddle"
    t.string   "NameLast"
    t.string   "Suffix"
    t.string   "Title"
    t.string   "Organization"
    t.string   "Street1"
    t.string   "City1"
    t.string   "State1"
    t.string   "ZipCode1"
    t.string   "Phone1"
    t.string   "PhoneCell"
    t.string   "Fax1"
    t.string   "Email1"
    t.string   "Website"
    t.string   "Gender"
    t.string   "BioEthnicity"
    t.string   "BioLanguage"
    t.string   "Coordinator"
    t.string   "Newsletter"
    t.string   "RetireeEmploymentHistory"
    t.string   "VolCommitment"
    t.string   "StudentSchool"
    t.string   "StudentMajor"
    t.string   "StudentGradYear"
    t.string   "VolMentor"
    t.string   "VolGuestSpeaker"
    t.string   "VolMockInterviews"
    t.string   "VolFieldTrip"
    t.string   "VolJobShadow"
    t.string   "VolComputer"
    t.string   "VolArts"
    t.string   "VolGarden"
    t.string   "VolTutor"
    t.string   "VolCareerDay"
    t.string   "VolInternships"
    t.string   "VolSpecialEvents"
    t.string   "VolSports"
    t.string   "VolLibrary"
    t.string   "VolFacilities"
    t.string   "VolJoinCommittee"
    t.string   "VolReading"
    t.string   "VolGroupProjects"
    t.string   "VolMusic"
    t.string   "VolLunchtime"
    t.string   "VolOffice"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "volunteers", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "firstName"
    t.string   "lastName"
    t.float    "totalHours",  limit: 24
    t.integer  "totalEvents"
    t.string   "rank"
    t.string   "events"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
