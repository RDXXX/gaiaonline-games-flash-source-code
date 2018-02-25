.class public Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;
.super Lcom/gaiaonline/monstergalaxy/battle/EffectActor;
.source "BlueCoffeeEffect.java"


# instance fields
.field private listener:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;)Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;->listener:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;

    return-object v0
.end method


# virtual methods
.method public play()V
    .locals 4

    .prologue
    .line 23
    const-string v2, "ui_coffee"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playSound(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getInstance()Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;

    move-result-object v2

    sget-object v3, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->BLUE_COFFEE_1:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;)Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->getCopy()Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v0

    .line 25
    .local v0, "effect1":Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getInstance()Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;

    move-result-object v2

    sget-object v3, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->BLUE_COFFEE_2:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;)Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->getCopy()Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v1

    .line 26
    .local v1, "effect2":Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;
    new-instance v2, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect$1;

    invoke-direct {v2, p0, v1}, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect$1;-><init>(Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;)V

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->setOnCompleteListener(Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;)V

    .line 33
    new-instance v2, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect$2;

    invoke-direct {v2, p0}, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect$2;-><init>(Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;)V

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->setOnCompleteListener(Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;->setEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;)V

    .line 46
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->start()V

    .line 47
    return-void
.end method

.method public setOnCompleteListener(Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;->listener:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;

    .line 19
    return-void
.end method
