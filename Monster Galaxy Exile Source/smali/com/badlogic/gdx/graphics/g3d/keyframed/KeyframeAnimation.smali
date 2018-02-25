.class public Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;
.super Lcom/badlogic/gdx/graphics/g3d/Animation;
.source "KeyframeAnimation.java"


# instance fields
.field public keyframes:[Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

.field public length:F

.field public name:Ljava/lang/String;

.field public refs:I

.field public sampleRate:F


# direct methods
.method public constructor <init>(Ljava/lang/String;IFF)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "frames"    # I
    .param p3, "length"    # F
    .param p4, "sampleRate"    # F

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/Animation;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->name:Ljava/lang/String;

    .line 31
    new-array v0, p2, [Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->keyframes:[Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    .line 32
    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->length:F

    .line 33
    iput p4, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->sampleRate:F

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->refs:I

    .line 35
    return-void
.end method


# virtual methods
.method public addRef()V
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->refs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->refs:I

    .line 49
    return-void
.end method

.method public getLength()F
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->length:F

    return v0
.end method

.method public getNumFrames()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->keyframes:[Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    array-length v0, v0

    return v0
.end method

.method public removeRef()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->refs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->refs:I

    return v0
.end method
