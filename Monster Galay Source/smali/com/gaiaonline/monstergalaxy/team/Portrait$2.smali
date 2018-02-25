.class Lcom/gaiaonline/monstergalaxy/team/Portrait$2;
.super Ljava/lang/Object;
.source "Portrait.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/team/Portrait;->buyMoga()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/team/Portrait;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/team/Portrait;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait$2;->this$0:Lcom/gaiaonline/monstergalaxy/team/Portrait;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait$2;->this$0:Lcom/gaiaonline/monstergalaxy/team/Portrait;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->access$1(Lcom/gaiaonline/monstergalaxy/team/Portrait;)Lcom/gaiaonline/monstergalaxy/team/TeamScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->hideDialog()V

    .line 317
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait$2;->this$0:Lcom/gaiaonline/monstergalaxy/team/Portrait;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait$2;->this$0:Lcom/gaiaonline/monstergalaxy/team/Portrait;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->access$2(Lcom/gaiaonline/monstergalaxy/team/Portrait;)Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->setMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 318
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->save()Z

    .line 319
    return-void
.end method
