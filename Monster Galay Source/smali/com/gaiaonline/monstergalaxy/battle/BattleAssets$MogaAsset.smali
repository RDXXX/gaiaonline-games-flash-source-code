.class Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;
.super Ljava/lang/Object;
.source "BattleAssets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MogaAsset"
.end annotation


# instance fields
.field private asset:Lcom/gaiaonline/monstergalaxy/assets/Asset;

.field private isCpu:Z

.field private moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

.field private pm:Lcom/badlogic/gdx/graphics/Pixmap;

.field private texRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method private constructor <init>(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;Z)V
    .locals 1
    .param p1, "m"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .param p2, "isCpu"    # Z

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 153
    iput-boolean p2, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->isCpu:Z

    .line 154
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getAsset()Lcom/gaiaonline/monstergalaxy/assets/Asset;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->asset:Lcom/gaiaonline/monstergalaxy/assets/Asset;

    .line 155
    return-void
.end method

.method synthetic constructor <init>(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;ZLcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;-><init>(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;)Lcom/gaiaonline/monstergalaxy/assets/Asset;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->asset:Lcom/gaiaonline/monstergalaxy/assets/Asset;

    return-object v0
.end method

.method static synthetic access$2(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->pm:Lcom/badlogic/gdx/graphics/Pixmap;

    return-void
.end method

.method static synthetic access$3(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;)Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->isCpu:Z

    return v0
.end method

.method static synthetic access$4(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;)Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->pm:Lcom/badlogic/gdx/graphics/Pixmap;

    return-object v0
.end method

.method static synthetic access$5(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->texRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method

.method static synthetic access$6(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->texRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method static synthetic access$7(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;)Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    return-object v0
.end method

.method static synthetic access$8(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    return-void
.end method

.method static synthetic access$9(Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;Lcom/gaiaonline/monstergalaxy/assets/Asset;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets$MogaAsset;->asset:Lcom/gaiaonline/monstergalaxy/assets/Asset;

    return-void
.end method
