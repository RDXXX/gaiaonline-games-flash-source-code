.class public Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;
.super Ljava/lang/Object;
.source "CCParticleEffect.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field private final emitters:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    .line 18
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 98
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    return-void

    .line 98
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;

    .line 100
    .local v0, "emitter":Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->removeParticles()V

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 3
    .param p1, "spriteBatch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "delta"    # F

    .prologue
    .line 26
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 28
    return-void

    .line 27
    :cond_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;

    invoke-virtual {v2, p1, p2}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public findEmitter(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    iget v2, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 64
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 61
    :cond_1
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;

    .line 62
    .local v0, "emitter":Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getEmitters()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public isComplete()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 36
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    iget v2, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 41
    const/4 v3, 0x1

    :cond_0
    return v3

    .line 37
    :cond_1
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;

    .line 38
    .local v0, "emitter":Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->isContinuous()Z

    move-result v4

    if-nez v4, :cond_0

    .line 39
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->isComplete()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public loadEmitterImages(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 8
    .param p1, "imagesDir"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 82
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    iget v4, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v4, "n":I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 89
    return-void

    .line 83
    :cond_0
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;

    .line 84
    .local v0, "emitter":Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->getImagePath()Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "imagePath":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 82
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_1
    new-instance v5, Ljava/io/File;

    const/16 v6, 0x5c

    const/16 v7, 0x2f

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "imageName":Ljava/lang/String;
    new-instance v5, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;->loadTexture(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-virtual {v0, v5}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->setSprite(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    goto :goto_1
.end method

.method public loadEmitterImages(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V
    .locals 10
    .param p1, "atlas"    # Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .prologue
    .line 68
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    iget v5, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v5, "n":I
    :goto_0
    if-lt v1, v5, :cond_0

    .line 79
    return-void

    .line 69
    :cond_0
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;

    .line 70
    .local v0, "emitter":Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->getImagePath()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "imagePath":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 68
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_1
    new-instance v7, Ljava/io/File;

    const/16 v8, 0x5c

    const/16 v9, 0x2f

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "imageName":Ljava/lang/String;
    const/16 v7, 0x2e

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 74
    .local v4, "lastDotIndex":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 75
    :cond_2
    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->createSprite(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-result-object v6

    .line 76
    .local v6, "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    if-nez v6, :cond_3

    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "SpriteSheet missing image: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 77
    :cond_3
    invoke-virtual {v0, v6}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->setSprite(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    goto :goto_1
.end method

.method protected loadTexture(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Texture;
    .locals 2
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 92
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    return-object v0
.end method

.method public setFlip(ZZ)V
    .locals 3
    .param p1, "flipX"    # Z
    .param p2, "flipY"    # Z

    .prologue
    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 52
    return-void

    .line 51
    :cond_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;

    invoke-virtual {v2, p1, p2}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->setFlip(ZZ)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setPosition(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 47
    return-void

    .line 46
    :cond_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;

    invoke-virtual {v2, p1, p2}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->setPosition(FF)V

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 23
    return-void

    .line 22
    :cond_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->start()V

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
