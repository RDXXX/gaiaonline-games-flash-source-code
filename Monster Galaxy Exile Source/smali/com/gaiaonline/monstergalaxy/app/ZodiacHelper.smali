.class public Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;
.super Ljava/lang/Object;
.source "ZodiacHelper.java"


# static fields
.field private static instance:Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;


# instance fields
.field private storage:Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

.field private zodiacMultiplierBad:F

.field private zodiacMultiplierGood:F

.field private zodiacMultipliers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->zodiacMultipliers:Ljava/util/Map;

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->instance:Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;-><init>()V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->instance:Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;

    .line 27
    :cond_0
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->instance:Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;

    return-object v0
.end method


# virtual methods
.method public getPowerTypeAgainst(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;
    .locals 1
    .param p1, "playerZodiac"    # Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;
    .param p2, "computerZodiac"    # Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->getZodiacSignMultiplier(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->getPowerTypeFrom(F)Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    move-result-object v0

    return-object v0
.end method

.method public getPowerTypeFrom(F)Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;
    .locals 1
    .param p1, "zodiacMultiplier"    # F

    .prologue
    .line 55
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->zodiacMultiplierGood:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 57
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->GOOD:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    .line 63
    :goto_0
    return-object v0

    .line 59
    :cond_0
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->zodiacMultiplierBad:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 61
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->BAD:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    goto :goto_0

    .line 63
    :cond_1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->NORMAL:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    goto :goto_0
.end method

.method public getZodiacSignMultiplier(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)F
    .locals 5
    .param p1, "playerZodiac"    # Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;
    .param p2, "computerZodiac"    # Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->ordinal()I

    move-result v2

    mul-int/lit8 v2, v2, 0xc

    invoke-virtual {p2}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->ordinal()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 40
    .local v0, "key":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->zodiacMultipliers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 41
    .local v1, "multiplier":Ljava/lang/Float;
    if-nez v1, :cond_0

    .line 43
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->storage:Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getZodiacSignMultiplier(Ljava/lang/String;Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 44
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->zodiacMultipliers:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    return v2
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->storage:Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    .line 33
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->storage:Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    const-string v1, "zodiacMultipler_Good"

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->zodiacMultiplierGood:F

    .line 34
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->storage:Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    const-string v1, "zodiacMultiplier_Bad"

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->zodiacMultiplierBad:F

    .line 35
    return-void
.end method
