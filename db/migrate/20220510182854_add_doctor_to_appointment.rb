# frozen_string_literal: true

class AddDoctorToAppointment < ActiveRecord::Migration[5.2]
  def change
    add_reference :appointments, :doctor, foreign_key: true
  end
end
