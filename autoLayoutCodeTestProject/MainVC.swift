//
//  ViewController.swift
//  autoLayoutCodeTestProject
//
//  Created by Oğuzhan Erdem on 23.03.2022.
//

import UIKit

class MainVC: UIViewController {
    //image (4.adım)
    private let googleResim: UIImageView = {
        let oguzImageView = UIImageView()
        oguzImageView.image = UIImage(named: "googleImage")// görselimizi ekleme kodu "string" türünden olucak
        oguzImageView.contentMode = .scaleToFill // ekrana boyutsal olarak ayarlama kodudur.
        
        oguzImageView.translatesAutoresizingMaskIntoConstraints = false
        
        
        return oguzImageView
    }()
    
    
    
    
    
    
    
    
    //Collection view ekle (1.Adım)
    private let myCollectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        
        // collectionView özelleştirme
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 16
        cv.backgroundColor = .brown
        cv.translatesAutoresizingMaskIntoConstraints = false // otomatik story boards kodlarını aktif etme kendi kodlarım çalışsın
        
        return cv
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        setupViews()
    }
    
    
    //2.adım
    func setupViews(){
        view.addSubview(myCollectionView)
        view.addSubview(googleResim)
        constraintVerme()
        resimeConstraintVerme()
    }

}


//MARK: - Constraintleri veriyorum.
// 3.adım.
extension MainVC {
    //extension ile sınıfı gelişletip (MainVC ye ek özellikleri yazıyoruz.)
    //colletionView
    func constraintVerme(){
        NSLayoutConstraint.activate([
            myCollectionView.topAnchor.constraint(equalTo: view.topAnchor),
            myCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            myCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            myCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
  
        ])
  
    }
    
    
    
    
    
    func resimeConstraintVerme(){
        NSLayoutConstraint.activate([
          //  googleResim.topAnchor.constraint(equalTo: view.topAnchor),
            googleResim.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            googleResim.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            //googleResim.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            //googleResim.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            //googleResim.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        
        
        ])
    }
    

}
