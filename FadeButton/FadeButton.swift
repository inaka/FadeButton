// FadeButton.swift
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

open class FadeButton: UIButton {
    
    /// Fade animation duration until the button looks like in its normal state
    @IBInspectable open var fadeDuration: Float = 0.5
    
    open override func awakeFromNib() {
        super.awakeFromNib()
        self.configureOverlays()
    }
    
    // MARK: - Private
    
    fileprivate var overlayBackgroundImage: UIImageView!
    fileprivate var overlayImage: UIImageView!
    fileprivate var overlayLabel: UILabel!

    private func configureOverlays() {
        self.configureOverlayBackgroundImage()
        self.configureOverlayImage()
        self.configureOverlayLabel()
    }

}

// MARK: - Touches Handling

extension FadeButton {
    
    open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.showOverlays()
    }
    
    open override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesCancelled(touches, with: event)
        self.fadeOutOverlays()
    }
    
    open override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        self.fadeOutOverlays()
    }
    
}

// MARK: - Images Setting

extension FadeButton {
    
    open override func setBackgroundImage(_ image: UIImage?, for state: UIControlState) {
        super.setBackgroundImage(image, for: state)
        if state == .highlighted {
            self.configureOverlayBackgroundImage()
        }
    }
    
    open override func setImage(_ image: UIImage?, for state: UIControlState) {
        super.setImage(image, for: state)
        if state == .highlighted {
            self.configureOverlayImage()
        }
    }
    
    open override func setTitle(_ title: String?, for state: UIControlState) {
        super.setTitle(title, for: state)
        if state == .highlighted {
            self.configureOverlayLabel()
        }
    }
    
}

// MARK: - Configurations

extension FadeButton {
    
    fileprivate func configureOverlayBackgroundImage() {
        self.overlayBackgroundImage?.removeFromSuperview()
        let image = UIImageView(image: self.backgroundImage(for: .highlighted))
        image.frame = CGRect(origin: .zero, size: self.frame.size)
        image.alpha = self.isHighlighted ? 1 : 0
        self.overlayBackgroundImage = image
        self.addSubview(self.overlayBackgroundImage)
    }
    
    fileprivate func configureOverlayImage() {
        guard let imageView = self.imageView else { return }
        self.overlayImage?.removeFromSuperview()
        let image = UIImageView(image: self.image(for: .highlighted))
        image.frame = imageView.frame
        image.alpha = self.isHighlighted ? 1 : 0
        self.overlayImage = image
        self.addSubview(self.overlayImage)
    }
    
    fileprivate func configureOverlayLabel() {
        guard let titleLabel = self.titleLabel else { return }
        self.overlayLabel?.removeFromSuperview()
        let label = UILabel()
        label.frame = titleLabel.frame
        label.alpha = self.isHighlighted ? 1 : 0
        label.font = titleLabel.font
        label.text = titleLabel.text
        label.textColor = self.titleColor(for: .highlighted)
        self.overlayLabel = label
        self.addSubview(self.overlayLabel)
    }
    
}

// MARK: - Showing and Fading Out

extension FadeButton {
    
    fileprivate func showOverlays() {
        self.overlayBackgroundImage.alpha = 1
        self.overlayImage.alpha = 1
        self.overlayLabel.alpha = 1
    }
    
    fileprivate func fadeOutOverlays() {
        let duration = TimeInterval(exactly: self.fadeDuration)!
        UIView.animate(withDuration: duration) { animations in
            self.overlayBackgroundImage.alpha = 0
            self.overlayImage.alpha = 0
            self.overlayLabel.alpha = 0
        }
    }
    
}
