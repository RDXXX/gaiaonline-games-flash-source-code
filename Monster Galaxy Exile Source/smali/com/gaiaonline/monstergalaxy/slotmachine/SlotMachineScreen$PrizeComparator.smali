.class Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen$PrizeComparator;
.super Ljava/lang/Object;
.source "SlotMachineScreen.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrizeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;


# direct methods
.method private constructor <init>(Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen$PrizeComparator;->this$0:Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen$PrizeComparator;)V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen$PrizeComparator;-><init>(Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;)I
    .locals 3
    .param p1, "prize1"    # Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;
    .param p2, "prize2"    # Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    .prologue
    .line 334
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 336
    .local v0, "compare":I
    mul-int/lit8 v1, v0, -0x1

    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    check-cast p2, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    invoke-virtual {p0, p1, p2}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen$PrizeComparator;->compare(Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;)I

    move-result v0

    return v0
.end method
