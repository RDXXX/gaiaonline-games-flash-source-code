.class Lcom/gaiaonline/monstergalaxy/team/TeamScreen$3;
.super Ljava/lang/Object;
.source "TeamScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->showNapDialog()V
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
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen$3;->this$0:Lcom/gaiaonline/monstergalaxy/team/TeamScreen;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 204
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen$3;->this$0:Lcom/gaiaonline/monstergalaxy/team/TeamScreen;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->access$2(Lcom/gaiaonline/monstergalaxy/team/TeamScreen;)V

    .line 208
    :cond_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showPreviousScreen()V

    .line 209
    return-void
.end method
