.class public Lcom/gaiaonline/monstergalaxy/shop/TabSetController;
.super Ljava/lang/Object;
.source "TabSetController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Listener;,
        Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;
    }
.end annotation


# instance fields
.field private listener:Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Listener;

.field private tabs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/TabSetController;->tabs:Ljava/util/Map;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/shop/TabSetController;Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/shop/TabSetController;->tabSelected(Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;)V

    return-void
.end method

.method private tabSelected(Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;)V
    .locals 6
    .param p1, "selectedTab"    # Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 58
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/shop/TabSetController;->tabs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/shop/TabSetController;->listener:Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Listener;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/shop/TabSetController;->listener:Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Listener;

    invoke-interface {v1, p1}, Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Listener;->tabSelected(Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;)V

    .line 70
    :cond_0
    return-void

    .line 58
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;

    .line 60
    .local v0, "tab":Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;
    iget-object v1, v0, Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;->content:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;

    if-eqz v1, :cond_2

    .line 62
    iget-object v5, v0, Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;->content:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;

    if-ne v0, p1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->setVisible(Z)V

    .line 64
    :cond_2
    iget-object v5, v0, Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;->button:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    if-eq v0, p1, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {v5, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v1, v3

    .line 62
    goto :goto_1

    :cond_4
    move v1, v3

    .line 64
    goto :goto_2
.end method


# virtual methods
.method public addTab(Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "button"    # Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    .param p3, "content"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;

    .prologue
    .line 32
    new-instance v0, Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;-><init>()V

    .line 33
    .local v0, "tab":Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;
    iput-object p1, v0, Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;->id:Ljava/lang/String;

    .line 34
    iput-object p2, v0, Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;->button:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 35
    iput-object p3, v0, Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;->content:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;

    .line 36
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/shop/TabSetController;->tabs:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v1, Lcom/gaiaonline/monstergalaxy/shop/TabSetController$1;

    invoke-direct {v1, p0, v0}, Lcom/gaiaonline/monstergalaxy/shop/TabSetController$1;-><init>(Lcom/gaiaonline/monstergalaxy/shop/TabSetController;Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;)V

    invoke-virtual {p2, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setScreenListener(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V

    .line 44
    return-void
.end method

.method public setListener(Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Listener;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/shop/TabSetController;->listener:Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Listener;

    .line 54
    return-void
.end method

.method public setSelected(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/TabSetController;->tabs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/shop/TabSetController;->tabSelected(Lcom/gaiaonline/monstergalaxy/shop/TabSetController$Tab;)V

    .line 49
    return-void
.end method
