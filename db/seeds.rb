# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

["Nom", "Date de naissance", "Occupation"].each do |section_name|
  Section.create!(name: section_name, default: true)
end

Profile.create!.tap do |profile|
  ProfileSection.create!(
    section: Section.find_by_name("Nom"),
    profile: profile,
    value: "Nora"
  )
end