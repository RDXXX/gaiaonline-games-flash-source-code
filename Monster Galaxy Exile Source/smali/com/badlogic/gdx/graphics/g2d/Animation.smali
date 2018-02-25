.class public Lcom/badlogic/gdx/graphics/g2d/Animation;
.super Ljava/lang/Object;
.source "Animation.java"


# instance fields
.field public frameDuration:F

.field final keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>(FLjava/util/List;)V
    .locals 4
    .param p1, "frameDuration"    # F
    .param p2, "keyFrames"    # Ljava/util/List;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    .line 38
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 40
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aput-object v2, v3, v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method public varargs constructor <init>(F[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0
    .param p1, "frameDuration"    # F
    .param p2, "keyFrames"    # [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    .line 50
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 51
    return-void
.end method


# virtual methods
.method public getKeyFrame(FZ)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 2
    .param p1, "stateTime"    # F
    .param p2, "looping"    # Z

    .prologue
    .line 60
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    div-float v1, p1, v1

    float-to-int v0, v1

    .line 62
    .local v0, "frameNumber":I
    if-nez p2, :cond_0

    .line 63
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 67
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v1, v1, v0

    return-object v1

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v1, v1

    rem-int/2addr v0, v1

    goto :goto_0
.end method
