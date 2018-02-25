.class Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen$3;
.super Ljava/lang/Object;
.source "SlotMachineScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->cardGlowCompleted()V
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
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen$3;->this$0:Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen$3;->this$0:Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->hideDialog()V

    .line 199
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen$3;->this$0:Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->access$0(Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;)V

    .line 200
    return-void
.end method
