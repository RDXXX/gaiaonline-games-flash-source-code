.class Lcom/gaiaonline/monstergalaxy/battle/TeamHud$1;
.super Ljava/lang/Object;
.source "TeamHud.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->open(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/TeamHud;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 2
    .param p1, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->access$0(Lcom/gaiaonline/monstergalaxy/battle/TeamHud;Z)V

    .line 236
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->access$1(Lcom/gaiaonline/monstergalaxy/battle/TeamHud;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->access$1(Lcom/gaiaonline/monstergalaxy/battle/TeamHud;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud$Listener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud$Listener;->onTeamHudOpen(Z)V

    .line 239
    :cond_0
    return-void
.end method
