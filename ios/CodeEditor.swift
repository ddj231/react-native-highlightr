import UIKit
import Highlightr


class CodeEditorView: UIView, UITextViewDelegate {
    
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
    
    @objc var onChangeText: RCTBubblingEventBlock?
    
    @objc var value = "" {
        didSet {
            guard textView != nil else {
                return
            }
            textView!.text = value
            //let range = NSMakeRange(0, textView!.textStorage.string.count)
            //textView!.textStorage.replaceCharacters(in: range, with: value)
        }
    }
    

     override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
     }

    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
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
        textView?.delegate = self
        guard self.textView != nil else {return}
        self.textView!.text = value

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
    
    //MARK: Text View Delegate
    func textViewDidChange(_ textView: UITextView) {
        guard self.textView != nil else { return }
        guard let onChangeText = self.onChangeText else { return }
        onChangeText(["text": self.textView!.textStorage.string])
    }
}

@objc(RNTCodeEditor)
class RNTCodeEditor: RCTViewManager {

    override static func requiresMainQueueSetup() -> Bool {
      return true
    }
    
    override func view() -> UIView! {
        return CodeEditorView(frame: CGRect())
    }
}
