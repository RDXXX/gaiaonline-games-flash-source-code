.class Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor$1;
.super Ljava/lang/Object;
.source "CardActor.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/actors/Button$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->addMogaInfoButton(Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;

.field private final synthetic val$screen:Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor$1;->this$0:Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor$1;->val$screen:Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/actors/Button;)V
    .locals 3
    .param p1, "button"    # Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    .prologue
    .line 78
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor$1;->this$0:Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->access$0(Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;)Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->getMogaTypeId()I

    move-result v2

    .line 78
    invoke-interface {v1, v2}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getMogaType(I)Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v0

    .line 80
    .local v0, "mogaType":Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor$1;->val$screen:Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;

    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;->showMogaInfoDialog(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;)V

    .line 81
    return-void
.end method
