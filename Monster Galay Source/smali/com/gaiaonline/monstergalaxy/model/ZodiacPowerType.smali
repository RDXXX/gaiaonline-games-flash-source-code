.class public final enum Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;
.super Ljava/lang/Enum;
.source "ZodiacPowerType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BAD:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

.field private static final synthetic ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

.field public static final enum GOOD:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

.field public static final enum NORMAL:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;


# instance fields
.field private assetName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    const-string v1, "GOOD"

    const-string v2, "data/green.circle.png"

    invoke-direct {v0, v1, v3, v2}, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->GOOD:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    .line 5
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    const-string v1, "NORMAL"

    const-string v2, "data/white.circle.png"

    invoke-direct {v0, v1, v4, v2}, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->NORMAL:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    .line 6
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    const-string v1, "BAD"

    const-string v2, "data/red.circle.png"

    invoke-direct {v0, v1, v5, v2}, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->BAD:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->GOOD:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->NORMAL:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->BAD:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "assetName"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->assetName:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    return-object v0
.end method

.method public static values()[Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    array-length v1, v0

    new-array v2, v1, [Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getAssetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->assetName:Ljava/lang/String;

    return-object v0
.end method
