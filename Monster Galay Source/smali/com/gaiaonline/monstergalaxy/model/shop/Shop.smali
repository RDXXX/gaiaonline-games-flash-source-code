.class public Lcom/gaiaonline/monstergalaxy/model/shop/Shop;
.super Ljava/lang/Object;
.source "Shop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/model/shop/Shop$ShopListener;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$shop$ProductType:[I

.field private static listener:Lcom/gaiaonline/monstergalaxy/model/shop/Shop$ShopListener;

.field private static products:Lcom/gaiaonline/monstergalaxy/model/shop/Products;


# direct methods
.method static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$shop$ProductType()[I
    .locals 3

    .prologue
    .line 12
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/shop/Shop;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$shop$ProductType:[I

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
    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/shop/Shop;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$shop$ProductType:[I

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

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBoughtProduct(Lcom/gaiaonline/monstergalaxy/model/shop/Product;)Lcom/gaiaonline/monstergalaxy/model/shop/Product;
    .locals 15
    .param p0, "product"    # Lcom/gaiaonline/monstergalaxy/model/shop/Product;

    .prologue
    const/4 v1, 0x0

    .line 46
    if-eqz p0, :cond_2

    .line 48
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v12

    .line 50
    .local v12, "trainer":Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;
    const/4 v3, 0x0

    .line 51
    .local v3, "productType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 53
    .local v4, "productQuantity":Ljava/lang/String;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/model/shop/Shop;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$shop$ProductType()[I

    move-result-object v2

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->getType()Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    move-result-object v13

    invoke-virtual {v13}, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->ordinal()I

    move-result v13

    aget v2, v2, v13

    packed-switch v2, :pswitch_data_0

    .line 106
    :goto_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->save()Z

    .line 108
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->getPrice()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->getPrice()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v10, v1

    .line 112
    .local v10, "priceInCents":I
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->getPrice()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, "price":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 115
    .local v6, "currentIslandId":Ljava/lang/String;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    .line 117
    .local v0, "analytics":Lcom/gaiaonline/monstergalaxy/analytics/Analytics;
    const-string v1, "monetization"

    const-string v2, "in_app_purchase"

    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-interface {v0, v3, v4, v10}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackRevenue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Purchase Product: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->getPrice()F

    move-result v2

    float-to-double v13, v2

    invoke-interface {v0, v1, v13, v14}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->uploadPurchaseEvent(Ljava/lang/String;D)V

    .line 123
    .end local v0    # "analytics":Lcom/gaiaonline/monstergalaxy/analytics/Analytics;
    .end local v5    # "price":Ljava/lang/String;
    .end local v6    # "currentIslandId":Ljava/lang/String;
    .end local v10    # "priceInCents":I
    :cond_0
    const-string v1, "ui_shop_moga_cash"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playSound(Ljava/lang/String;)V

    .line 125
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/shop/Shop;->listener:Lcom/gaiaonline/monstergalaxy/model/shop/Shop$ShopListener;

    if-eqz v1, :cond_1

    .line 126
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/shop/Shop;->listener:Lcom/gaiaonline/monstergalaxy/model/shop/Shop$ShopListener;

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->getType()Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/shop/Shop$ShopListener;->onProductReceived(Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;)V

    .line 131
    :cond_1
    :goto_1
    return-object p0

    .line 56
    :pswitch_0
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->getQuantity()I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->addBlueCoffeeCups(I)V

    .line 59
    const-string v3, "blue_coffee"

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "coffee"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->getQuantity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 62
    goto :goto_0

    .line 65
    :pswitch_1
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->getQuantity()I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->addCoins(I)V

    .line 68
    const-string v3, "moga_cash"

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mogacash"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->getQuantity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 71
    goto/16 :goto_0

    .line 74
    :pswitch_2
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->getQuantity()I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->addStarSeeds(I)V

    .line 77
    const-string v3, "starseed"

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "starseeds"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->getQuantity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 80
    goto/16 :goto_0

    .line 84
    :pswitch_3
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->getId()Ljava/lang/String;

    move-result-object v11

    .line 85
    .local v11, "productId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 86
    const-string v13, "."

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 85
    invoke-virtual {v11, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 87
    .local v9, "mogaTypeId":I
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v2

    invoke-interface {v2, v9}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getMogaType(I)Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v8

    .line 89
    .local v8, "mogaType":Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;
    invoke-static {v8}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->newMogaFromType(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;)Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v7

    .line 90
    .local v7, "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-virtual {v7, v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->setName(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v12}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 93
    invoke-virtual {v12}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getMogas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 94
    invoke-virtual {v12, v7}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->addMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 95
    invoke-virtual {v12}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->addMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 98
    const-string v3, "starting_moga"

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mg"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 101
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->CHOOSE_MOGA_NAME:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;)V

    goto/16 :goto_0

    .end local v3    # "productType":Ljava/lang/String;
    .end local v4    # "productQuantity":Ljava/lang/String;
    .end local v7    # "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .end local v8    # "mogaType":Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;
    .end local v9    # "mogaTypeId":I
    .end local v11    # "productId":Ljava/lang/String;
    .end local v12    # "trainer":Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;
    :cond_2
    move-object p0, v1

    .line 131
    goto/16 :goto_1

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static addBoughtProduct(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/shop/Product;
    .locals 1
    .param p0, "productId"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/model/shop/Shop;->getProducts()Lcom/gaiaonline/monstergalaxy/model/shop/Products;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gaiaonline/monstergalaxy/model/shop/Products;->getProduct(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/shop/Product;

    move-result-object v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/model/shop/Shop;->addBoughtProduct(Lcom/gaiaonline/monstergalaxy/model/shop/Product;)Lcom/gaiaonline/monstergalaxy/model/shop/Product;

    move-result-object v0

    return-object v0
.end method

.method public static getMogaProduct(I)Lcom/gaiaonline/monstergalaxy/model/shop/Product;
    .locals 2
    .param p0, "mogaTypeId"    # I

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->MOGA:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->getTypeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/model/shop/Shop;->getProduct(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/shop/Product;

    move-result-object v0

    return-object v0
.end method

.method public static getProduct(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/shop/Product;
    .locals 1
    .param p0, "productId"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/model/shop/Shop;->getProducts()Lcom/gaiaonline/monstergalaxy/model/shop/Products;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gaiaonline/monstergalaxy/model/shop/Products;->getProduct(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/shop/Product;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getProducts()Lcom/gaiaonline/monstergalaxy/model/shop/Products;
    .locals 2

    .prologue
    .line 26
    const-class v1, Lcom/gaiaonline/monstergalaxy/model/shop/Shop;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/shop/Shop;->products:Lcom/gaiaonline/monstergalaxy/model/shop/Products;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/shop/Products;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/model/shop/Products;-><init>()V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/shop/Shop;->products:Lcom/gaiaonline/monstergalaxy/model/shop/Products;

    .line 29
    :cond_0
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/shop/Shop;->products:Lcom/gaiaonline/monstergalaxy/model/shop/Products;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setListener(Lcom/gaiaonline/monstergalaxy/model/shop/Shop$ShopListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/gaiaonline/monstergalaxy/model/shop/Shop$ShopListener;

    .prologue
    .line 22
    sput-object p0, Lcom/gaiaonline/monstergalaxy/model/shop/Shop;->listener:Lcom/gaiaonline/monstergalaxy/model/shop/Shop$ShopListener;

    .line 23
    return-void
.end method
