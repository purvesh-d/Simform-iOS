//
//  LabelExpandTableViewCell.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 14/04/23.
//

import UIKit

protocol ExpandLabelProtocol: AnyObject {
    func expandLabel(indexPath: IndexPath?)
}

class LabelExpandTableViewCell: UITableViewCell {
    
    @IBOutlet weak var btnOfData: UIButton!
    @IBOutlet weak var lblOfData: UILabel!
    weak var delegate: ExpandLabelProtocol?
    var indexPath: IndexPath?
    //var expandLabel: (() -> ())?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    @IBAction func btnAction(_ sender: UIButton) {
        //expandLabel?()
        delegate?.expandLabel(indexPath: indexPath)
    }
}
