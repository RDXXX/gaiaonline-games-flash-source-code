.class Lcom/gaiaonline/monstergalaxy/battle/TeamHud$2;
.super Ljava/lang/Object;
.source "TeamHud.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->close(ZI)V
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
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud$2;->this$0:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 4
    .param p1, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    const/4 v3, 0x0

    .line 312
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud$2;->this$0:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->access$1(Lcom/gaiaonline/monstergalaxy/battle/TeamHud;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud$2;->this$0:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->access$1(Lcom/gaiaonline/monstergalaxy/battle/TeamHud;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud$Listener;

    const/4 v1, 0x1

    .line 314
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud$2;->this$0:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->access$2(Lcom/gaiaonline/monstergalaxy/battle/TeamHud;)Ljava/lang/Integer;

    move-result-object v2

    .line 313
    invoke-interface {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud$Listener;->onTeamHudClose(ZLjava/lang/Integer;)V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud$2;->this$0:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    invoke-static {v0, v3}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->access$0(Lcom/gaiaonline/monstergalaxy/battle/TeamHud;Z)V

    .line 317
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud$2;->this$0:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    invoke-static {v0, v3}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->access$3(Lcom/gaiaonline/monstergalaxy/battle/TeamHud;Z)V

    .line 318
    return-void
.end method
