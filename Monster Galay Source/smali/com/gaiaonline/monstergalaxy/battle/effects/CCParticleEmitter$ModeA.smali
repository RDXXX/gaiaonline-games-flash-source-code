.class Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeA;
.super Ljava/lang/Object;
.source "CCParticleEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModeA"
.end annotation


# instance fields
.field gravity:Lcom/badlogic/gdx/math/Vector2;

.field radialAccel:F

.field radialAccelVar:F

.field speed:F

.field speedVar:F

.field tangentialAccel:F

.field tangentialAccelVar:F

.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 608
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeA;->this$0:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeA;->gravity:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method
