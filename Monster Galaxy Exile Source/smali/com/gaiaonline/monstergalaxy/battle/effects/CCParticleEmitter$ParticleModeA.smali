.class Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ParticleModeA;
.super Ljava/lang/Object;
.source "CCParticleEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParticleModeA"
.end annotation


# instance fields
.field dir:Lcom/badlogic/gdx/math/Vector2;

.field radialAccel:F

.field tangentialAccel:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ParticleModeA;->dir:Lcom/badlogic/gdx/math/Vector2;

    .line 546
    return-void
.end method

.method synthetic constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ParticleModeA;)V
    .locals 0

    .prologue
    .line 546
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ParticleModeA;-><init>()V

    return-void
.end method
