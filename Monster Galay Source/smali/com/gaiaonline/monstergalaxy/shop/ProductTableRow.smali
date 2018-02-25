.class public Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow;
.super Lcom/gaiaonline/monstergalaxy/shop/TableRow;
.source "ProductTableRow.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gaiaonline/monstergalaxy/shop/TableRow",
        "<",
        "Lcom/gaiaonline/monstergalaxy/model/shop/Product;",
        ">;"
    }
.end annotation


# static fields
.field private static final PRICE_FORMAT:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "$###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow;->PRICE_FORMAT:Ljava/text/DecimalFormat;

    .line 15
    return-void
.end method

.method private constructor <init>(Lcom/gaiaonline/monstergalaxy/model/shop/Product;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 11
    .param p1, "product"    # Lcom/gaiaonline/monstergalaxy/model/shop/Product;
    .param p2, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/shop/TableRow;-><init>(Ljava/lang/Object;)V

    .line 27
    sget-object v1, Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow;->CELL_SIZE:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v2, Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow;->CELL_SIZE:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v1, v2}, Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow;->setSize(FF)V

    .line 29
    if-eqz p2, :cond_0

    .line 30
    invoke-virtual {p0, p2}, Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow;->addBackground(Lcom/badlogic/gdx/graphics/Color;)V

    .line 33
    :cond_0
    new-instance v8, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->getType()Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->getIconAsset()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 34
    .local v8, "icon":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    const v1, 0x3fa66666    # 1.3f

    invoke-virtual {v8, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setScale(F)V

    .line 35
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v8, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 36
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-virtual {v8, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 37
    invoke-virtual {p0, v8}, Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 39
    new-instance v10, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->getTitle()Ljava/lang/String;

    move-result-object v1

    const v2, 0x3f266666    # 0.65f

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->FOURTH_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v4, 0x1

    invoke-direct {v10, v1, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .line 40
    .local v10, "titleElement":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v10, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 41
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x42540000    # 53.0f

    invoke-virtual {v10, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 42
    invoke-virtual {p0, v10}, Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 44
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->getDescription()Ljava/lang/String;

    move-result-object v1

    const v2, 0x3ecccccd    # 0.4f

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->FOURTH_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v4, 0x1

    const/high16 v5, 0x433e0000    # 190.0f

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;ZF)V

    .line 45
    .local v0, "descriptionElement":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 46
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x42000000    # 32.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 49
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

    .line 50
    .local v6, "buyButton":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v6, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setScale(F)V

    .line 51
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v6, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 52
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x43a50000    # 330.0f

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-virtual {v6, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 53
    new-instance v1, Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow$1;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow$1;-><init>(Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow;)V

    invoke-virtual {v6, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setTouchReleasedListener(Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;)V

    .line 61
    invoke-virtual {p0, v6}, Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 63
    new-instance v7, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v1, "Buy"

    const v2, 0x3f266666    # 0.65f

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v4, 0x0

    invoke-direct {v7, v1, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .line 64
    .local v7, "buyLabel":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v7, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 65
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v2, 0x438f8000    # 287.0f

    const/high16 v3, 0x42280000    # 42.0f

    invoke-virtual {v7, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 66
    invoke-virtual {p0, v7}, Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 68
    new-instance v9, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow;->PRICE_FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->getPrice()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    const v2, 0x3f266666    # 0.65f

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->SECONARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v4, 0x0

    invoke-direct {v9, v1, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .line 69
    .local v9, "priceLabel":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v9, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 70
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v2, 0x43ba8000    # 373.0f

    const/high16 v3, 0x42280000    # 42.0f

    invoke-virtual {v9, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 71
    invoke-virtual {p0, v9}, Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/model/shop/Product;Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0
    .param p1, "product"    # Lcom/gaiaonline/monstergalaxy/model/shop/Product;
    .param p3, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gaiaonline/monstergalaxy/model/shop/Product;",
            "Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/shop/Product;",
            ">;",
            "Lcom/badlogic/gdx/graphics/Color;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "listener":Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener;, "Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener<Lcom/gaiaonline/monstergalaxy/model/shop/Product;>;"
    invoke-direct {p0, p1, p3}, Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow;-><init>(Lcom/gaiaonline/monstergalaxy/model/shop/Product;Lcom/badlogic/gdx/graphics/Color;)V

    .line 21
    invoke-virtual {p0, p2}, Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow;->setListener(Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener;)V

    .line 22
    return-void
.end method
