.class Lcom/gaiaonline/monstergalaxy/shop/ShopScreen$4;
.super Ljava/lang/Object;
.source "ShopScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->addDeals()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener",
        "<",
        "Lcom/gaiaonline/monstergalaxy/model/shop/Deal;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen$4;->this$0:Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public itemSelected(Lcom/gaiaonline/monstergalaxy/model/shop/Deal;)V
    .locals 1
    .param p1, "deal"    # Lcom/gaiaonline/monstergalaxy/model/shop/Deal;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen$4;->this$0:Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;

    invoke-static {v0, p1}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->access$2(Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;Lcom/gaiaonline/monstergalaxy/model/shop/Deal;)V

    .line 339
    return-void
.end method

.method public bridge synthetic itemSelected(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/gaiaonline/monstergalaxy/model/shop/Deal;

    invoke-virtual {p0, p1}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen$4;->itemSelected(Lcom/gaiaonline/monstergalaxy/model/shop/Deal;)V

    return-void
.end method
