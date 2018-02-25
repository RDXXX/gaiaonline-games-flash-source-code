.class Lcom/gaiaonline/monstergalaxy/map/IslandScreen$12;
.super Ljava/lang/Object;
.source "IslandScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->showPlayingOrderDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$12;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$12;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->hideDialog()V

    .line 741
    return-void
.end method
