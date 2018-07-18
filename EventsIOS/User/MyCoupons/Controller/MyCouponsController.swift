//
//  MyCouponsController.swift
//  EventsIOS
//
//  Created by Luis Castillo on 17/07/18.
//  Copyright © 2018 Luis Castillo. All rights reserved.
//

import UIKit

class MyCouponsController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionCoupons: UICollectionView!
    private var coupons: [MyCoupons] = [MyCoupons]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionCoupons.delegate = self
        collectionCoupons.dataSource = self
        coupons.append( MyCoupons(image: "food-enchiladas", title: "2X1 Lasaña", expiration: "27/07/18", description: "En la compra de una laseña grande, te llevas la segunda gratis"))
        coupons.append( MyCoupons(image: "food-huacamole", title: "Refresco pareja", expiration: "15/08/18", description: "Si llevas a un acompañante te regalamos otra bedida"))
        coupons.append( MyCoupons(image: "food-manchamantel", title: "Lunes de Helado", expiration: "19/11/18", description: "Llevate un helado de sabor chocolate con un 10% de descuento"))
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return coupons.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionCoupons.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCouponsCell
        let coupon = coupons[indexPath.item]
        cell.txtDescription.text = coupon.description
        cell.txtExpiration.text = coupon.expiration
        cell.txtTitle.text = coupon.title
        cell.image.image = UIImage(named: coupon.image)
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}