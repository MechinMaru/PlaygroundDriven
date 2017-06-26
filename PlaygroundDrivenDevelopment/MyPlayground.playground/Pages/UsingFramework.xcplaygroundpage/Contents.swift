//: [Previous](@previous)

import UIKit
import PlaygroundSupport
import MyFramework



let bundle = Bundle(for: LoginViewController.self)
let storyboard = UIStoryboard(name: "Main", bundle: bundle)
let vc = storyboard.instantiateInitialViewController()!


PlaygroundPage.current.liveView = vc

