.class public Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;
.super Lcom/gaiaonline/monstergalaxy/startup/AbstractStartupScreen;
.source "ChooseMogaScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen$PurchaseAlertDialog;
    }
.end annotation


# instance fields
.field private moga1:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private moga2:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private moga3:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private mogaTypeId:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/high16 v3, 0x41200000    # 10.0f

    .line 38
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/startup/AbstractStartupScreen;-><init>()V

    .line 39
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "startup.choosezodiacmoga.bg"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addBackground(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 41
    const-string v0, "Choose your Moga"

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->addTitle(Ljava/lang/String;)V

    .line 43
    sget v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->newPlayerMoga1:I

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v2, -0x3ce20000    # -158.0f

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 44
    const-string v2, "startup.good"

    .line 43
    invoke-direct {p0, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->addMoga(ILcom/badlogic/gdx/math/Vector2;Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->moga1:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 45
    sget v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->newPlayerMoga2:I

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 46
    const-string v2, "startup.better"

    .line 45
    invoke-direct {p0, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->addMoga(ILcom/badlogic/gdx/math/Vector2;Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->moga2:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 47
    sget v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->newPlayerMoga3:I

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v2, 0x431e0000    # 158.0f

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 48
    const-string v2, "startup.best"

    .line 47
    invoke-direct {p0, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->addMoga(ILcom/badlogic/gdx/math/Vector2;Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->moga3:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->mogaTypeId:I

    return v0
.end method

.method static synthetic access$1(Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;)Lcom/gaiaonline/monstergalaxy/screen/Root;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    return-object v0
.end method

.method static synthetic access$2(Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->chooseMoga(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;)V

    return-void
.end method

.method private addMoga(ILcom/badlogic/gdx/math/Vector2;Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    .locals 19
    .param p1, "mogaTypeId"    # I
    .param p2, "position"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "ratingLabelAsset"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v3

    move/from16 v0, p1

    invoke-interface {v3, v0}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getMogaType(I)Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v10

    .line 55
    .local v10, "mogaType":Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;
    invoke-static/range {p1 .. p1}, Lcom/gaiaonline/monstergalaxy/model/shop/Shop;->getMogaProduct(I)Lcom/gaiaonline/monstergalaxy/model/shop/Product;

    move-result-object v14

    .line 56
    .local v14, "product":Lcom/gaiaonline/monstergalaxy/model/shop/Product;
    const-string v3, "startup.btn.moga"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v12

    .line 57
    .local v12, "normal":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v3, "startup.btn.moga.press"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v16

    .line 59
    .local v16, "selected":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v8, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    new-instance v3, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v10}, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen$1;-><init>(Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;)V

    .line 64
    const/4 v4, 0x0

    .line 59
    move-object/from16 v0, v16

    invoke-direct {v8, v3, v4, v12, v0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 66
    .local v8, "button":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v8, v3}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 67
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p2

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, p2

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v8, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 69
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v3, v8}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 71
    new-instance v11, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v10}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x3f0ccccd    # 0.55f

    .line 72
    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v6, 0x0

    .line 71
    invoke-direct {v11, v3, v4, v5, v6}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .line 73
    .local v11, "nameLabel":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v11, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 74
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p2

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, p2

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v6, 0x41c80000    # 25.0f

    sub-float/2addr v5, v6

    invoke-virtual {v11, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 76
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v3, v11}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 78
    invoke-virtual {v14}, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->getPrice()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 79
    new-instance v13, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "$"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->getPrice()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 80
    const v4, 0x3f0ccccd    # 0.55f

    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v6, 0x0

    .line 79
    invoke-direct {v13, v3, v4, v5, v6}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .line 81
    .local v13, "prizeLabel":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v13, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 82
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p2

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v5, 0x41f00000    # 30.0f

    add-float/2addr v4, v5

    .line 83
    move-object/from16 v0, p2

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v6, 0x42be0000    # 95.0f

    add-float/2addr v5, v6

    .line 82
    invoke-virtual {v13, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 85
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v3, v13}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 87
    .end local v13    # "prizeLabel":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    :cond_0
    new-instance v2, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v14}, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->getTitle()Ljava/lang/String;

    move-result-object v3

    const v4, 0x3ee66666    # 0.45f

    .line 88
    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v6, 0x3ee147ae    # 0.44f

    const v7, 0x3f4ccccd    # 0.8f

    const v17, 0x3f6e147b    # 0.93f

    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v5, v6, v7, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/4 v6, 0x1

    const/high16 v7, 0x42f00000    # 120.0f

    .line 87
    invoke-direct/range {v2 .. v7}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;ZF)V

    .line 89
    .local v2, "descriptionLabel":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->CENTER:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setTextAlignment(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)V

    .line 90
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 92
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p2

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 93
    move-object/from16 v0, p2

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v6, 0x42200000    # 40.0f

    sub-float/2addr v5, v6

    .line 92
    invoke-virtual {v2, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 95
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v3, v2}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 97
    new-instance v15, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 98
    invoke-static/range {p3 .. p3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 97
    invoke-direct {v15, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 99
    .local v15, "rating":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v15, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 100
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p2

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, p2

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v6, 0x42b40000    # 90.0f

    sub-float/2addr v5, v6

    invoke-virtual {v15, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 101
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v3, v15}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 103
    new-instance v9, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 104
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v10}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getAsset()Lcom/gaiaonline/monstergalaxy/assets/Asset;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->get(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/assets/Asset;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 103
    invoke-direct {v9, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 106
    .local v9, "mogaElement":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    const/high16 v3, 0x42d20000    # 105.0f

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v4

    mul-float/2addr v3, v4

    .line 107
    invoke-virtual {v9}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->getSize()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float/2addr v3, v4

    .line 106
    invoke-virtual {v9, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setScale(F)V

    .line 108
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v9, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 109
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p2

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, p2

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v6, 0x41700000    # 15.0f

    sub-float/2addr v5, v6

    invoke-virtual {v9, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 111
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v3, v9}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 112
    return-object v9
.end method

.method private chooseMoga(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;)V
    .locals 8
    .param p1, "mogaType"    # Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    .prologue
    .line 143
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getId()I

    move-result v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->mogaTypeId:I

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->mogaTypeId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".moga.moga"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, "productId":Ljava/lang/String;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v0, v1, :cond_0

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 150
    :cond_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "Player did choose her/his Moga"

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->uploadRegistrationEvent(Ljava/lang/String;)V

    .line 152
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->mogaTypeId:I

    sget v1, Lcom/gaiaonline/monstergalaxy/app/Constants;->newPlayerMoga1:I

    if-ne v0, v1, :cond_1

    .line 155
    invoke-static {v7}, Lcom/gaiaonline/monstergalaxy/model/shop/Shop;->addBoughtProduct(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/shop/Product;

    .line 167
    :goto_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "acquisition"

    const-string v2, ""

    const-string v3, ""

    const-string v4, "complete_choose_moga"

    const-string v5, ""

    const-string v6, ""

    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void

    .line 159
    :cond_1
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->buyProduct(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_2
    invoke-static {v7}, Lcom/gaiaonline/monstergalaxy/model/shop/Shop;->addBoughtProduct(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/shop/Product;

    goto :goto_0
.end method


# virtual methods
.method public onResume()V
    .locals 6

    .prologue
    const/high16 v5, 0x42d20000    # 105.0f

    .line 117
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/startup/AbstractStartupScreen;->onResume()V

    .line 119
    sget v1, Lcom/gaiaonline/monstergalaxy/app/Constants;->newPlayerMoga1:I

    .line 120
    .local v1, "mogaTypeId":I
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getMogaType(I)Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v0

    .line 121
    .local v0, "mogaType":Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->moga1:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getAsset()Lcom/gaiaonline/monstergalaxy/assets/Asset;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->get(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/assets/Asset;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 122
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->moga1:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v3

    mul-float/2addr v3, v5

    .line 123
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->moga1:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->getSize()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float/2addr v3, v4

    .line 122
    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setScale(F)V

    .line 125
    sget v1, Lcom/gaiaonline/monstergalaxy/app/Constants;->newPlayerMoga2:I

    .line 126
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getMogaType(I)Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v0

    .line 127
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->moga2:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getAsset()Lcom/gaiaonline/monstergalaxy/assets/Asset;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->get(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/assets/Asset;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 128
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->moga2:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v3

    mul-float/2addr v3, v5

    .line 129
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->moga2:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->getSize()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float/2addr v3, v4

    .line 128
    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setScale(F)V

    .line 131
    sget v1, Lcom/gaiaonline/monstergalaxy/app/Constants;->newPlayerMoga3:I

    .line 132
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getMogaType(I)Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v0

    .line 133
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->moga3:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getAsset()Lcom/gaiaonline/monstergalaxy/assets/Asset;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->get(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/assets/Asset;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 134
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->moga3:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v3

    mul-float/2addr v3, v5

    .line 135
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->moga3:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->getSize()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float/2addr v3, v4

    .line 134
    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setScale(F)V

    .line 137
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isPurchaseTransactionPending()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    new-instance v2, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen$PurchaseAlertDialog;

    const-string v3, "Waiting your purchase to be confirmed ..."

    invoke-direct {v2, p0, v3}, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen$PurchaseAlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 140
    :cond_0
    return-void
.end method

.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 173
    return-void
.end method

.method public update(F)V
    .locals 1
    .param p1, "deltaTime"    # F

    .prologue
    .line 177
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/startup/AbstractStartupScreen;->update(F)V

    .line 179
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->update(F)V

    .line 181
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->update(F)V

    .line 183
    :cond_0
    return-void
.end method
