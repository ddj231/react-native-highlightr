import UIKit
import Highlightr


class CodeEditorView: UIView {
    
    @objc var language = "Swift" {
        didSet {
            self.setupView()
        }
    }
    
    @objc var height = 100 {
        didSet {
            self.setupView()
        }
    }
    
    @objc var width = 100 {
        didSet {
            self.setupView()
        }
    }
    
    /*
    override init(frame: CGRect, textContainer: NSTextContainer?) {
      super.init(frame: frame, textContainer: textContainer)
      setupView()
    }
     */
    
     override init(frame: CGRect) {
       super.init(frame: frame)
       setupView()
     }

    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView() {
        // in here you can configure your view
        let textStorage = CodeAttributedString()
        textStorage.language = self.language
        let layoutManager = NSLayoutManager()
        textStorage.addLayoutManager(layoutManager)
       
        let size  = CGSize(width: self.height, height: self.width)
        let textContainer = NSTextContainer(size: size)
        layoutManager.addTextContainer(textContainer)
        
        let frame = CGRect(x: 0, y: 0, width: self.width, height: self.height)

        let textView = UITextView(frame: frame, textContainer: textContainer)
        
        //textView.translatesAutoresizingMaskIntoConstraints = false
        //self.textContainer = textView as! CodeEditorView
        self.addSubview(textView)
    
        /*
        let margins = self.layoutMarginsGuide
        textView.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 5)
        textView.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: 5)
        textView.topAnchor.constraint(equalTo: margins.topAnchor, constant: 5)
        textView.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: 5)
        textView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        textView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        self.bringSubviewToFront(textView)
        self.layoutIfNeeded()
 */
    }
    

}

@objc(CodeEditor)
class CodeEditor: RCTViewManager {

    /*
    @objc(multiply:withB:withResolver:withRejecter:)
    func multiply(a: Float, b: Float, resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock) -> Void {
        resolve(a*b)
    }
     */
    /*
    @objc var language = "Swift"{
        didSet {
            
        }
    }
 */
   
    
    override static func requiresMainQueueSetup() -> Bool {
      return true
    }
    
    override func view() -> UIView! {
        /*
        let textStorage = CodeAttributedString()
        textStorage.language = self.language
        let layoutManager = NSLayoutManager()
        textStorage.addLayoutManager(layoutManager)

        let textContainer = NSTextContainer(size: CGSize())
        layoutManager.addTextContainer(textContainer)

        let textView = UITextView(frame: CGRect(), textContainer: textContainer)
        return textView
         */
        return CodeEditorView(frame: CGRect())
    }
}
