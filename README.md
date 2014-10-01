IKFadeButton
============
Fading Buttons for iOS.

Contact Us
--------
For **questions** or **general comments** regarding the use of this library, please use our public
[hipchat room](https://www.hipchat.com/gpBpW3SsT).

If you find any **bugs** or have a **problem** while using this library, please [open an issue](https://github.com/inaka/IKFadeButton/issues/new) in this repo (or a pull request :)).

And you can check all of our open-source projects at [inaka.github.io](http://inaka.github.io)

Overview
--------
A UIButton subclass to get a fading-out effect when touching a button in the simplest way possible.

<img src="https://raw.githubusercontent.com/inaka/IKFadeButton/master/Images/FadeButton.gif"/>

Setup
-----
You can quickly integrate IKFadeButton into your project via [CocoaPods](http://cocoapods.org/)

Usage
-----
In order to have the fading-out effect when touching your button you should follow these simple steps:

1) Select your UIButton from the Interface Builder and change its class to be IKFadeButton instead of UIButton.

<img src="https://raw.githubusercontent.com/inaka/IKFadeButton/master/Images/Screenshot1.png"/>

2) Change the Highlighted settings for your button, the ones IKFadeButton is prepared to support are text color, image and background image. Those are the properties that are going to be faded out when transitioning back from a highlighted state to a normal state.

<img src="https://raw.githubusercontent.com/inaka/IKFadeButton/master/Images/Screenshot2.png"/> 

3) That's it! You can optionally change the duration of the fade-out animation by leveraging the ".fadeDuration" property of your IKFadeButton instance (default value is 0.5 seconds).

Example
-------
If you want to get a deeper idea about how to use it we encourage you to download the sample project that you can find at the [master](https://github.com/inaka/IKFadeButton) branch.
