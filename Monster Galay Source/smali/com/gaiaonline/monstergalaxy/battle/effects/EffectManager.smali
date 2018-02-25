.class public Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;
.super Ljava/lang/Object;
.source "EffectManager.java"


# static fields
.field private static instance:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;


# instance fields
.field private effects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->effects:Ljava/util/Map;

    .line 21
    return-void
.end method

.method private addCompositeEffects()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 71
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->effects:Ljava/util/Map;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->EXPLOSION:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->getEffectName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gaiaonline/monstergalaxy/battle/effects/CompositeEffect;

    .line 72
    sget-object v3, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->EXPLOSION:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->getEffectName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    .line 73
    sget-object v5, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->STARS:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    invoke-virtual {p0, v5}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;)Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v5

    aput-object v5, v4, v6

    sget-object v5, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->RING:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    invoke-virtual {p0, v5}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;)Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-direct {v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/battle/effects/CompositeEffect;-><init>(Ljava/lang/String;[Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;)V

    .line 71
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->effects:Ljava/util/Map;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->BLUE_COFFEE:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->getEffectName()Ljava/lang/String;

    move-result-object v1

    .line 76
    new-instance v2, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->BLUE_COFFEE:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->getEffectName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->effects:Ljava/util/Map;

    .line 79
    sget-object v1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->CHARGE_A:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->getEffectName()Ljava/lang/String;

    move-result-object v1

    .line 80
    new-instance v2, Lcom/gaiaonline/monstergalaxy/battle/effects/CompositeEffect;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->CHARGE_A:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->getEffectName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    .line 81
    sget-object v5, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->CHARGE_A:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    invoke-virtual {p0, v5}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;)Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->getCopy()Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v5

    aput-object v5, v4, v6

    .line 82
    sget-object v5, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->CHARGE_A:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 81
    invoke-virtual {p0, v5}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;)Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v5

    .line 82
    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->getFlippedHorizontalCopy()Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v5

    .line 80
    aput-object v5, v4, v7

    invoke-direct {v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/battle/effects/CompositeEffect;-><init>(Ljava/lang/String;[Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;)V

    .line 78
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->effects:Ljava/util/Map;

    .line 85
    sget-object v1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->CHARGE_B:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->getEffectName()Ljava/lang/String;

    move-result-object v1

    .line 86
    new-instance v2, Lcom/gaiaonline/monstergalaxy/battle/effects/CompositeEffect;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->CHARGE_B:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->getEffectName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    .line 87
    sget-object v5, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->CHARGE_B:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    invoke-virtual {p0, v5}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;)Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->getCopy()Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v5

    aput-object v5, v4, v6

    .line 88
    sget-object v5, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->CHARGE_B:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 87
    invoke-virtual {p0, v5}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;)Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v5

    .line 88
    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->getFlippedHorizontalCopy()Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v5

    .line 86
    aput-object v5, v4, v7

    invoke-direct {v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/battle/effects/CompositeEffect;-><init>(Ljava/lang/String;[Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;)V

    .line 84
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method private getFloatFromNode(Lorg/codehaus/jackson/JsonNode;Ljava/lang/String;)F
    .locals 2
    .param p1, "node"    # Lorg/codehaus/jackson/JsonNode;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-virtual {p1, p2}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->getDoubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static getInstance()Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->instance:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;-><init>()V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->instance:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;

    .line 31
    sget-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->instance:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->loadEffects()V

    .line 33
    :cond_0
    sget-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->instance:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;

    return-object v0
.end method

.method private loadEffects()V
    .locals 1

    .prologue
    .line 92
    const-string v0, "effects.json"

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->loadEffects(Ljava/lang/String;)V

    .line 93
    return-void
.end method


# virtual methods
.method public getEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;)Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;
    .locals 2
    .param p1, "effectType"    # Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->effects:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->getEffectName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    return-object v0
.end method

.method public getEffect(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;
    .locals 1
    .param p1, "effectName"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->effects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    return-object v0
.end method

.method public getEffects()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->effects:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public loadEffects(Ljava/lang/String;)V
    .locals 11
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 99
    sget-object v8, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v8, p1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 100
    .local v2, "handle":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v3, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v3}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    .line 101
    .local v3, "m":Lorg/codehaus/jackson/map/ObjectMapper;
    const/4 v6, 0x0

    .line 103
    .local v6, "rootNode":Lorg/codehaus/jackson/JsonNode;
    :try_start_0
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v8

    const-class v9, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v3, v8, v9}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "rootNode":Lorg/codehaus/jackson/JsonNode;
    check-cast v6, Lorg/codehaus/jackson/JsonNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .restart local v6    # "rootNode":Lorg/codehaus/jackson/JsonNode;
    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonNode;->getElements()Ljava/util/Iterator;

    move-result-object v5

    .line 110
    .local v5, "nodesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codehaus/jackson/JsonNode;>;"
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v7

    .line 112
    .local v7, "scaleFactor":F
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->addCompositeEffects()V

    .line 167
    return-void

    .line 104
    .end local v5    # "nodesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codehaus/jackson/JsonNode;>;"
    .end local v6    # "rootNode":Lorg/codehaus/jackson/JsonNode;
    .end local v7    # "scaleFactor":F
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Could not open effects file"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 113
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "nodesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codehaus/jackson/JsonNode;>;"
    .restart local v6    # "rootNode":Lorg/codehaus/jackson/JsonNode;
    .restart local v7    # "scaleFactor":F
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codehaus/jackson/JsonNode;

    .line 114
    .local v4, "node":Lorg/codehaus/jackson/JsonNode;
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;-><init>()V

    .line 115
    .local v0, "data":Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;
    const-string v8, "name"

    invoke-virtual {v4, v8}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v8

    invoke-virtual {v8}, Lorg/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->name:Ljava/lang/String;

    .line 116
    const-string v8, "maxParticles"

    invoke-virtual {v4, v8}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v8

    invoke-virtual {v8}, Lorg/codehaus/jackson/JsonNode;->getIntValue()I

    move-result v8

    iput v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->maxParticleCount:I

    .line 117
    const-string v8, "duration"

    invoke-virtual {v4, v8}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v8

    invoke-virtual {v8}, Lorg/codehaus/jackson/JsonNode;->getDoubleValue()D

    move-result-wide v8

    double-to-float v8, v8

    iput v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->duration:F

    .line 118
    const-string v8, "angle"

    invoke-virtual {v4, v8}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v8

    invoke-virtual {v8}, Lorg/codehaus/jackson/JsonNode;->getDoubleValue()D

    move-result-wide v8

    double-to-float v8, v8

    iput v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->angle:F

    .line 119
    const-string v8, "angleVariance"

    invoke-virtual {v4, v8}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v8

    invoke-virtual {v8}, Lorg/codehaus/jackson/JsonNode;->getDoubleValue()D

    move-result-wide v8

    double-to-float v8, v8

    iput v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->angleVar:F

    .line 120
    const-string v8, "assetPath"

    invoke-virtual {v4, v8}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v8

    invoke-virtual {v8}, Lorg/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->assetPath:Ljava/lang/String;

    .line 121
    const-string v8, "speed"

    invoke-direct {p0, v4, v8}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getFloatFromNode(Lorg/codehaus/jackson/JsonNode;Ljava/lang/String;)F

    move-result v8

    iput v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->speed:F

    .line 122
    const-string v8, "particleLifespan"

    invoke-virtual {v4, v8}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v8

    invoke-virtual {v8}, Lorg/codehaus/jackson/JsonNode;->getDoubleValue()D

    move-result-wide v8

    double-to-float v8, v8

    iput v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->life:F

    .line 123
    const-string v8, "particleLifespanVariance"

    invoke-virtual {v4, v8}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v8

    .line 124
    invoke-virtual {v8}, Lorg/codehaus/jackson/JsonNode;->getDoubleValue()D

    move-result-wide v8

    double-to-float v8, v8

    .line 123
    iput v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->lifeVar:F

    .line 126
    const-string v8, "sourcePositionVariancex"

    .line 125
    invoke-direct {p0, v4, v8}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getFloatFromNode(Lorg/codehaus/jackson/JsonNode;Ljava/lang/String;)F

    move-result v8

    .line 126
    mul-float/2addr v8, v7

    .line 125
    iput v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->sourcePositionVarx:F

    .line 128
    const-string v8, "sourcePositionVariancey"

    .line 127
    invoke-direct {p0, v4, v8}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getFloatFromNode(Lorg/codehaus/jackson/JsonNode;Ljava/lang/String;)F

    move-result v8

    .line 128
    mul-float/2addr v8, v7

    .line 127
    iput v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->sourcePositionVary:F

    .line 129
    const-string v8, "startParticleSize"

    invoke-direct {p0, v4, v8}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getFloatFromNode(Lorg/codehaus/jackson/JsonNode;Ljava/lang/String;)F

    move-result v8

    .line 130
    mul-float/2addr v8, v7

    .line 129
    iput v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->startParticleSize:F

    .line 132
    const-string v8, "finishParticleSize"

    .line 131
    invoke-direct {p0, v4, v8}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getFloatFromNode(Lorg/codehaus/jackson/JsonNode;Ljava/lang/String;)F

    move-result v8

    .line 132
    mul-float/2addr v8, v7

    .line 131
    iput v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->finishParticleSize:F

    .line 133
    const-string v8, "gravityx"

    invoke-direct {p0, v4, v8}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getFloatFromNode(Lorg/codehaus/jackson/JsonNode;Ljava/lang/String;)F

    move-result v8

    mul-float/2addr v8, v7

    iput v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->gravityx:F

    .line 134
    const-string v8, "gravityy"

    invoke-direct {p0, v4, v8}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getFloatFromNode(Lorg/codehaus/jackson/JsonNode;Ljava/lang/String;)F

    move-result v8

    mul-float/2addr v8, v7

    iput v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->gravityy:F

    .line 135
    const/4 v8, 0x4

    new-array v8, v8, [F

    iput-object v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->startColor:[F

    .line 136
    iget-object v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->startColor:[F

    const/4 v9, 0x0

    const-string v10, "startColorRed"

    invoke-direct {p0, v4, v10}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getFloatFromNode(Lorg/codehaus/jackson/JsonNode;Ljava/lang/String;)F

    move-result v10

    aput v10, v8, v9

    .line 137
    iget-object v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->startColor:[F

    const/4 v9, 0x1

    const-string v10, "startColorGreen"

    invoke-direct {p0, v4, v10}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getFloatFromNode(Lorg/codehaus/jackson/JsonNode;Ljava/lang/String;)F

    move-result v10

    aput v10, v8, v9

    .line 138
    iget-object v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->startColor:[F

    const/4 v9, 0x2

    const-string v10, "startColorBlue"

    invoke-direct {p0, v4, v10}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getFloatFromNode(Lorg/codehaus/jackson/JsonNode;Ljava/lang/String;)F

    move-result v10

    aput v10, v8, v9

    .line 139
    iget-object v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->startColor:[F

    const/4 v9, 0x3

    const-string v10, "startColorAlpha"

    invoke-direct {p0, v4, v10}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getFloatFromNode(Lorg/codehaus/jackson/JsonNode;Ljava/lang/String;)F

    move-result v10

    aput v10, v8, v9

    .line 140
    const/4 v8, 0x4

    new-array v8, v8, [F

    iput-object v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->finishColor:[F

    .line 141
    iget-object v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->finishColor:[F

    const/4 v9, 0x0

    const-string v10, "finishColorRed"

    invoke-direct {p0, v4, v10}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getFloatFromNode(Lorg/codehaus/jackson/JsonNode;Ljava/lang/String;)F

    move-result v10

    aput v10, v8, v9

    .line 142
    iget-object v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->finishColor:[F

    const/4 v9, 0x1

    const-string v10, "finishColorGreen"

    invoke-direct {p0, v4, v10}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getFloatFromNode(Lorg/codehaus/jackson/JsonNode;Ljava/lang/String;)F

    move-result v10

    aput v10, v8, v9

    .line 143
    iget-object v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->finishColor:[F

    const/4 v9, 0x2

    const-string v10, "finishColorBlue"

    invoke-direct {p0, v4, v10}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getFloatFromNode(Lorg/codehaus/jackson/JsonNode;Ljava/lang/String;)F

    move-result v10

    aput v10, v8, v9

    .line 144
    iget-object v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->finishColor:[F

    const/4 v9, 0x3

    const-string v10, "finishColorAlpha"

    invoke-direct {p0, v4, v10}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getFloatFromNode(Lorg/codehaus/jackson/JsonNode;Ljava/lang/String;)F

    move-result v10

    aput v10, v8, v9

    .line 145
    const/4 v8, 0x4

    new-array v8, v8, [F

    iput-object v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->startColorVar:[F

    .line 146
    iget-object v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->startColorVar:[F

    const/4 v9, 0x0

    .line 147
    const-string v10, "startColorVarianceRed"

    .line 146
    invoke-direct {p0, v4, v10}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getFloatFromNode(Lorg/codehaus/jackson/JsonNode;Ljava/lang/String;)F

    move-result v10

    aput v10, v8, v9

    .line 148
    iget-object v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->startColorVar:[F

    const/4 v9, 0x1

    .line 149
    const-string v10, "startColorVarianceGreen"

    .line 148
    invoke-direct {p0, v4, v10}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getFloatFromNode(Lorg/codehaus/jackson/JsonNode;Ljava/lang/String;)F

    move-result v10

    aput v10, v8, v9

    .line 150
    iget-object v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->startColorVar:[F

    const/4 v9, 0x2

    .line 151
    const-string v10, "startColorVarianceBlue"

    .line 150
    invoke-direct {p0, v4, v10}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getFloatFromNode(Lorg/codehaus/jackson/JsonNode;Ljava/lang/String;)F

    move-result v10

    aput v10, v8, v9

    .line 152
    iget-object v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->startColorVar:[F

    const/4 v9, 0x3

    .line 153
    const-string v10, "startColorVarianceAlpha"

    .line 152
    invoke-direct {p0, v4, v10}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getFloatFromNode(Lorg/codehaus/jackson/JsonNode;Ljava/lang/String;)F

    move-result v10

    aput v10, v8, v9

    .line 154
    const/4 v8, 0x4

    new-array v8, v8, [F

    iput-object v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->finishColorVar:[F

    .line 155
    iget-object v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->finishColorVar:[F

    const/4 v9, 0x0

    .line 156
    const-string v10, "finishColorVarianceRed"

    .line 155
    invoke-direct {p0, v4, v10}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getFloatFromNode(Lorg/codehaus/jackson/JsonNode;Ljava/lang/String;)F

    move-result v10

    aput v10, v8, v9

    .line 157
    iget-object v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->finishColorVar:[F

    const/4 v9, 0x1

    .line 158
    const-string v10, "finishColorVarianceGreen"

    .line 157
    invoke-direct {p0, v4, v10}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getFloatFromNode(Lorg/codehaus/jackson/JsonNode;Ljava/lang/String;)F

    move-result v10

    aput v10, v8, v9

    .line 159
    iget-object v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->finishColorVar:[F

    const/4 v9, 0x2

    .line 160
    const-string v10, "finishColorVarianceBlue"

    .line 159
    invoke-direct {p0, v4, v10}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getFloatFromNode(Lorg/codehaus/jackson/JsonNode;Ljava/lang/String;)F

    move-result v10

    aput v10, v8, v9

    .line 161
    iget-object v8, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->finishColorVar:[F

    const/4 v9, 0x3

    .line 162
    const-string v10, "finishColorVarianceAlpha"

    .line 161
    invoke-direct {p0, v4, v10}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getFloatFromNode(Lorg/codehaus/jackson/JsonNode;Ljava/lang/String;)F

    move-result v10

    aput v10, v8, v9

    .line 164
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->effects:Ljava/util/Map;

    iget-object v9, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->name:Ljava/lang/String;

    new-instance v10, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    invoke-direct {v10, v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;-><init>(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;)V

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public removeParticles()V
    .locals 3

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getEffects()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    return-void

    .line 175
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    .line 176
    .local v0, "effect":Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;
    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->particleEffect:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;->dispose()V

    goto :goto_0
.end method
