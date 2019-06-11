//
//  ViewController.swift
//  poo
//
//  Created by Mario Sandoval on 6/2/19.
//  Copyright © 2019 Mario Sandoval. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelTitulo: UILabel!
    
    var objetoMazda3Mini: Mazda3Mini?
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTitulo.text = "Fábrica de Automóviles"
        
        print("Se actvó la func viewDidLoad")
    }

    @IBAction func crearObjeto(_ sender: UIButton) {
        
        objetoMazda3Mini = Mazda3Mini()
        print("Objeto creado")
        
    }
    
    @IBAction func mostrarPropiedades(_ sender: UIButton) {
        if objetoMazda3Mini != nil {
            print("El carro Mazda 3 es de tamaño \(objetoMazda3Mini!.tamaño), tiene \(objetoMazda3Mini!.numeroPuertas) puertas, su color es \(objetoMazda3Mini!.color), su precio es de \(objetoMazda3Mini!.precio) y su porcentaje de carga es \(objetoMazda3Mini!.porcentajeCarga)%")
        }else{
            print("No se ha creado el objeto")
        }
    }
    
    
    @IBAction func encender(_ sender: UIButton) {
        if objetoMazda3Mini != nil {
            objetoMazda3Mini!.encender()
        }else{
            print("No se ha creado el objeto")
        }
        
    }
    
    @IBAction func acelerar(_ sender: UIButton) {
        if objetoMazda3Mini != nil {
            objetoMazda3Mini!.acelerar()
        }else{
            print("No se ha creado el objeto")
        }
    }
    
    @IBAction func recargar(_ sender: UIButton) {
        if objetoMazda3Mini != nil {
            objetoMazda3Mini!.recargar()
        }else{
            print("No se ha creado el objeto")
        }
    }
    
    
    //Funciones del ciclo de vida del ViewController
    
    override func loadView() {
        super.loadView()
        print("Se activó la función loadView")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("Se activó la funcion view WillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("Se activó la funcion view viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("Se activó la funcion view viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("Se activó la funcion view viewDidDisappear")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("Se activó la func didReceiveMemoryWarning")
    }
}

