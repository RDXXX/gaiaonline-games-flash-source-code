.class public Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;
.super Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;
.source "BlueCoffeeEffect.java"


# instance fields
.field private currentEffect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

.field private final effect1:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

.field private final effect2:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

.field private listener:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getInstance()Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;

    move-result-object v0

    .line 16
    sget-object v1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->BLUE_COFFEE_1:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;)Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->getCopy()Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;->effect1:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    .line 17
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getInstance()Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;

    move-result-object v0

    .line 18
    sget-object v1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->BLUE_COFFEE_2:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;)Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->getCopy()Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;->effect2:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    .line 19
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;->effect1:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect$1;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect$1;-><init>(Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;)V

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->setOnCompleteListener(Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;)V

    .line 26
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;->effect2:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect$2;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect$2;-><init>(Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;)V

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->setOnCompleteListener(Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;)V

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;)Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;->effect2:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    return-object v0
.end method

.method static synthetic access$1(Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;)V
    .locals 0

    .prologue
    .line 9
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;->currentEffect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    return-void
.end method

.method static synthetic access$2(Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;)Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;->listener:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;

    return-object v0
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 1
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "deltaTime"    # F

    .prologue
    .line 58
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;->currentEffect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    invoke-virtual {v0, p1, p2}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 59
    return-void
.end method

.method public setOnCompleteListener(Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;->listener:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;

    .line 47
    return-void
.end method

.method public setPosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 41
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;->effect1:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    invoke-virtual {v0, p1, p2}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->setPosition(FF)V

    .line 42
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;->effect2:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    invoke-virtual {v0, p1, p2}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->setPosition(FF)V

    .line 43
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "ui_coffee"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playSound(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;->effect1:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;->currentEffect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    .line 53
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;->currentEffect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->start()V

    .line 54
    return-void
.end method
