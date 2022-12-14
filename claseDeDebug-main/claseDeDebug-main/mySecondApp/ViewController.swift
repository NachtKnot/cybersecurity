import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numeroInferior: UITextField!
    @IBOutlet weak var numeroSuperior: UITextField!
    @IBAction func division(_ sender: Any) {
        
//        CODIGO CON VALIDACION DE VARIABLES
        let dividendoUno = Float(numeroSuperior.text!)
        let divisorUno = Float(numeroInferior.text ?? "0")
        var mensaje = "Favor de completar ambos campos."

        if (dividendoUno != nil && divisorUno != nil)
        {
            let resultado = (dividendoUno ?? 0)/(divisorUno ?? 0)
            mensaje = String(resultado)
        }
        
        let alert = UIAlertController(title: "Alerta!!", message: mensaje, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.cancel))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func multi(_ sender: Any) {
        
//        CODIGO CON VALIDACION DE VARIABLES
        let dividendoUno = Float(numeroSuperior.text!)
        let divisorUno = Float(numeroInferior.text ?? "0")
        var mensaje = "Favor de completar ambos campos."

        if (dividendoUno != nil && divisorUno != nil)
        {
            let resultado = (dividendoUno ?? 0)*(divisorUno ?? 0)
            mensaje = String(resultado)
        }
        
        let alert = UIAlertController(title: "Alerta!!", message: mensaje, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.cancel))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func resta(_ sender: Any) {
        
//        CODIGO CON VALIDACION DE VARIABLES
        let dividendoUno = Float(numeroSuperior.text!)
        let divisorUno = Float(numeroInferior.text ?? "0")
        var mensaje = "Favor de completar ambos campos."

        if (dividendoUno != nil && divisorUno != nil)
        {
            let resultado = (dividendoUno ?? 0)-(divisorUno ?? 0)
            mensaje = String(resultado)
        }
        
        let alert = UIAlertController(title: "Alerta!!", message: mensaje, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.cancel))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func suma(_ sender: Any) {
        
//        CODIGO CON VALIDACION DE VARIABLES
        let dividendoUno = Float(numeroSuperior.text!)
        let divisorUno = Float(numeroInferior.text ?? "0")
        var mensaje = "Favor de completar ambos campos."

        if (dividendoUno != nil && divisorUno != nil)
        {
            let resultado = (dividendoUno ?? 0)+(divisorUno ?? 0)
            mensaje = String(resultado)
        }
        
        let alert = UIAlertController(title: "Alerta!!", message: mensaje, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.cancel))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBOutlet weak var tituloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tituloLabel.text = "Calculadora"
        tituloLabel.textColor = UIColor(red: 36/255, green: 80/255, blue: 155/255, alpha: 1.0)
    }
    
}

