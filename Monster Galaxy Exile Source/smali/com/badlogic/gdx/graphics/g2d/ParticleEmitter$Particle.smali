.class Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;
.super Lcom/badlogic/gdx/graphics/g2d/Sprite;
.source "ParticleEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Particle"
.end annotation


# instance fields
.field angle:F

.field angleCos:F

.field angleDiff:F

.field angleSin:F

.field currentLife:I

.field gravity:F

.field gravityDiff:F

.field life:I

.field rotation:F

.field rotationDiff:F

.field scale:F

.field scaleDiff:F

.field tint:[F

.field transparency:F

.field transparencyDiff:F

.field velocity:F

.field velocityDiff:F

.field wind:F

.field windDiff:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    .locals 0
    .param p1, "sprite"    # Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .prologue
    .line 897
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    .line 898
    return-void
.end method
