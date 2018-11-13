//
//  ViewController.swift
//  AppExample
//
//  Created by Nathan Ranghel on 04/11/18.
//  Copyright © 2018 Nathan Ranghel. All rights reserved.
//


import UIKit

class MainViewController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Assign self for delegate for that ViewController can respond to UITabBarControllerDelegate methods
        self.delegate = self
        
    }
    
    
    // +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // Override vieWillAppear
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        // ******************************************************
        // Create Tab one
        let tabOne = TabOne_ViewController()
        
        // represent .Icon
        let tabOneBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        tabOne.tabBarItem = tabOneBarItem
        
        
        // ******************************************************
        // Create Tab two
        let tabTwo = TabTwo_ViewController()
        
        // represent .Icon
        let tabTwoBarItem2 = UITabBarItem(tabBarSystemItem: .downloads, tag: 2)
        
        tabTwo.tabBarItem = tabTwoBarItem2
        
        
        // ******************************************************
        // Create Tab three
        let tabThree = TabThree_ViewController()
        
        // represent .Icon
        let tabTwoBarItem3 = UITabBarItem(tabBarSystemItem: .history, tag: 3)
        
        tabThree.tabBarItem = tabTwoBarItem3
        
        
        // ******************************************************
        // Create Tab four
        let tabFour = CustomTableView()
        
        // represent .Icon
        let tabTwoBarItem4 = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 4)
        
        tabFour.tabBarItem = tabTwoBarItem4
        
        
        // +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
        
        
        self.viewControllers = [tabOne, tabTwo, tabThree, tabFour]
    }
    
    // +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    // UITabBarControllerDelegate method
    // get the Tab tile in console
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        //print("Selected \(viewController.title!)")
    }
    
    
    
}
