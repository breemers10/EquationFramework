Pod::Spec.new do |s|

  s.name         = "EquationFramework"
  s.version      = "1.0.0"
  s.summary      = "Very easy framework with equations"
  s.description  = "You can log to console, log to file, check if number is prime and do the standard equations if needed"
  s.homepage         = "https://github.com/breemers10/EquationFramework"
  s.license      = "MIT"
  s.author       = { "Kristaps Bremers" => "kristaps.bremers@chi.lv" }
  s.platform     = :ios, "12.0"
  s.source       = { :git => "https://github.com/breemers10/EquationFramework.git", :tag => "1.0.0"  }
  s.source_files = "EquationFramework"
  s.swift_version = "4.2"

end