# class MyValidator < ActiveModel::Validator
#   def validate(title)
#     unless post.title.include? 'Wont Believe; Secret; Top [number]; Guess'
#         record.errors[:title] << 'Need a title including these keywords.'
#     end
#   end
# end
