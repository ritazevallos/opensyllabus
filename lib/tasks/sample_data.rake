#import 'dump.db'

namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    #ActiveRecord::Base.connection.execute(IO.read("dump.db"))

    Topic.create!(name:"Unsorted")
    Topic.create!(name:"Philosophy")

    30.times do |n|
      url = "url.html"
      title = "Pellentesque habitant morbi tristique senectus"
      chnm_cache = "<p>et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>"
      Syllabus.create!(url:url,
                       chnm_cache:chnm_cache,
                       topic_id: 1,
                       title: title)
    end
    30.times do |n|
      url = "url.html"
      title = "Pellentesque habitant morbi tristique senectus"
      chnm_cache = "<p><b>Pellentesque</b> habitant morbi tristique senectus </p>
            <p>et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>"
      Syllabus.create!(url:url,
                       chnm_cache:chnm_cache,
                       topic_id: 2,
                       title: title)
    end
  end
end