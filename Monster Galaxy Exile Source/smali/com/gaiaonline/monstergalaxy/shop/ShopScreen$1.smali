.class Lcom/gaiaonline/monstergalaxy/shop/ShopScreen$1;
.super Ljava/lang/Object;
.source "ShopScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen$1;->this$0:Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tabSelected(Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen$1;->this$0:Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;

    invoke-static {v0, p1}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;->access$0(Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;)V

    .line 144
    return-void
.end method
