.class public Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;
.super Ljava/lang/Object;
.source "BattleAssets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;
    }
.end annotation


# static fields
.field private static cpuMogaTextures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">;"
        }
    .end annotation
.end field

.field static mogaAssets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;",
            ">;"
        }
    .end annotation
.end field

.field private static playerMogaTexture:Lcom/badlogic/gdx/graphics/Texture;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearTextures()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 133
    sget-object v1, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->playerMogaTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v1, :cond_0

    .line 134
    sget-object v1, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->playerMogaTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 135
    sput-object v3, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->playerMogaTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 137
    :cond_0
    sget-object v1, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->cpuMogaTextures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "cpuTex":Lcom/badlogic/gdx/graphics/Texture;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 140
    sget-object v1, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->cpuMogaTextures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 141
    sput-object v3, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->cpuMogaTextures:Ljava/util/List;

    .line 142
    return-void

    .line 137
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cpuTex":Lcom/badlogic/gdx/graphics/Texture;
    check-cast v0, Lcom/badlogic/gdx/graphics/Texture;

    .line 138
    .restart local v0    # "cpuTex":Lcom/badlogic/gdx/graphics/Texture;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    goto :goto_0
.end method

.method public static dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 114
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->clearTextures()V

    .line 116
    sget-object v1, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->mogaAssets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "ma":Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    sget-object v1, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->mogaAssets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 129
    sput-object v3, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->mogaAssets:Ljava/util/List;

    .line 130
    return-void

    .line 116
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ma":Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;
    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;

    .line 117
    .restart local v0    # "ma":Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->access$6(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 118
    invoke-static {v0, v3}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->access$5(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 120
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->access$4(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 121
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->access$4(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 124
    :cond_1
    invoke-static {v0, v3}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->access$2(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 125
    invoke-static {v0, v3}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->access$8(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 126
    invoke-static {v0, v3}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->access$9(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;Lcom/gaiaonline/monstergalaxy/assets/Asset;)V

    goto :goto_0
.end method

.method public static getTexture(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;Z)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 3
    .param p0, "moga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .param p1, "isCpu"    # Z

    .prologue
    .line 104
    sget-object v1, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->mogaAssets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 104
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;

    .line 105
    .local v0, "ma":Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->access$7(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;)Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->access$3(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;)Z

    move-result v2

    if-ne v2, p1, :cond_0

    .line 106
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->access$6(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    goto :goto_0
.end method

.method public static load()V
    .locals 16

    .prologue
    .line 51
    sget-object v0, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->mogaAssets:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->cpuMogaTextures:Ljava/util/List;

    if-nez v0, :cond_1

    .line 52
    :cond_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->setNode(Lcom/gaiaonline/monstergalaxy/model/map/Node;)V

    .line 57
    :cond_1
    const/4 v14, 0x0

    .line 58
    .local v14, "width":I
    const/4 v10, 0x0

    .line 59
    .local v10, "height":I
    sget-object v0, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->mogaAssets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 73
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v14}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v2

    .line 74
    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v3

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 73
    invoke-direct {v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->playerMogaTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 78
    sget-object v0, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->playerMogaTexture:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 80
    const/4 v12, 0x0

    .line 81
    .local v12, "offset":I
    sget-object v0, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->mogaAssets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 101
    return-void

    .line 59
    .end local v12    # "offset":I
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;

    .line 60
    .local v11, "m":Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;
    new-instance v13, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-static {v11}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->access$1(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;)Lcom/gaiaonline/monstergalaxy/assets/Asset;

    move-result-object v2

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->getAsset(Lcom/gaiaonline/monstergalaxy/assets/Asset;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-direct {v13, v2}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 61
    .local v13, "pm":Lcom/badlogic/gdx/graphics/Pixmap;
    invoke-static {v11, v13}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->access$2(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 62
    invoke-static {v11}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->access$3(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 65
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v2

    if-le v2, v10, :cond_4

    .line 66
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v10

    .line 68
    :cond_4
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v2

    add-int/2addr v14, v2

    goto :goto_0

    .line 81
    .end local v11    # "m":Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;
    .end local v13    # "pm":Lcom/badlogic/gdx/graphics/Pixmap;
    .restart local v12    # "offset":I
    :cond_5
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;

    .line 82
    .restart local v11    # "m":Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;
    invoke-static {v11}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->access$3(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 83
    invoke-static {v11}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->access$4(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v9

    .line 84
    .local v9, "cpuWidth":I
    invoke-static {v11}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->access$4(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v8

    .line 85
    .local v8, "cpuHeight":I
    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v1, v9, v8, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 86
    .local v1, "cpuTex":Lcom/badlogic/gdx/graphics/Texture;
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 87
    invoke-static {v11}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->access$4(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/badlogic/gdx/graphics/Texture;->draw(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 88
    sget-object v0, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->cpuMogaTextures:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 90
    invoke-static {v11}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->access$4(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    invoke-static {v11}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->access$4(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 89
    invoke-static {v11, v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->access$5(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 91
    invoke-static {v11}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->access$6(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->flip(ZZ)V

    .line 98
    .end local v1    # "cpuTex":Lcom/badlogic/gdx/graphics/Texture;
    .end local v8    # "cpuHeight":I
    .end local v9    # "cpuWidth":I
    :goto_2
    invoke-static {v11}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->access$4(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 99
    const/4 v0, 0x0

    invoke-static {v11, v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->access$2(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;Lcom/badlogic/gdx/graphics/Pixmap;)V

    goto/16 :goto_1

    .line 93
    :cond_6
    sget-object v0, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->playerMogaTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v11}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->access$4(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v12, v3}, Lcom/badlogic/gdx/graphics/Texture;->draw(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 94
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->playerMogaTexture:Lcom/badlogic/gdx/graphics/Texture;

    const/4 v5, 0x0

    .line 95
    invoke-static {v11}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->access$4(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v6

    invoke-static {v11}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->access$4(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v7

    move v4, v12

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 94
    invoke-static {v11, v2}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->access$5(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 96
    invoke-static {v11}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->access$4(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    add-int/2addr v12, v0

    goto :goto_2
.end method

.method private static setNode(Lcom/gaiaonline/monstergalaxy/model/map/Node;)V
    .locals 7
    .param p0, "node"    # Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .prologue
    const/4 v6, 0x0

    .line 33
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v3

    .line 34
    .local v3, "playerMogas":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/moga/Moga;>;"
    new-instance v4, Ljava/util/ArrayList;

    .line 35
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    .line 34
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v4, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->mogaAssets:Ljava/util/List;

    .line 36
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v4, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->cpuMogaTextures:Ljava/util/List;

    .line 38
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 43
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 47
    return-void

    .line 38
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 39
    .local v0, "cpuMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    new-instance v1, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;

    const/4 v5, 0x1

    invoke-direct {v1, v0, v5, v6}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;-><init>(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;ZLcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;)V

    .line 40
    .local v1, "ma":Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;
    sget-object v5, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->mogaAssets:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    .end local v0    # "cpuMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .end local v1    # "ma":Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 44
    .local v2, "playerMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    new-instance v1, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v6}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;-><init>(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;ZLcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;)V

    .line 45
    .restart local v1    # "ma":Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;
    sget-object v5, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->mogaAssets:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
