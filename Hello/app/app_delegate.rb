class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible

    controller = TapController.alloc.initWithNibName(nil, bundle: nil)
  	nav_controller = UINavigationController.alloc.initWithRootViewController(controller)
  	nav_controller.title = "Taps"
  	alphabet_controller = AlphabetController.alloc.initWithNibName(nil, bundle: nil)
  	animate_controller = AnimateController.alloc.initWithNibName(nil, bundle: nil)
  	animate_controller.title = "Animate"

		other_controller = UIViewController.alloc.initWithNibName(nil, bundle: nil)
		other_controller.title = "Other"
		other_controller.view.backgroundColor = UIColor.purpleColor

   	tab_controller = UITabBarController.alloc.initWithNibName(nil, bundle: nil)
  	tab_controller.viewControllers = [alphabet_controller, other_controller, animate_controller, nav_controller]
  	@window.rootViewController = tab_controller
    true
  end

  def initWithNibName(name, bundle: bundle)
  	super
  	self.tabBarItem = UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemFavorites, tag: 1)
  	self
  end
end
