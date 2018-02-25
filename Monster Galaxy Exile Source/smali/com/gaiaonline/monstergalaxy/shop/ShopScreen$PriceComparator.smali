.class Lcom/gaiaonline/monstergalaxy/shop/ShopScreen$PriceComparator;
.super Ljava/lang/Object;
.source "ShopScreen.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PriceComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/gaiaonline/monstergalaxy/model/shop/Product;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen$PriceComparator;->this$0:Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/gaiaonline/monstergalaxy/model/shop/Product;Lcom/gaiaonline/monstergalaxy/model/shop/Product;)I
    .locals 2
    .param p1, "o1"    # Lcom/gaiaonline/monstergalaxy/model/shop/Product;
    .param p2, "o2"    # Lcom/gaiaonline/monstergalaxy/model/shop/Product;

    .prologue
    .line 322
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->getPrice()F

    move-result v0

    invoke-virtual {p2}, Lcom/gaiaonline/monstergalaxy/model/shop/Product;->getPrice()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 323
    const/4 v0, -0x1

    .line 325
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/gaiaonline/monstergalaxy/model/shop/Product;

    check-cast p2, Lcom/gaiaonline/monstergalaxy/model/shop/Product;

    invoke-virtual {p0, p1, p2}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen$PriceComparator;->compare(Lcom/gaiaonline/monstergalaxy/model/shop/Product;Lcom/gaiaonline/monstergalaxy/model/shop/Product;)I

    move-result v0

    return v0
.end method
