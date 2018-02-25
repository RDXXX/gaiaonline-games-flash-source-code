.class public Lcom/gaiaonline/monstergalaxy/model/shop/Product;
.super Ljava/lang/Object;
.source "Product.java"


# instance fields
.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private price:F

.field private quantity:I

.field private title:Ljava/lang/String;

.field private type:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0, p1}, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->setId(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "price"    # F

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->setId(Ljava/lang/String;)V

    .line 20
    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->title:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->description:Ljava/lang/String;

    .line 22
    iput p4, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->price:F

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLcom/gaiaonline/monstergalaxy/model/shop/ProductType;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "price"    # F
    .param p5, "type"    # Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;
    .param p6, "quantity"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v0, v1, :cond_0

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->id:Ljava/lang/String;

    .line 33
    :goto_0
    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->title:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->description:Ljava/lang/String;

    .line 35
    iput p4, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->price:F

    .line 36
    iput-object p5, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->type:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    .line 37
    iput p6, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->quantity:I

    .line 38
    return-void

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->id:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()F
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->price:F

    return v0
.end method

.method public getQuantity()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->quantity:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->type:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->description:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->id:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->values()[Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 54
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v1

    sget-object v2, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v1, v2, :cond_2

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".mge"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->id:Ljava/lang/String;

    .line 59
    :goto_1
    return-void

    .line 42
    :cond_0
    aget-object v0, v2, v1

    .line 43
    .local v0, "type":Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->getTypeId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 44
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->type:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    .line 46
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->type:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->MOGA:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    if-eq v4, v5, :cond_1

    .line 47
    const-string v4, "\\."

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->getTypeId()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->quantity:I

    .line 42
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "type":Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;
    :cond_2
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->id:Ljava/lang/String;

    goto :goto_1
.end method

.method public setPrice(F)V
    .locals 0
    .param p1, "price"    # F

    .prologue
    .line 94
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->price:F

    .line 95
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->title:Ljava/lang/String;

    .line 87
    return-void
.end method
