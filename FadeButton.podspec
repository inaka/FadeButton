Pod::Spec.new do |s|
  s.name         = "FadeButton"
  s.version      = "2.0.0"
  s.summary      = "Fading effects for buttons in iOS made simple"
  s.description  = <<-DESC
                   Just a customizable UIButton subclass that provides fading effects that display upon touch.
                   DESC

  s.homepage     = "https://github.com/inaka/FadeButton/tree/master"
  s.screenshots  = "https://raw.githubusercontent.com/inaka/FadeButton/master/Assets/V2/sample.gif"
  s.license      = { :type => 'Apache License, Version 2.0', :text => <<-LICENSE
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
    LICENSE
  }
  s.authors    = { "Pablo Villar" => "https://twitter.com/volbap", "Inaka" => "http://inaka.net" }
  s.social_media_url   = "http://twitter.com/inaka"
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/inaka/FadeButton.git", :tag => s.version }
  s.source_files  = "FadeButton/**/*.swift"
end
