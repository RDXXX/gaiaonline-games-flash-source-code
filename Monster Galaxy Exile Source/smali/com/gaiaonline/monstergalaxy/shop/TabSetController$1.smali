.class Lcom/gaiaonline/monstergalaxy/shop/TabSetController$1;
.super Ljava/lang/Object;
.source "TabSetController.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/shop/TabSetController;->addTab(Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/shop/TabSetController;

.field private final synthetic val$tab:Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/shop/TabSetController;Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/shop/TabSetController$1;->this$0:Lcom/gaiaonline/monstergalaxy/shop/TabSetController;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/shop/TabSetController$1;->val$tab:Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/TabSetController$1;->this$0:Lcom/gaiaonline/monstergalaxy/shop/TabSetController;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/shop/TabSetController$1;->val$tab:Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/shop/TabSetController;->access$0(Lcom/gaiaonline/monstergalaxy/shop/TabSetController;Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;)V

    .line 42
    return-void
.end method
