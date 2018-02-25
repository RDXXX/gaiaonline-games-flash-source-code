.class public Lcom/gaiaonline/monstergalaxy/shop/DealTableRow;
.super Lcom/gaiaonline/monstergalaxy/shop/TableRow;
.source "DealTableRow.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gaiaonline/monstergalaxy/shop/TableRow",
        "<",
        "Lcom/gaiaonline/monstergalaxy/model/shop/Deal;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/model/shop/Deal;I)V
    .locals 10
    .param p1, "deal"    # Lcom/gaiaonline/monstergalaxy/model/shop/Deal;
    .param p2, "rowIndex"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/shop/TableRow;-><init>(Ljava/lang/Object;)V

    .line 23
    sget-object v1, Lcom/gaiaonline/monstergalaxy/shop/DealTableRow;->CELL_SIZE:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v2, Lcom/gaiaonline/monstergalaxy/shop/DealTableRow;->CELL_SIZE:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v1, v2}, Lcom/gaiaonline/monstergalaxy/shop/DealTableRow;->setSize(FF)V

    .line 25
    rem-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_0

    .line 26
    const-string v1, "shop_color_01"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/shop/DealTableRow;->addBackground(Lcom/badlogic/gdx/graphics/Color;)V

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/shop/Deal;->getIconAssetName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 30
    new-instance v8, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/shop/Deal;->getIconAssetName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 31
    .local v8, "icon":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    const v1, 0x3fa66666    # 1.3f

    invoke-virtual {v8, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setScale(F)V

    .line 32
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v8, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 33
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-virtual {v8, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 34
    invoke-virtual {p0, v8}, Lcom/gaiaonline/monstergalaxy/shop/DealTableRow;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 37
    .end local v8    # "icon":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    :cond_1
    new-instance v9, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/shop/Deal;->getTitle()Ljava/lang/String;

    move-result-object v1

    const v2, 0x3f266666    # 0.65f

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->FOURTH_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v4, 0x1

    invoke-direct {v9, v1, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .line 38
    .local v9, "titleElement":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v9, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 39
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x42540000    # 53.0f

    invoke-virtual {v9, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 40
    invoke-virtual {p0, v9}, Lcom/gaiaonline/monstergalaxy/shop/DealTableRow;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 42
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/shop/Deal;->getDescription()Ljava/lang/String;

    move-result-object v1

    const v2, 0x3ecccccd    # 0.4f

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->FOURTH_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v4, 0x1

    const/high16 v5, 0x433e0000    # 190.0f

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;ZF)V

    .line 43
    .local v0, "descriptionElement":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 44
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x42000000    # 32.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/shop/DealTableRow;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 47
    new-instance v6, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "green.btn"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    const-string v4, "green.btn.press"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    invoke-direct {v6, v1, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 48
    .local v6, "dealButton":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v6, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setScale(F)V

    .line 49
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v6, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 50
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x43a50000    # 330.0f

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-virtual {v6, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 51
    new-instance v1, Lcom/gaiaonline/monstergalaxy/shop/DealTableRow$1;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/shop/DealTableRow$1;-><init>(Lcom/gaiaonline/monstergalaxy/shop/DealTableRow;)V

    invoke-virtual {v6, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setTouchReleasedListener(Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;)V

    .line 59
    invoke-virtual {p0, v6}, Lcom/gaiaonline/monstergalaxy/shop/DealTableRow;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 61
    new-instance v7, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/shop/Deal;->getButtonTitle()Ljava/lang/String;

    move-result-object v1

    const v2, 0x3f266666    # 0.65f

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v4, 0x0

    invoke-direct {v7, v1, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .line 62
    .local v7, "dealLabel":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v7, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 63
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x43a50000    # 330.0f

    const/high16 v3, 0x420c0000    # 35.0f

    invoke-virtual {v7, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 64
    invoke-virtual {p0, v7}, Lcom/gaiaonline/monstergalaxy/shop/DealTableRow;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/model/shop/Deal;Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener;I)V
    .locals 0
    .param p1, "deal"    # Lcom/gaiaonline/monstergalaxy/model/shop/Deal;
    .param p3, "rowIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gaiaonline/monstergalaxy/model/shop/Deal;",
            "Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/shop/Deal;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p2, "listener":Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener;, "Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener<Lcom/gaiaonline/monstergalaxy/model/shop/Deal;>;"
    invoke-direct {p0, p1, p3}, Lcom/gaiaonline/monstergalaxy/shop/DealTableRow;-><init>(Lcom/gaiaonline/monstergalaxy/model/shop/Deal;I)V

    .line 17
    invoke-virtual {p0, p2}, Lcom/gaiaonline/monstergalaxy/shop/DealTableRow;->setListener(Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener;)V

    .line 18
    return-void
.end method
