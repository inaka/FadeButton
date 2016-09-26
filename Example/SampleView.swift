// SampleView.swift
// FadeButton
//
// Copyright (c) 2016 Inaka - http://inaka.net/
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import UIKit

class SampleView: UIView {
    
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var sampleButton: FadeButton!

    open var duration: TimeInterval = 0.5 {
        didSet {
            self.durationLabel.text = String(format: "%.1f s", duration)
            self.sampleButton.fadeDuration = Float(duration)
        }
    }
    
    @IBAction func incrementDuration(_ sender: UIButton) {
        let newDuration = self.duration + 0.1
        if newDuration < 10 {
            self.duration = newDuration
        }
    }
    
    @IBAction func decrementDuration(_ sender: UIButton) {
        let newDuration = self.duration - 0.1
        if newDuration > 0 {
            self.duration = newDuration
        }
    }
    
}
