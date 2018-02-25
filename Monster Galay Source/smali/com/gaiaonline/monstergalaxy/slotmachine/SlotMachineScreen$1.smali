.class Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen$1;
.super Ljava/lang/Object;
.source "SlotMachineScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->showShopDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen$1;->this$0:Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 156
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_0

    .line 157
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SHOP:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;ZZ)V

    .line 162
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen$1;->this$0:Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->hideDialog()V

    goto :goto_0
.end method
