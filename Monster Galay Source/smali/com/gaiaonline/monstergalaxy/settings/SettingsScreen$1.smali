.class Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen$1;
.super Ljava/lang/Object;
.source "SettingsScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen$1;->this$0:Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 40
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showPreviousScreen()V

    .line 42
    return-void
.end method
