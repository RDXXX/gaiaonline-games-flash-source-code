.class Lcom/gaiaonline/monstergalaxy/map/PlayerHUD$1;
.super Ljava/lang/Object;
.source "PlayerHUD.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD$1;->this$0:Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 51
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playScreenChangeSound()V

    .line 52
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->TEAM:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;ZZ)V

    .line 53
    return-void
.end method
