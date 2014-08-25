

hash = {
  hash1: {key1: 'somevalue', key2: 'somevalue2'},
  hash2: {key1: 'valuesome', tags: [
                                    {keyz: 1, badkey: nil },
                                    {keyz: 2, badkey2: nil }
                                    ]
                                  }
}


puts "1,2"


output = hash[:hash2][:tags].map{ |value_within_tags|
                                  value_within_tags[:keyz ]
                                  }.join(',')

puts output