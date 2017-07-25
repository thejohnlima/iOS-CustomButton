# Custom UIBarButtonItem Example
An example of custom UIBarButtonItem
* Swift 3
* Xcode 8

 ![image](https://github.com/limadeveloper/iOS-CustomButton/blob/master/Docs/Images/01.png)
 
## Extension of UIBarButtonItem
 
 ```
 extension UIBarButtonItem {
    
    static func custom(with image: UIImage, frame: CGRect = CGRect(x: 0, y: 0, width: 36, height: 36), isRounded: Bool = true, borderWidth: CGFloat = 0, borderColor: UIColor = .white, target: AnyObject?, action: Selector, controlEvents: UIControlEvents = .touchUpInside, showsTouchWhenHighlighted: Bool = true) -> UIBarButtonItem {
        
        let button = UIButton(frame: frame)
        button.setBackgroundImage(image, for: .normal)
        button.showsTouchWhenHighlighted = showsTouchWhenHighlighted
        button.addTarget(target, action: action, for: controlEvents)
        
        if isRounded {
            button.layer.cornerRadius = frame.size.height / 2
        }
        
        button.layer.borderWidth = borderWidth
        button.layer.borderColor = borderColor.cgColor
        button.layer.masksToBounds = button.layer.cornerRadius > 0
        
        let buttonItem = UIBarButtonItem(customView: button)
        
        return buttonItem
    }
}
 ```
 
 ## How to use
 
 ```
 var r2Button = UIBarButtonItem()

 override func viewDidLoad() {
     super.viewDidLoad()

     r2Button = UIBarButtonItem.custom(
        with: #imageLiteral(resourceName: "R2-D2"),
        target: self,
        action: #selector(showDetails(sender:)),
        controlEvents: .touchUpInside
    )

    navigationItem.rightBarButtonItem = r2Button
 }
 ```
 
## Demo
 
 <p align="center">
<img src="https://github.com/limadeveloper/iOS-CustomButton/blob/master/Docs/Images/02.png" width="375">
</p>
<br>

<p align="center">
<img src="https://github.com/limadeveloper/iOS-CustomButton/blob/master/Docs/Images/03.png" width="665">
</p>
<br>