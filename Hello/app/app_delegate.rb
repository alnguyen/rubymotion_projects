class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible

    @window.rootViewController = TapController.alloc.initWithNibName(nil, bundle: nil)

    alert = UIAlertView.new
    alert.message = "Hello World!"
    alert.show
    true
  end
end
