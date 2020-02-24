//
//  PostNode.swift
//  Texture-Darkmode
//
//  Created by KIM JUNG HWAN on 2020/02/24.
//  Copyright © 2020 KIM JUNG HWAN. All rights reserved.
//

import AsyncDisplayKit

class PostNode: ASCellNode {
    
    lazy var imageNode = { ASImageNode() }()
    let image = UIImage(named: "ico_add")
    
    override init() {
        super.init()
        self.automaticallyManagesSubnodes = true
        self.imageNode.contentMode = .scaleToFill
        self.imageNode.image = image
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        imageNode.style.preferredSize.width = constrainedSize.max.width
        imageNode.style.preferredSize.height = 300
        return ASWrapperLayoutSpec(layoutElement: imageNode)
    }
}
