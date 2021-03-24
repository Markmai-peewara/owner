import UIKit

class ViewController: UIViewController{
    let label = UILabel()

    var count = 0

    override func viewDidLoad(){
        super.viewDidLoad()

        //ボタンの部分
        let button = UIButton()

        button.frame = CGRect(x:screenWidth/4, y:screenHeight/2,
                       width:screenWidth/2, height:60)

        button.setTitle("時間", for:UIControl.State.normal)

        button.titleLable?.font = UIFont.systemFont(ofSize: 36)

        //時間表示
        let now = NSDate()

        let formatter = NSDateFormatter()
        formatter.dateFormat = "HH:MM"

        let Timenow = formatter.stringFromDate(now)

        label.text = Timenow

        label.textAlignment = NSTextAlignment.center

        label.font = UIFont.systemFont(ofSize: 36)

        //3秒表示
        var timeCount = 3
		    var TimeLimit = NSTimer.scheduledTimerWithTimeInterval(
			         1.0,
			        target: self,
			        selector: "countUp",
			        userInfo: nil,
			        repeats: true
			        )
        
        @objc func countUp(){
            timeCount -= 1
            if timeCount < 1 {
                TimeLimit.invalidate()
            }
        }

        override func didReceiveMemoryWarning(){
            super.didReceiveMemoryWarning()
        }
    }
}
