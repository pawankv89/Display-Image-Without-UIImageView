# Display-Image-Without-UIImageView

=========

## Display Image Without UIImageView in Swift 5.

### In this demo show Convert Text File To ArrayList.

------------
Added Some screens here.

![](https://github.com/pawankv89/Display-Image-Without-UIImageView/blob/master/images/screen_1.png)




## Usage
------------

#### Display Image Without UIImageView

```swift

class ViewController: UIViewController {

var cuatomView: UIView = {
let cView = UIView()
cView.backgroundColor = .red
cView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
cView.center = CGPoint(x: UIScreen.main.bounds.width/2, y: UIScreen.main.bounds.height/2)

//Creating Rounded Corners
cView.layer.cornerRadius = 10

//Adding Shadow Effects
cView.layer.shadowOffset = CGSize(width: 5, height: 5)
cView.layer.shadowOpacity = 0.7
cView.layer.shadowRadius = 10
cView.layer.shadowColor = UIColor(red: 44.0/255.0, green: 62.0/255.0, blue: 80.0/255.0, alpha: 1).cgColor

//Applying Borders
cView.layer.borderColor = UIColor.green.cgColor
cView.layer.borderWidth = 5

//Displaying Images
cView.layer.contents = UIImage(named: "tree")?.cgImage
cView.layer.contentsGravity = CALayerContentsGravity.resize
cView.layer.masksToBounds = true

//Background Color and Opacity
cView.layer.backgroundColor = UIColor.blue.cgColor
cView.layer.opacity = 0.5

return cView
}()

override func viewDidLoad() {
super.viewDidLoad()
// Do any additional setup after loading the view.
self.view.addSubview(cuatomView)
}


}


```

## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).

## Change-log

A brief summary of each this release can be found in the [CHANGELOG](CHANGELOG.mdown). 
