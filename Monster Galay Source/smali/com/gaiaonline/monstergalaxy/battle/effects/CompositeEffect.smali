.class public Lcom/gaiaonline/monstergalaxy/battle/effects/CompositeEffect;
.super Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;
.source "CompositeEffect.java"


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "effects"    # [Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;-><init>(Ljava/lang/String;)V

    .line 8
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 13
    return-void

    .line 8
    :cond_0
    aget-object v0, p2, v2

    .line 9
    .local v0, "ef":Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;
    iget-object v4, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->particleEffect:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;

    .line 10
    .local v1, "em":Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;
    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/CompositeEffect;->addEmitter(Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;)V

    goto :goto_1
.end method
