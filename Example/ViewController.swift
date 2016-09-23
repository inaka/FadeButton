// ViewController.swift
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

class ViewController: UIViewController {
    
    @IBOutlet weak var firstView: SampleView!
    @IBOutlet weak var secondView: SampleView!
    @IBOutlet weak var thirdView: SampleView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.firstView.duration = 0.5
        self.secondView.duration = 1.0
        self.thirdView.duration = 2.0
    }

}
