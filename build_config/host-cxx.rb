MRuby::Build.new do |conf|
  toolchain :gcc

  enable_debug
  # include the default GEMs
  conf.gembox 'default'

  # C compiler settings
  conf.cc.defines = %w(MRB_USE_DEBUG_HOOK)
  conf.enable_debug
  conf.enable_cxx_abi
  conf.enable_test
end
