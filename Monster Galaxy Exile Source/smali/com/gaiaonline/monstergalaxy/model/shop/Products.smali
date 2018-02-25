.class public Lcom/gaiaonline/monstergalaxy/model/shop/Products;
.super Ljava/lang/Object;
.source "Products.java"


# instance fields
.field private products:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/shop/Product;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProduct(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/shop/Product;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 22
    const/4 v1, 0x0

    .line 24
    .local v1, "product":Lcom/gaiaonline/monstergalaxy/model/shop/Product;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v2

    sget-object v3, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v2, v3, :cond_0

    .line 25
    const-string v2, ".mge"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".mge"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/shop/Products;->getProducts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 39
    :goto_0
    return-object v1

    .line 30
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/shop/Product;

    .line 32
    .local v0, "p":Lcom/gaiaonline/monstergalaxy/model/shop/Product;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33
    move-object v1, v0

    .line 34
    goto :goto_0
.end method

.method public getProducts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/shop/Product;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Products;->products:Ljava/util/List;

    if-nez v0, :cond_0

    .line 15
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getProducts()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Products;->products:Ljava/util/List;

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Products;->products:Ljava/util/List;

    return-object v0
.end method
