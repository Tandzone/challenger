# encoding: utf-8

namespace :dev_data do
  desc "Fill data base with sample data"
  task create: :environment do
    Challenge.delete_all

    Challenge.create!(
                 title: 'Cloche-pied',
                 description: 'Faites 200m à cloche-pied',
                 points: 10,
                 expires_at: Time.now + 1.week
    )
    puts "===> Sample date have been set in db"
  end
end