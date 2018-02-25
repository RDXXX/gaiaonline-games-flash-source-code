.class public Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "MogaAction.java"


# static fields
.field private static ignoredSelectors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static logger:Lcom/badlogic/gdx/utils/Logger;


# instance fields
.field private effect:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field private target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private where:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/badlogic/gdx/utils/Logger;

    const-string v1, "MogaAction"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;->logger:Lcom/badlogic/gdx/utils/Logger;

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;->ignoredSelectors:Ljava/util/Set;

    .line 22
    sget-object v0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;->ignoredSelectors:Ljava/util/Set;

    const-string v1, "showRunAwayParticles"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;)V
    .locals 0
    .param p1, "effect"    # Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;->effect:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 127
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;
    .locals 5
    .param p0, "selector"    # Ljava/lang/String;

    .prologue
    .line 36
    new-instance v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;

    invoke-direct {v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;-><init>()V

    .line 37
    .local v1, "mogaAction":Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;
    const/4 v0, 0x0

    .line 40
    .local v0, "effectName":Ljava/lang/String;
    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iput-object v2, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;->where:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 43
    const-string v2, "showHit"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HIT_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_0
    :goto_0
    if-eqz v0, :cond_14

    .line 104
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->valueOf(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    move-result-object v2

    iput-object v2, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;->effect:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 118
    .end local v1    # "mogaAction":Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;
    :cond_1
    :goto_1
    return-object v1

    .line 46
    .restart local v1    # "mogaAction":Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;
    :cond_2
    const-string v2, "showAquarius"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 47
    const-string v0, "AQUARIUS_1"

    goto :goto_0

    .line 49
    :cond_3
    const-string v2, "showAquarius2"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 50
    const-string v0, "AQUARIUS_2"

    goto :goto_0

    .line 52
    :cond_4
    const-string v2, "showAries"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 53
    const-string v0, "ARIES_1"

    goto :goto_0

    .line 55
    :cond_5
    const-string v2, "showAries2"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 56
    const-string v0, "ARIES_2"

    goto :goto_0

    .line 58
    :cond_6
    const-string v2, "showCancer"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 59
    const-string v0, "CANCER_1"

    goto :goto_0

    .line 61
    :cond_7
    const-string v2, "showCancer2"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 62
    const-string v0, "CANCER_2"

    goto :goto_0

    .line 64
    :cond_8
    const-string v2, "showCapricorn"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 65
    const-string v0, "CAPRICORN"

    goto :goto_0

    .line 67
    :cond_9
    const-string v2, "showGemini"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 68
    const-string v0, "GEMINI"

    goto :goto_0

    .line 70
    :cond_a
    const-string v2, "showLeo"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 71
    const-string v0, "LEO"

    goto :goto_0

    .line 73
    :cond_b
    const-string v2, "showLibra"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 74
    const-string v0, "LIBRA"

    goto :goto_0

    .line 76
    :cond_c
    const-string v2, "showPisces"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 77
    const-string v0, "PISCES"

    goto/16 :goto_0

    .line 79
    :cond_d
    const-string v2, "showSagittarius"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 80
    const-string v0, "SAGITTARIUS"

    goto/16 :goto_0

    .line 82
    :cond_e
    const-string v2, "showScorpio"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 83
    const-string v0, "SCORPIO"

    goto/16 :goto_0

    .line 85
    :cond_f
    const-string v2, "showTaurus"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 86
    const-string v0, "TAURUS"

    goto/16 :goto_0

    .line 88
    :cond_10
    const-string v2, "showVirgo"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 89
    const-string v0, "VIRGO"

    goto/16 :goto_0

    .line 91
    :cond_11
    const-string v2, "chargeA"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 92
    const-string v0, "CHARGE_A"

    .line 93
    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iput-object v2, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;->where:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    goto/16 :goto_0

    .line 95
    :cond_12
    const-string v2, "chargeB"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 96
    const-string v0, "CHARGE_B"

    .line 97
    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iput-object v2, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;->where:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    goto/16 :goto_0

    .line 99
    :cond_13
    const-string v2, "explode"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    const-string v0, "EXPLOSION"

    goto/16 :goto_0

    .line 107
    :cond_14
    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;->logger:Lcom/badlogic/gdx/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Selector not supported: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V

    .line 112
    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;->ignoredSelectors:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    const/4 v1, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public act(F)V
    .locals 3
    .param p1, "delta"    # F

    .prologue
    .line 141
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;->effect:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;->effect:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;->where:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->doEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 144
    :cond_0
    return-void
.end method

.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;->effect:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    invoke-direct {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;-><init>(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;)V

    .line 155
    .local v0, "ma":Lcom/badlogic/gdx/scenes/scene2d/Action;
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 156
    return-object v0
.end method

.method public getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 132
    return-void
.end method
