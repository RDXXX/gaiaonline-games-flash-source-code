.class final enum Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;
.super Ljava/lang/Enum;
.source "TamerScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/map/TamerScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ClaimStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CAN_CLAIM:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

.field public static final enum CHEKING_TIMESTAMP:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

.field public static final enum CLAIMING:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

.field private static final synthetic ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

.field public static final enum MUST_WAIT:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

.field public static final enum NETWORK_FAILURE:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    const-string v1, "CHEKING_TIMESTAMP"

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;->CHEKING_TIMESTAMP:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    const-string v1, "CLAIMING"

    invoke-direct {v0, v1, v3}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;->CLAIMING:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    const-string v1, "CAN_CLAIM"

    invoke-direct {v0, v1, v4}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;->CAN_CLAIM:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    const-string v1, "MUST_WAIT"

    invoke-direct {v0, v1, v5}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;->MUST_WAIT:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    const-string v1, "NETWORK_FAILURE"

    invoke-direct {v0, v1, v6}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;->NETWORK_FAILURE:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    .line 69
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;->CHEKING_TIMESTAMP:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;->CLAIMING:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;->CAN_CLAIM:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;->MUST_WAIT:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;->NETWORK_FAILURE:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    return-object v0
.end method

.method public static values()[Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
