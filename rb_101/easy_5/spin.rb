str = 'hello world'
 => "hello world"
3.0.0 :012 > str.split
 => ["hello", "world"]
3.0.0 :013 > str.split.join
 => "helloworld"
3.0.0 :014 > str.split.join(' ')
 => "hello world"
3.0.0 :015 > str.object_id
 => 300
3.0.0 :016 > str.split.join(' ').object_id
 => 320
3.0.0 :017 >

# yay my testing worked!
