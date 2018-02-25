.class Lcom/gaiaonline/monstergalaxy/map/IslandScreen$9;
.super Ljava/lang/Object;
.source "IslandScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->showFirstScreenTutorial()V
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
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$9;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 670
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$9;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->hideDialog()V

    .line 672
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$9;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->access$14(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)V

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$9;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->access$15(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setVisible(Z)V

    .line 677
    return-void
.end method
