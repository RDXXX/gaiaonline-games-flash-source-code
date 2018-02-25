.class Lcom/gaiaonline/monstergalaxy/shop/ShopScreen$2;
.super Ljava/lang/Object;
.source "ShopScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


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
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen$2;->this$0:Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 159
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showPreviousScreen()V

    .line 160
    return-void
.end method
