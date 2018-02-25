.class Lcom/gaiaonline/monstergalaxy/map/IslandScreen$6;
.super Ljava/lang/Object;
.source "IslandScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->showManageTeamDialog()V
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
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$6;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 589
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_0

    .line 590
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->TEAM:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;ZZ)V

    .line 595
    :goto_0
    return-void

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$6;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->hideDialog()V

    goto :goto_0
.end method
