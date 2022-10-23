
import UIKit
import AVKit

class ImageViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backButton(_ sender: UIButton){
        self.dismiss(animated: true)
    }
    
    @IBAction func videoButton(_ sender: UIButton){
        if let link = Bundle.main.path(forResource: "Ocean", ofType: "mp4"){
            let player = AVPlayerViewController()
            let video = AVPlayer(url: URL(filePath: link))
            player.player = video
            present(player, animated: true, completion: {
                video.play()
            })
        }
        else{
            let alerta = UIAlertController(title: "Error", message: "Video no encontrado", preferredStyle: UIAlertController.Style.alert)
            alerta.addAction(UIAlertAction(title: "Close", style: UIAlertAction.Style.cancel))
            self.present(alerta, animated: true, completion: nil)
        }
    }
}
