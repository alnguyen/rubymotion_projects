class TimerController < UIViewController
	include BW::Reactor
	
	def viewDidLoad
		super
		self.view.backgroundColor = UIColor.whiteColor
		self.title = "Timer"
		@time = 0

		@label = UILabel.new
		@label.text = @time.to_s
		@label.frame = [[view.frame.size.width / 2, 100], [view.frame.size.width , 40]]
		self.view.addSubview(@label)

    @start_button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @start_button.setTitle("Start", forState:UIControlStateNormal)
    @start_button.sizeToFit
    @start_button.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2)
    self.view.addSubview @start_button

    @end_button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @end_button.setTitle("Stop", forState:UIControlStateNormal)
    @end_button.sizeToFit
    @end_button.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2 + @start_button.size.height)
    self.view.addSubview @end_button

    @reset_button


    # Button action
    @start_button.addTarget(self, action: "start_timer", forControlEvents:UIControlEventTouchUpInside)
    @end_button.addTarget(self, action: "end_timer", forControlEvents:UIControlEventTouchUpInside)
    true
	end

	def start_timer
		@timer = EM.add_periodic_timer 1.0 do
			@time += 1
			@label.text = @time.to_s
		end
	end

	def end_timer
		EM.cancel_timer(@timer)
	end
end