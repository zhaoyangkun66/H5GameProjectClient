cc.Class({
    extends: cc.Mask,
    setVertsDirtySprite() {
        if (this._spriteFrame) {
            this.setVertsDirty();
            this._updateMaterial();
        }
    },
    onEnable() {
        this._super();
        this.node.on(cc.Node.EventType.SIZE_CHANGED, this.setVertsDirtySprite, this);
    },
    onDisable() {
        this._super();
        this.node.off(cc.Node.EventType.SIZE_CHANGED, this.setVertsDirtySprite, this);
    },
});
