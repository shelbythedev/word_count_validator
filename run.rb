# FUNCTION:     validate_word_count
# DESCRIPTION:  Takes in a custom form's data, as well as target count for words
#               Validates length and returns true or false
def validate_word_count(form_data, word_target)
  # Initialize empty array
  words = []

  # Iterate over each form field
  form_data.each do |field|

    # Push the field's content into word array
    words << field["value"]
  end

  # Remove special characters and spacing
  words = words.join(' ').gsub(/\r\n?/, "").split

  # Compare length and return validation pass/fail
  if words.length <= word_target
    return false
  else
    return true
  end
end
