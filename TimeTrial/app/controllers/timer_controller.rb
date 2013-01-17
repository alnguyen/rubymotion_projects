class TimerController < UIViewController
	def viewDidLoad
		super
		self.view.backgroundColor = UIColor.whiteColor
		self.title = "Timer"
		@label = UILabel.alloc.initWithFrame(CGRectZero)
    @label.text = "Timer"
    @label.sizeToFit
    @label.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2)
    self.view.addSubview @label
	end
end