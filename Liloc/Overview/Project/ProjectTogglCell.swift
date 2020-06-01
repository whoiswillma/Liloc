//
//  ProjectTogglCell.swift
//  Liloc
//
//  Created by William Ma on 5/28/20.
//  Copyright © 2020 William Ma. All rights reserved.
//

import UIKit

protocol ProjectTogglCellDelegate: AnyObject {

    func projectLinkButtonPressed(on cell: ProjectTogglCell)
    func entriesButtonPressed(on cell: ProjectTogglCell)

}

class ProjectTogglCell: UITableViewCell {

    private(set) var projectLinkButton: UIButton!

    weak var delegate: ProjectTogglCellDelegate?

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        selectionStyle = .none

        projectLinkButton = UIButton(type: .system)
        projectLinkButton.titleLabel?.font = .preferredFont(forTextStyle: .headline)
        projectLinkButton.setImage(UIImage(systemName: "link"), for: .normal)
        projectLinkButton.setTitle("link project", for: .normal)
        projectLinkButton.imageEdgeInsets = UIEdgeInsets(top: 4, left: 0, bottom: 4, right: 8)
        projectLinkButton.imageView?.contentMode = .scaleAspectFit
        projectLinkButton.contentHorizontalAlignment = .leading
        projectLinkButton.addTarget(self, action: #selector(projectLinkButtonPressed(_:)), for: .touchUpInside)

        addSubview(projectLinkButton)
        projectLinkButton.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(20)
            make.top.bottom.equalToSuperview().inset(4)
        }

        // hide the separator
        separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @objc private func projectLinkButtonPressed(_ sender: UIButton) {
        delegate?.projectLinkButtonPressed(on: self)
    }

    @objc private func entriesButtonPressed(_ sender: UIButton) {
        delegate?.entriesButtonPressed(on: self)
    }

}
