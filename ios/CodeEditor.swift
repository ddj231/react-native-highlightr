import UIKit
import Highlightr


class CodeEditorView: UIView {
    
    @objc var language = "Swift" {
        didSet {
            self.setupView()
        }
    }
    
    @objc var theme = "paraiso-dark" {
        didSet {
            self.setupView()
        }
    }
    
    @objc var textView: UITextView?
    
    //@objc var onChangeText: RCTBubblingEventBlock?
    

     override init(frame: CGRect) {
       super.init(frame: frame)
       setupView()
     }

    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    /*
    func addChangeTextObserver(){
        NotificationCenter.default.addObserver(self, selector: #selector(handleChangeText(notification:)), name: UITextView.textDidChangeNotification, object: self.textView!)
    }
    
    @objc func handleChangeText(notification: Notification){
        guard textView != nil else {
            return
        }
        guard let onChangeText = self.onChangeText else {
            return
        }
        
        onChangeText(self.textView!.text)
    }
    */
    
    private func setupView() {
        let textStorage = CodeAttributedString()
        textStorage.language = self.language
        textStorage.highlightr.setTheme(to: self.theme)

        let layoutManager = NSLayoutManager()
        textStorage.addLayoutManager(layoutManager)
       
        let size  = CGSize(width: self.bounds.height, height: self.bounds.width)
        let textContainer = NSTextContainer(size: size)
        layoutManager.addTextContainer(textContainer)
        
        textView = UITextView(frame: self.bounds, textContainer: textContainer)
        textView?.backgroundColor = UIColor.clear
        //addChangeTextObserver()
        
        for view in self.subviews {
            view.removeFromSuperview()
        }
        
        self.addSubview(textView!)
    }
    
    override func layoutSubviews() {
        setupView()
        let margins = self.layoutMarginsGuide
        guard textView != nil else {
            return
        }
        
        NSLayoutConstraint.activate([
            textView!.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 5),
            textView!.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: 5),
            textView!.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: 5),
            textView!.topAnchor.constraint(equalTo: margins.topAnchor, constant: 5),
            textView!.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            textView!.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        ])
    }
    

}

@objc(CodeEditor)
class CodeEditor: RCTViewManager {

    override static func requiresMainQueueSetup() -> Bool {
      return true
    }
    
    override func view() -> UIView! {
        return CodeEditorView(frame: CGRect())
    }
}
