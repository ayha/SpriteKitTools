extension SKLabelNode {

    /*
    Mimic the dropshadow style to a SKLabelNode

    - Default dark gray shadow with 2 pt offset at the south-east direction

    - Known Issue with SKLabelHorizontalAlignmentMode and SKLabelVerticalAlignmentMode

    */


    func dropShadow(shadowColor: UIColor = SKColor.darkGray, xOffset: CGFloat = 2, yOffset: CGFloat = -2){
        //print("dropshadow: \(shadowColor)")
        let shadowNode: SKLabelNode = SKLabelNode(text: self.text)
        shadowNode.fontName = self.fontName
        shadowNode.fontSize = self.fontSize
        shadowNode.fontColor = shadowColor
        shadowNode.position = CGPoint(x: xOffset, y: yOffset)
        shadowNode.zPosition = -1
        self.addChild(shadowNode)
    }

}
