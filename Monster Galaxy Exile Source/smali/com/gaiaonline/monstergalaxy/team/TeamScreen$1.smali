.class Lcom/gaiaonline/monstergalaxy/team/TeamScreen$1;
.super Ljava/lang/Object;
.source "TeamScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/team/TeamScreen;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/team/TeamScreen;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/team/TeamScreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen$1;->this$0:Lcom/gaiaonline/monstergalaxy/team/TeamScreen;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen$1;->this$0:Lcom/gaiaonline/monstergalaxy/team/TeamScreen;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->access$0(Lcom/gaiaonline/monstergalaxy/team/TeamScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen$1;->this$0:Lcom/gaiaonline/monstergalaxy/team/TeamScreen;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->access$1(Lcom/gaiaonline/monstergalaxy/team/TeamScreen;)V

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showPreviousScreen()V

    goto :goto_0
.end method
