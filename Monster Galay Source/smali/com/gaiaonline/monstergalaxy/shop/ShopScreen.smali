.class public Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;
.super Lcom/gaiaonline/monstergalaxy/app/Screen;
.source "ShopScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/model/shop/Shop$ShopListener;
.implements Lcom/gaiaonline/monstergalaxy/model/shop/DealListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/shop/ShopScreen$PriceComparator;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$shop$ProductType:[I = null

.field private static final FONT_SCALE_OVER_MAX_VALUE:F = 0.42f

.field private static final FONT_SCALE_REGULAR:F = 0.52f

.field private static final SCROLL_FRAME_SIZE:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field private blueCoffeesText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

.field private coinsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

.field private currentProductTable:Lcom/gaiaonline/monstergalaxy/shop/ShopTable;

.field private dealsTable:Lcom/gaiaonline/monstergalaxy/shop/ShopTable;

.field private inventory:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

.field private inventoryEffect:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

.field private isAmazonStore:Z

.field private itemsTable:Lcom/gaiaonline/monstergalaxy/shop/ShopTable;

.field private mcashTable:Lcom/gaiaonline/monstergalaxy/shop/ShopTable;

.field private productTypeJustReceived:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

.field private scrollFrameGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

.field private scrollYOffset:F

.field private scroller:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;

.field private solidBg:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private starseedsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

.field private tabCount:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$shop$ProductType()[I
    .locals 3

    .prologue
    .line 49
    sget-object v0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$shop$ProductType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->values()[Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->BLUE_COFFEE:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->MOGA:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->MOGA_CASH:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->STARSEEDS:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$shop$ProductType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v1, 0x43c80000    # 400.0f

    const/high16 v2, 0x43520000    # 210.0f

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->SCROLL_FRAME_SIZE:Lcom/badlogic/gdx/math/Vector2;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 76
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;-><init>()V

    .line 54
    new-instance v6, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;

    invoke-direct {v6}, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;-><init>()V

    iput-object v6, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->scroller:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;

    .line 74
    iput-boolean v4, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->isAmazonStore:Z

    .line 80
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSourceStore()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;

    move-result-object v6

    sget-object v7, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;->AMAZON:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;

    if-ne v6, v7, :cond_0

    move v4, v5

    :cond_0
    iput-boolean v4, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->isAmazonStore:Z

    .line 84
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/Stage;

    sget-object v6, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v6}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sget-object v7, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v7}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v7

    int-to-float v7, v7

    .line 85
    invoke-direct {v4, v6, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/Stage;-><init>(FFZ)V

    .line 84
    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 87
    new-instance v4, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->newSolidBg()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v6

    invoke-direct {v4, v6, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V

    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->solidBg:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 88
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->solidBg:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 89
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->solidBg:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v4, v5, v8, v8}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 91
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->solidBg:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 93
    new-instance v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    invoke-direct {v4}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;-><init>()V

    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->scrollFrameGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    .line 94
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->scrollFrameGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 95
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->scrollFrameGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->SCROLL_FRAME_SIZE:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v6, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->SCROLL_FRAME_SIZE:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v4, v5, v6}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->setSize(FF)V

    .line 96
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->scrollFrameGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v4, v5, v8, v6}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 98
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->createTable()Lcom/gaiaonline/monstergalaxy/shop/ShopTable;

    move-result-object v4

    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->mcashTable:Lcom/gaiaonline/monstergalaxy/shop/ShopTable;

    .line 99
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->createTable()Lcom/gaiaonline/monstergalaxy/shop/ShopTable;

    move-result-object v4

    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->itemsTable:Lcom/gaiaonline/monstergalaxy/shop/ShopTable;

    .line 101
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->scrollFrameGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->mcashTable:Lcom/gaiaonline/monstergalaxy/shop/ShopTable;

    invoke-virtual {v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 102
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->scrollFrameGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->itemsTable:Lcom/gaiaonline/monstergalaxy/shop/ShopTable;

    invoke-virtual {v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 104
    iget-boolean v4, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->isAmazonStore:Z

    if-nez v4, :cond_1

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v4

    sget-object v5, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-eq v4, v5, :cond_1

    .line 105
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->createTable()Lcom/gaiaonline/monstergalaxy/shop/ShopTable;

    move-result-object v4

    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->dealsTable:Lcom/gaiaonline/monstergalaxy/shop/ShopTable;

    .line 106
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->scrollFrameGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->dealsTable:Lcom/gaiaonline/monstergalaxy/shop/ShopTable;

    invoke-virtual {v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 110
    :cond_1
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->addProducts()V

    .line 112
    iget-boolean v4, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->isAmazonStore:Z

    if-nez v4, :cond_2

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v4

    sget-object v5, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-eq v4, v5, :cond_2

    .line 113
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->addDeals()V

    .line 116
    :cond_2
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->scrollFrameGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    invoke-virtual {v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 118
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    const-string v4, "shop.bg"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 120
    .local v0, "bg":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v5

    div-float/2addr v4, v5

    .line 121
    sget-object v5, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v5}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v6

    div-float/2addr v5, v6

    .line 122
    const/high16 v6, 0x40400000    # 3.0f

    .line 121
    add-float/2addr v5, v6

    .line 119
    invoke-virtual {v0, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setSize(FF)V

    .line 123
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 124
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v4, v8, v8}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 126
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v4, v0}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 128
    new-instance v2, Lcom/gaiaonline/monstergalaxy/shop/TabSetController;

    invoke-direct {v2}, Lcom/gaiaonline/monstergalaxy/shop/TabSetController;-><init>()V

    .line 130
    .local v2, "tabset":Lcom/gaiaonline/monstergalaxy/shop/TabSetController;
    const-string v4, "Moga Cash"

    const-string v5, "cash"

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->mcashTable:Lcom/gaiaonline/monstergalaxy/shop/ShopTable;

    invoke-direct {p0, v2, v4, v5, v6}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->addTab(Lcom/gaiaonline/monstergalaxy/shop/TabSetController;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 132
    const-string v4, "Items"

    const-string v5, "items"

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->itemsTable:Lcom/gaiaonline/monstergalaxy/shop/ShopTable;

    invoke-direct {p0, v2, v4, v5, v6}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->addTab(Lcom/gaiaonline/monstergalaxy/shop/TabSetController;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 133
    const-string v4, "Lucky Moga"

    const-string v5, "slotmachine"

    invoke-direct {p0, v2, v4, v5, v9}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->addTab(Lcom/gaiaonline/monstergalaxy/shop/TabSetController;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 135
    iget-boolean v4, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->isAmazonStore:Z

    if-nez v4, :cond_3

    .line 136
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v4

    sget-object v5, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-eq v4, v5, :cond_3

    .line 137
    const-string v4, "Deals"

    const-string v5, "deals"

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->dealsTable:Lcom/gaiaonline/monstergalaxy/shop/ShopTable;

    invoke-direct {p0, v2, v4, v5, v6}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->addTab(Lcom/gaiaonline/monstergalaxy/shop/TabSetController;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 140
    :cond_3
    new-instance v4, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen$1;

    invoke-direct {v4, p0}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen$1;-><init>(Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;)V

    invoke-virtual {v2, v4}, Lcom/gaiaonline/monstergalaxy/shop/TabSetController;->setListener(Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Listener;)V

    .line 146
    const-string v4, "items"

    invoke-virtual {v2, v4}, Lcom/gaiaonline/monstergalaxy/shop/TabSetController;->setSelected(Ljava/lang/String;)V

    .line 148
    new-instance v3, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 149
    const-string v4, "shop.title"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    .line 148
    invoke-direct {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 150
    .local v3, "title":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 151
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v5, -0x3ec00000    # -12.0f

    invoke-virtual {v3, v4, v8, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 152
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v4, v3}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 154
    new-instance v1, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    new-instance v4, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen$2;

    invoke-direct {v4, p0}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen$2;-><init>(Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;)V

    .line 161
    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/Assets;->closeBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v6, Lcom/gaiaonline/monstergalaxy/app/Assets;->closeBtnPress:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 154
    invoke-direct {v1, v4, v9, v5, v6}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 162
    .local v1, "closeButton":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1, v4}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 163
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v5, 0x43e28000    # 453.0f

    const v6, 0x43928000    # 293.0f

    invoke-virtual {v1, v4, v5, v6}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 165
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->addInventoryBar()V

    .line 167
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v4, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 169
    const-string v4, "ui_shop_moga_cash"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadSound(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;)V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->tabSelected(Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;)V

    return-void
.end method

.method static synthetic access$1(Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;Lcom/gaiaonline/monstergalaxy/model/shop/Product;)V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->buyProduct(Lcom/gaiaonline/monstergalaxy/model/shop/Product;)V

    return-void
.end method

.method static synthetic access$2(Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;Lcom/gaiaonline/monstergalaxy/model/shop/Deal;)V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->checkDeal(Lcom/gaiaonline/monstergalaxy/model/shop/Deal;)V

    return-void
.end method

.method private addDeals()V
    .locals 9

    .prologue
    .line 333
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v7, "deals":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/shop/TableRow<Lcom/gaiaonline/monstergalaxy/model/shop/Deal;>;>;"
    new-instance v6, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen$4;

    invoke-direct {v6, p0}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen$4;-><init>(Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;)V

    .line 342
    .local v6, "dealListener":Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener;, "Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener<Lcom/gaiaonline/monstergalaxy/model/shop/Deal;>;"
    new-instance v8, Lcom/gaiaonline/monstergalaxy/shop/DealTableRow;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/shop/Deal;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/shop/Deal$DealType;->STARSEEDS:Lcom/gaiaonline/monstergalaxy/model/shop/Deal$DealType;

    .line 343
    const-string v2, "Free Starseeds"

    const-string v3, "Earn Starseeds by watching App trailers."

    .line 344
    const-string v4, "See Deal"

    const-string v5, "capture.starseed.icon"

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/model/shop/Deal;-><init>(Lcom/gaiaonline/monstergalaxy/model/shop/Deal$DealType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {v8, v0, v6, v1}, Lcom/gaiaonline/monstergalaxy/shop/DealTableRow;-><init>(Lcom/gaiaonline/monstergalaxy/model/shop/Deal;Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener;I)V

    .line 342
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->dealsTable:Lcom/gaiaonline/monstergalaxy/shop/ShopTable;

    invoke-virtual {v0, v7}, Lcom/gaiaonline/monstergalaxy/shop/ShopTable;->addItems(Ljava/util/List;)V

    .line 353
    return-void
.end method

.method private addInventoryBar()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const v2, 0x3f051eb8    # 0.52f

    const/high16 v10, -0x3f600000    # -5.0f

    const/high16 v9, -0x3fc00000    # -3.0f

    .line 224
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->inventory:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    .line 225
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->inventory:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    const/high16 v1, 0x43290000    # 169.0f

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v3}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->setSize(FF)V

    .line 228
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    const-string v1, "0"

    .line 229
    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 230
    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Z)V

    .line 228
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->blueCoffeesText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    .line 231
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->blueCoffeesText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 233
    new-instance v6, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 234
    const-string v0, "blue.coffee.icon"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    .line 233
    invoke-direct {v6, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 236
    .local v6, "bluecoffe":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->blueCoffeesText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v3, 0x41e80000    # 29.0f

    invoke-virtual {v0, v1, v3, v9}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 237
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v6, v0, v1, v10}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 239
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->inventory:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->blueCoffeesText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 240
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->inventory:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    invoke-virtual {v0, v6}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 243
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    const-string v1, "0"

    .line 244
    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 245
    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Z)V

    .line 243
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->starseedsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    .line 246
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->starseedsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 248
    new-instance v8, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 249
    const-string v0, "capture.starseed.icon"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    .line 248
    invoke-direct {v8, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 251
    .local v8, "starseed":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->starseedsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v9}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 252
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v1, -0x3ee00000    # -10.0f

    invoke-virtual {v8, v0, v1, v10}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 254
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->inventory:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->starseedsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 255
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->inventory:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    invoke-virtual {v0, v8}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 258
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    const-string v1, "0"

    .line 259
    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 260
    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Z)V

    .line 258
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->coinsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    .line 261
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->coinsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 263
    new-instance v7, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 264
    const-string v0, "capture.mcash"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    .line 263
    invoke-direct {v7, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 266
    .local v7, "mogacash":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->coinsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, -0x3e000000    # -32.0f

    invoke-virtual {v0, v1, v2, v9}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 267
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v1, -0x3dcc0000    # -45.0f

    invoke-virtual {v7, v0, v1, v10}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 269
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->inventory:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->coinsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 270
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->inventory:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    invoke-virtual {v0, v7}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 272
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->inventory:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 273
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->inventory:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x40e00000    # 7.0f

    const/high16 v3, -0x3ea00000    # -14.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 274
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->inventory:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 276
    return-void
.end method

.method private addProducts()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 279
    new-instance v9, Lcom/gaiaonline/monstergalaxy/model/shop/Products;

    invoke-direct {v9}, Lcom/gaiaonline/monstergalaxy/model/shop/Products;-><init>()V

    invoke-virtual {v9}, Lcom/gaiaonline/monstergalaxy/model/shop/Products;->getProducts()Ljava/util/List;

    move-result-object v5

    .line 281
    .local v5, "products":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/shop/Product;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v0, "cashProducts":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/shop/TableRow<Lcom/gaiaonline/monstergalaxy/model/shop/Product;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v2, "itemProducts":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/shop/TableRow<Lcom/gaiaonline/monstergalaxy/model/shop/Product;>;>;"
    const-string v9, "shop_color_01"

    invoke-static {v9}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    .line 286
    .local v6, "rowColor":Lcom/badlogic/gdx/graphics/Color;
    new-instance v4, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen$3;

    invoke-direct {v4, p0}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen$3;-><init>(Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;)V

    .line 293
    .local v4, "productListener":Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener;, "Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener<Lcom/gaiaonline/monstergalaxy/model/shop/Product;>;"
    new-instance v9, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen$PriceComparator;

    invoke-direct {v9, p0}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen$PriceComparator;-><init>(Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;)V

    invoke-static {v5, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 295
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 314
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->mcashTable:Lcom/gaiaonline/monstergalaxy/shop/ShopTable;

    invoke-virtual {v8, v0}, Lcom/gaiaonline/monstergalaxy/shop/ShopTable;->addItems(Ljava/util/List;)V

    .line 315
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->itemsTable:Lcom/gaiaonline/monstergalaxy/shop/ShopTable;

    invoke-virtual {v8, v2}, Lcom/gaiaonline/monstergalaxy/shop/ShopTable;->addItems(Ljava/util/List;)V

    .line 316
    return-void

    .line 295
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gaiaonline/monstergalaxy/model/shop/Product;

    .line 297
    .local v3, "product":Lcom/gaiaonline/monstergalaxy/model/shop/Product;
    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->getType()Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    move-result-object v7

    .line 299
    .local v7, "type":Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;
    sget-object v10, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->MOGA:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    if-eq v7, v10, :cond_0

    .line 301
    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->getType()Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    move-result-object v10

    sget-object v11, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->MOGA_CASH:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    if-ne v10, v11, :cond_3

    .line 302
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    rem-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_2

    move-object v1, v6

    .line 303
    .local v1, "color":Lcom/badlogic/gdx/graphics/Color;
    :goto_1
    new-instance v10, Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow;

    .line 304
    invoke-direct {v10, v3, v4, v1}, Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow;-><init>(Lcom/gaiaonline/monstergalaxy/model/shop/Product;Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener;Lcom/badlogic/gdx/graphics/Color;)V

    .line 303
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1    # "color":Lcom/badlogic/gdx/graphics/Color;
    :cond_2
    move-object v1, v8

    .line 302
    goto :goto_1

    .line 306
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    rem-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_4

    move-object v1, v6

    .line 307
    .restart local v1    # "color":Lcom/badlogic/gdx/graphics/Color;
    :goto_2
    new-instance v10, Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow;

    .line 308
    invoke-direct {v10, v3, v4, v1}, Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow;-><init>(Lcom/gaiaonline/monstergalaxy/model/shop/Product;Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener;Lcom/badlogic/gdx/graphics/Color;)V

    .line 307
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1    # "color":Lcom/badlogic/gdx/graphics/Color;
    :cond_4
    move-object v1, v8

    .line 306
    goto :goto_2
.end method

.method private addTab(Lcom/gaiaonline/monstergalaxy/shop/TabSetController;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V
    .locals 11
    .param p1, "tabset"    # Lcom/gaiaonline/monstergalaxy/shop/TabSetController;
    .param p2, "labelText"    # Ljava/lang/String;
    .param p3, "tabId"    # Ljava/lang/String;
    .param p4, "tabContent"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 187
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->tabCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->tabCount:I

    .line 188
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->tabCount:I

    add-int/lit8 v8, v2, -0x1

    .line 189
    .local v8, "tabIndex":I
    new-instance v7, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const v2, 0x3f0ccccd    # 0.55f

    .line 190
    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->FOURTH_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v9, 0x0

    .line 189
    invoke-direct {v7, p2, v2, v5, v9}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .line 192
    .local v7, "label":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    const-string v2, "tab.on"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    .line 193
    .local v4, "selected":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v2, "tab.off"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 195
    .local v3, "normal":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getVerticalAR()F

    move-result v2

    .line 196
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getHorizontalAR()F

    move-result v5

    .line 195
    div-float v6, v2, v5

    .line 198
    .local v6, "aspectRatiofactor":F
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-object v2, v1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 200
    .local v0, "tabButton":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 201
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x42100000    # 36.0f

    mul-int/lit8 v5, v8, 0x66

    int-to-float v5, v5

    .line 202
    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    const/high16 v5, 0x43750000    # 245.0f

    .line 201
    invoke-virtual {v0, v1, v2, v5}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 204
    invoke-virtual {v7, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAlign(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 205
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v7, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 206
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v7, v1, v10, v10}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 208
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 209
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v1, v7}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 211
    invoke-virtual {p1, p3, v0, p4}, Lcom/gaiaonline/monstergalaxy/shop/TabSetController;->addTab(Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 212
    return-void
.end method

.method private buyProduct(Lcom/gaiaonline/monstergalaxy/model/shop/Product;)V
    .locals 2
    .param p1, "product"    # Lcom/gaiaonline/monstergalaxy/model/shop/Product;

    .prologue
    .line 357
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->buyProduct(Ljava/lang/String;)V

    .line 363
    :goto_0
    return-void

    .line 360
    :cond_0
    invoke-static {p1}, Lcom/gaiaonline/monstergalaxy/model/shop/Shop;->addBoughtProduct(Lcom/gaiaonline/monstergalaxy/model/shop/Product;)Lcom/gaiaonline/monstergalaxy/model/shop/Product;

    goto :goto_0
.end method

.method private checkDeal(Lcom/gaiaonline/monstergalaxy/model/shop/Deal;)V
    .locals 2
    .param p1, "deal"    # Lcom/gaiaonline/monstergalaxy/model/shop/Deal;

    .prologue
    .line 367
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/shop/Deal;->getType()Lcom/gaiaonline/monstergalaxy/model/shop/Deal$DealType;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/shop/Deal$DealType;->STARSEEDS:Lcom/gaiaonline/monstergalaxy/model/shop/Deal$DealType;

    if-ne v0, v1, :cond_1

    .line 370
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->showTapJoyOffers()V

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/shop/Deal;->getType()Lcom/gaiaonline/monstergalaxy/model/shop/Deal$DealType;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/shop/Deal$DealType;->MOGA_CASH:Lcom/gaiaonline/monstergalaxy/model/shop/Deal$DealType;

    if-ne v0, v1, :cond_2

    .line 373
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->showAdColonyVideo()V

    goto :goto_0

    .line 375
    :cond_2
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->showW3iOfferWall()V

    goto :goto_0
.end method

.method private createTable()Lcom/gaiaonline/monstergalaxy/shop/ShopTable;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 215
    new-instance v0, Lcom/gaiaonline/monstergalaxy/shop/ShopTable;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/shop/ShopTable;-><init>()V

    .line 217
    .local v0, "table":Lcom/gaiaonline/monstergalaxy/shop/ShopTable;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/shop/ShopTable;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 218
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1, v2, v2}, Lcom/gaiaonline/monstergalaxy/shop/ShopTable;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 219
    return-object v0
.end method

.method private newSolidBg()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 3

    .prologue
    .line 174
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    .line 175
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 173
    invoke-static {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->newSolidRectangle(IILcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method private popMusic()V
    .locals 2

    .prologue
    .line 531
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v0, v1, :cond_0

    .line 532
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->popMusic()V

    .line 534
    :cond_0
    return-void
.end method

.method private pushMusic()V
    .locals 2

    .prologue
    .line 525
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v0, v1, :cond_0

    .line 526
    const-string v0, "m_shop.mp3"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->pushMusic(Ljava/lang/String;)V

    .line 528
    :cond_0
    return-void
.end method

.method private reloadTextures()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->solidBg:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->solidBg:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->solidBg:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->newSolidBg()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 183
    return-void
.end method

.method private setScrollOffset(F)V
    .locals 2
    .param p1, "offset"    # F

    .prologue
    .line 429
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->currentProductTable:Lcom/gaiaonline/monstergalaxy/shop/ShopTable;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/shop/ShopTable;->getSize()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v1, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->SCROLL_FRAME_SIZE:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 431
    const/4 p1, 0x0

    .line 441
    :goto_0
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->scrollYOffset:F

    .line 443
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->currentProductTable:Lcom/gaiaonline/monstergalaxy/shop/ShopTable;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->scrollYOffset:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/shop/ShopTable;->setPositionY(F)V

    .line 444
    return-void

    .line 434
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 437
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->currentProductTable:Lcom/gaiaonline/monstergalaxy/shop/ShopTable;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/shop/ShopTable;->getSize()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    neg-float v0, v0

    .line 438
    sget-object v1, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->SCROLL_FRAME_SIZE:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    add-float/2addr v0, v1

    .line 437
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_0
.end method

.method private showInventoryEffect(Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;)V
    .locals 5
    .param p1, "productType"    # Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    .prologue
    const/4 v4, 0x0

    .line 464
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->inventoryEffect:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    if-nez v2, :cond_0

    .line 465
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;

    const-string v2, "inventory"

    invoke-direct {v0, v2}, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;-><init>(Ljava/lang/String;)V

    .line 466
    .local v0, "actor":Lcom/gaiaonline/monstergalaxy/battle/EffectActor;
    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->INVENTORY:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;->setEffectWithType(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;)V

    .line 468
    new-instance v2, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-direct {v2}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;-><init>()V

    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->inventoryEffect:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    .line 469
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->inventoryEffect:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-virtual {v2, v0}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 471
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->inventoryEffect:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 472
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->inventoryEffect:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v2, v3, v4, v4}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 474
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->inventoryEffect:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setVisible(Z)V

    .line 476
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->inventory:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->inventoryEffect:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 479
    .end local v0    # "actor":Lcom/gaiaonline/monstergalaxy/battle/EffectActor;
    :cond_0
    const/4 v1, 0x0

    .line 481
    .local v1, "alignElement":Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$shop$ProductType()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 493
    :goto_0
    if-eqz v1, :cond_1

    .line 494
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->inventoryEffect:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-virtual {v2, v1}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setAlign(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 495
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->inventoryEffect:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setVisible(Z)V

    .line 496
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->inventoryEffect:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v2

    check-cast v2, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;->getEffect()Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->start()V

    .line 498
    :cond_1
    return-void

    .line 483
    :pswitch_0
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->blueCoffeesText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    .line 484
    goto :goto_0

    .line 486
    :pswitch_1
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->starseedsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    .line 487
    goto :goto_0

    .line 489
    :pswitch_2
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->coinsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    goto :goto_0

    .line 481
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private tabSelected(Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;)V
    .locals 3
    .param p1, "tab"    # Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;

    .prologue
    .line 383
    const-string v0, "slotmachine"

    iget-object v1, p1, Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SLOTMACHINE:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;ZZ)V

    .line 387
    :cond_0
    iget-object v0, p1, Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;->content:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;

    check-cast v0, Lcom/gaiaonline/monstergalaxy/shop/ShopTable;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->currentProductTable:Lcom/gaiaonline/monstergalaxy/shop/ShopTable;

    .line 389
    const/4 v0, 0x0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->scrollYOffset:F

    .line 390
    return-void
.end method

.method private updateField(Lcom/gaiaonline/monstergalaxy/screen/TextElement;II)V
    .locals 3
    .param p1, "field"    # Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    .param p2, "value"    # I
    .param p3, "maxDisplayValue"    # I

    .prologue
    const v2, 0x3ed70a3d    # 0.42f

    .line 393
    if-gt p2, p3, :cond_1

    .line 394
    const/16 v0, 0x270f

    if-ne p3, v0, :cond_0

    .line 395
    const/16 v0, 0x3e7

    if-le p2, v0, :cond_0

    .line 396
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setFontScale(F)V

    .line 407
    :goto_0
    return-void

    .line 400
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 401
    const v0, 0x3f051eb8    # 0.52f

    invoke-virtual {p1, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setFontScale(F)V

    goto :goto_0

    .line 404
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setFontScale(F)V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 545
    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/model/shop/Shop;->setListener(Lcom/gaiaonline/monstergalaxy/model/shop/Shop$ShopListener;)V

    .line 547
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->setDealListener(Lcom/gaiaonline/monstergalaxy/model/shop/DealListener;)V

    .line 551
    :cond_0
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->dispose()V

    .line 552
    return-void
.end method

.method public hideDialog()V
    .locals 2

    .prologue
    .line 538
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->hideDialog()V

    .line 540
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->scroller:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    .line 541
    return-void
.end method

.method public onEnter(Lcom/gaiaonline/monstergalaxy/app/Screen;)V
    .locals 0
    .param p1, "prevScreen"    # Lcom/gaiaonline/monstergalaxy/app/Screen;

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->pushMusic()V

    .line 503
    return-void
.end method

.method public onExit(Lcom/gaiaonline/monstergalaxy/app/Screen;)V
    .locals 0
    .param p1, "nextScreen"    # Lcom/gaiaonline/monstergalaxy/app/Screen;

    .prologue
    .line 507
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->popMusic()V

    .line 508
    return-void
.end method

.method public onProductReceived(Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;)V
    .locals 0
    .param p1, "productType"    # Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    .prologue
    .line 556
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->productTypeJustReceived:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    .line 557
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->reloadTextures()V

    .line 514
    invoke-static {p0}, Lcom/gaiaonline/monstergalaxy/model/shop/Shop;->setListener(Lcom/gaiaonline/monstergalaxy/model/shop/Shop$ShopListener;)V

    .line 516
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->setDealListener(Lcom/gaiaonline/monstergalaxy/model/shop/DealListener;)V

    .line 518
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->getDealRewards()V

    .line 521
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->scroller:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    .line 522
    return-void
.end method

.method public onRewardReceived(Lcom/gaiaonline/monstergalaxy/model/shop/Deal$DealType;)V
    .locals 1
    .param p1, "dealType"    # Lcom/gaiaonline/monstergalaxy/model/shop/Deal$DealType;

    .prologue
    .line 562
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/shop/Deal$DealType;->MOGA_CASH:Lcom/gaiaonline/monstergalaxy/model/shop/Deal$DealType;

    if-ne p1, v0, :cond_1

    .line 563
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->MOGA_CASH:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->productTypeJustReceived:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/shop/Deal$DealType;->STARSEEDS:Lcom/gaiaonline/monstergalaxy/model/shop/Deal$DealType;

    if-ne p1, v0, :cond_0

    .line 565
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->STARSEEDS:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->productTypeJustReceived:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    goto :goto_0
.end method

.method public present(F)V
    .locals 2
    .param p1, "deltaTime"    # F

    .prologue
    .line 448
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->productTypeJustReceived:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->productTypeJustReceived:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->showInventoryEffect(Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;)V

    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->productTypeJustReceived:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->act(F)V

    .line 455
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->present(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 457
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->draw()V

    .line 460
    :cond_1
    return-void
.end method

.method public update(F)V
    .locals 5
    .param p1, "deltaTime"    # F

    .prologue
    const/16 v4, 0x3e7

    .line 411
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->scroller:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->getDeltaY()F

    move-result v0

    .line 412
    .local v0, "scrollDeltaY":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    .line 413
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->scrollYOffset:F

    add-float/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->setScrollOffset(F)V

    .line 416
    :cond_0
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/app/Screen;->update(F)V

    .line 418
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v1

    .line 420
    .local v1, "trainer":Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->blueCoffeesText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBlueCoffeeCups()I

    move-result v3

    invoke-direct {p0, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->updateField(Lcom/gaiaonline/monstergalaxy/screen/TextElement;II)V

    .line 422
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->starseedsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getStarSeeds()I

    move-result v3

    invoke-direct {p0, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->updateField(Lcom/gaiaonline/monstergalaxy/screen/TextElement;II)V

    .line 424
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->coinsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCoins()I

    move-result v3

    .line 425
    const/16 v4, 0x270f

    .line 424
    invoke-direct {p0, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->updateField(Lcom/gaiaonline/monstergalaxy/screen/TextElement;II)V

    .line 426
    return-void
.end method
