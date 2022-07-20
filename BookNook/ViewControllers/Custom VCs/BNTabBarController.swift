//
//  BNTabBarController.swift
//  BookNook
//
//  Created by Tei Akpotosu-Nartey on 7/12/22.
//

import UIKit

class BNTabBarController: UITabBarController {
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().backgroundColor = .black
        UITabBar.appearance().tintColor = .white
        UITabBar.appearance().unselectedItemTintColor = .white
        UITabBar.appearance().itemWidth = 10

        viewControllers = [createHomeNC(), createFavouriteNC(),createStoreNC(), createSettingsNC()]
     
        
    }
    override func viewWillLayoutSubviews() {
            super.viewWillLayoutSubviews()

            self.tabBar.layer.masksToBounds = true
            self.tabBar.isTranslucent = true
            self.tabBar.barStyle = .black
            self.tabBar.layer.cornerRadius = 18
            self.tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
//           tabFrame = self.tabBar.frame; //self.TabBar is IBOutlet of your TabBar
//           tabFrame.size.height = 80 ;
//           tabFrame.origin.y = self.view.frame.size.height - 80 ;
//           self.tabBar.frame = tabFrame;

        }
    
    
    func createHomeNC() -> UINavigationController {
        let homeVC = HomeVC()
        homeVC.title = "BookNook"
        homeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "home-icon"), tag: 0)
        return UINavigationController(rootViewController: homeVC)
    }
    
    func createFavouriteNC() -> UINavigationController{
        let favouriteVC = FavouriteVC()
        favouriteVC.title = "Favourite"
        favouriteVC.tabBarItem = UITabBarItem(title: "Favourite", image: UIImage(named: "favourite-icon"), tag: 1)
        
        return UINavigationController(rootViewController: favouriteVC)
    }
    
    func createStoreNC() -> UINavigationController{
        let storeVC = StoreVC()
        storeVC.tabBarItem = UITabBarItem(title: "Store", image: UIImage(named: "store-icon"), tag: 2)
        return UINavigationController(rootViewController: storeVC)
    }
    
    func createSettingsNC() -> UINavigationController{
        let settingsVC = SettingsVC()
        settingsVC.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(named: "settings-icon"), tag: 3)
        return UINavigationController(rootViewController: settingsVC)
            
        }
    
    
}

extension UITabBar {
    override open func sizeThatFits(_ size: CGSize) -> CGSize {
        super.sizeThatFits(size)
        var sizeThatFits = super.sizeThatFits(size)
        sizeThatFits.height = 71
        return sizeThatFits
    }
}
