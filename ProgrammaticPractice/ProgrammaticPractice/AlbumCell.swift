//
//  AlbumCell.swift
//  ProgrammaticPractice
//
//  Created by Jonathan Shoemaker on 8/13/20.
//  Copyright © 2020 JonathanShoemaker. All rights reserved.
//
// reference for this entire mini project: https://www.youtube.com/watch?v=bXHinfFMkFw&t=1187s

import UIKit

class AlbumCell: UITableViewCell {
    
    var albumImageView = UIImageView()
    var albumTitleLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(albumImageView)
        addSubview(albumTitleLabel)
        
        configureImageView()
        configureTitleLabel()
        setImageConstraints()
        setTitleLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(album: Album) {
        albumImageView.image = album.image
        albumTitleLabel.text = album.title
    }
    
    func configureImageView() {
        albumImageView.layer.cornerRadius = 10
        albumImageView.clipsToBounds = true
        
    }
    
    func configureTitleLabel() {
        albumTitleLabel.numberOfLines = 0
        albumTitleLabel.adjustsFontSizeToFitWidth = true
        
    }
    
    func setImageConstraints() {
        albumImageView.translatesAutoresizingMaskIntoConstraints = false
        albumImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        albumImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        albumImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        albumImageView.widthAnchor.constraint(equalToConstant: 80).isActive = true
    }
    
    func setTitleLabelConstraints() {
        albumTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        albumTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        albumTitleLabel.leadingAnchor.constraint(equalTo: albumImageView.trailingAnchor, constant: 20).isActive = true
        albumTitleLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        albumTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
    }
    
}
