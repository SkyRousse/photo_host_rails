
FactoryGirl.define do
  factory(:image) do
    title('Picture of Rocks')
    user
  end

  factory(:user) do
    name("Susan")
    email("Susan@testemail.com")
  end
end






# FactoryGirl.define do
#   factory(:image) do
#     title('Picture of Rocks')
#     user
#   end
#
#   factory(:user) do
#     name("Susan")
#     email("Susan@testemail.com")
#
#     factory :user_with_images do
#       transient do
#         images_count 5
#       end
#     end
#   end
# end
