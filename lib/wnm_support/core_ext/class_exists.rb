def class_exists?(class_name)
  klass = Object.const_get(class_name)
  return klass.is_a?(Class)
rescue NameError
  return false
end