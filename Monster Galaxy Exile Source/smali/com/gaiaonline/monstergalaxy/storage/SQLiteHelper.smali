.class public Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteHelper.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private islands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/map/Island;",
            ">;"
        }
    .end annotation
.end field

.field private slotMachine:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0x16

    const/16 v5, 0x10

    const/4 v4, 0x0

    .line 51
    const-string v2, "monsterGalaxy.db"

    invoke-direct {p0, p1, v2, v4, v6}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 45
    const-string v2, "SQLiteHelper"

    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->TAG:Ljava/lang/String;

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/databases/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "monsterGalaxy.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "filePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "dbFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    invoke-direct {p0, p1, v1}, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->copyDatabase(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    :cond_0
    invoke-static {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 64
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    if-eq v2, v6, :cond_1

    .line 65
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 68
    invoke-direct {p0, p1, v1}, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->copyDatabase(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    invoke-static {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 74
    :cond_1
    return-void
.end method

.method private buildIsland(Landroid/database/Cursor;)Lcom/gaiaonline/monstergalaxy/model/map/Island;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 472
    new-instance v2, Lcom/gaiaonline/monstergalaxy/model/map/Island;

    invoke-direct {v2}, Lcom/gaiaonline/monstergalaxy/model/map/Island;-><init>()V

    .line 474
    .local v2, "island":Lcom/gaiaonline/monstergalaxy/model/map/Island;
    const/16 v3, 0x8

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->setId(I)V

    .line 475
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->setName(Ljava/lang/String;)V

    .line 476
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->setStars(I)V

    .line 477
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->setMapAssetName(Ljava/lang/String;)V

    .line 478
    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->setMaxNumberOfMogas(I)V

    .line 479
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->setQuestIds([I)V

    .line 480
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->setMaxLevel(I)V

    .line 481
    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    const/4 v4, 0x7

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->setPosition(FF)V

    .line 482
    const/16 v3, 0x9

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->setAmbienceAudio(Ljava/lang/String;)V

    .line 483
    const/16 v3, 0xa

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->setStingAudio(Ljava/lang/String;)V

    .line 485
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "islandUnlockMogas_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "constantName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 487
    .local v1, "constantValue":I
    invoke-virtual {v2, v1}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->setNumberOfRequiredMogasToUnlock(I)V

    .line 489
    invoke-virtual {p0, v2}, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->getIslandNodes(Lcom/gaiaonline/monstergalaxy/model/map/Island;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->setNodes(Ljava/util/List;)V

    .line 491
    return-object v2
.end method

.method private buildMogaType(Landroid/database/Cursor;)Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 267
    const/4 v0, 0x0

    .line 269
    .local v0, "mogaType":Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    .end local v0    # "mogaType":Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;
    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;-><init>()V

    .line 271
    .restart local v0    # "mogaType":Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->setId(I)V

    .line 272
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->setName(Ljava/lang/String;)V

    .line 273
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->setDescription(Ljava/lang/String;)V

    .line 274
    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->getValue(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->setRarity(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;)V

    .line 275
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->setOffense(I)V

    .line 276
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->setDefense(I)V

    .line 277
    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->getValue(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->setZodiacSign(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)V

    .line 278
    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->setZodiacRating(I)V

    .line 279
    const/16 v3, 0x8

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->setMaxHealth(I)V

    .line 280
    const/16 v3, 0x9

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->setPortraitAsset(Ljava/lang/String;)V

    .line 281
    const/16 v3, 0xa

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->setAssetName(Ljava/lang/String;)V

    .line 282
    const/16 v3, 0xb

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->getAttackMove(I)Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->setBasicAttack(Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;)V

    .line 283
    const/16 v3, 0xc

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->getAttackMove(I)Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->setZodiacAttack(Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;)V

    .line 284
    const/16 v3, 0xd

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->setIslandId(I)V

    .line 285
    const/16 v3, 0xe

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;->getValue(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->setSubType(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;)V

    .line 286
    const/16 v3, 0xf

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->setPurchasable(Z)V

    .line 288
    return-object v0

    :cond_0
    move v1, v2

    .line 286
    goto :goto_0
.end method

.method private buildNode(Landroid/database/Cursor;)Lcom/gaiaonline/monstergalaxy/model/map/Node;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 513
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Node;-><init>()V

    .line 515
    .local v0, "node":Lcom/gaiaonline/monstergalaxy/model/map/Node;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->setId(I)V

    .line 516
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->setName(Ljava/lang/String;)V

    .line 517
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->setDescription(Ljava/lang/String;)V

    .line 518
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->setAdjacentNodeIds([I)V

    .line 519
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->setEnergyCost(I)V

    .line 520
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->setThumbnailAsset(Ljava/lang/String;)V

    .line 521
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->setBackgroundAsset(Ljava/lang/String;)V

    .line 522
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->setDropId(I)V

    .line 523
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->setDropProbability(F)V

    .line 524
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->setPosition(FF)V

    .line 526
    return-object v0
.end method

.method private buildQuest(Landroid/database/Cursor;)Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 397
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;-><init>()V

    .line 399
    .local v0, "quest":Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->setId(I)V

    .line 400
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->setName(Ljava/lang/String;)V

    .line 401
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;->valueOf(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->setType(Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;)V

    .line 402
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->setNpcName(Ljava/lang/String;)V

    .line 403
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->setNpcAsset(Ljava/lang/String;)V

    .line 404
    new-instance v1, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->setStartDialog(Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;)V

    .line 405
    new-instance v1, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->setDescriptionDialog(Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;)V

    .line 406
    new-instance v1, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->setCompleteDialog(Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;)V

    .line 407
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->setBeatNodeId(I)V

    .line 408
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->setContenderMogaTypeId(I)V

    .line 409
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->setNumberOfContenders(I)V

    .line 411
    new-instance v1, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;

    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->setRewardItem(Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;)V

    .line 413
    const/16 v1, 0xd

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->setGrantNodeId(I)V

    .line 414
    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->setGrantQuestId(I)V

    .line 415
    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->setRestrictionNodeIds(Ljava/lang/String;)V

    .line 416
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->setRestrictionQuestId(I)V

    .line 418
    const/16 v1, 0x11

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->getIsland(I)Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->setIslandToWinStars(Lcom/gaiaonline/monstergalaxy/model/map/Island;)V

    .line 419
    const/16 v1, 0x12

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->setNumberOfStarsToWinInIsland(I)V

    .line 420
    const/16 v1, 0x13

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->setBlockedNodeId(I)V

    .line 421
    const/16 v1, 0x14

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->setMusic(Ljava/lang/String;)V

    .line 423
    return-object v0
.end method

.method private copyDatabase(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbFile"    # Ljava/lang/String;

    .prologue
    .line 86
    const/4 v2, 0x0

    .line 87
    .local v2, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 90
    .local v4, "os":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "monsterGalaxy.db"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 94
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .end local v4    # "os":Ljava/io/OutputStream;
    .local v5, "os":Ljava/io/OutputStream;
    const/16 v6, 0x400

    :try_start_1
    new-array v0, v6, [B

    .line 99
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "length":I
    if-gtz v3, :cond_2

    .line 103
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    if-eqz v2, :cond_0

    .line 112
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 119
    :cond_0
    :goto_1
    if-eqz v5, :cond_6

    .line 122
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    move-object v4, v5

    .line 131
    .end local v0    # "buffer":[B
    .end local v3    # "length":I
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :cond_1
    :goto_2
    return-void

    .line 100
    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "length":I
    .restart local v5    # "os":Ljava/io/OutputStream;
    :cond_2
    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {v5, v0, v6, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 105
    .end local v0    # "buffer":[B
    .end local v3    # "length":I
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 106
    .end local v5    # "os":Ljava/io/OutputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 109
    if-eqz v2, :cond_3

    .line 112
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 119
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_4
    if-eqz v4, :cond_1

    .line 122
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 123
    :catch_1
    move-exception v1

    .line 124
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "SQLiteHelper"

    const-string v7, "Error while trying to close output stream"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 114
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "SQLiteHelper"

    const-string v7, "Error while trying to close input stream"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 107
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 109
    :goto_5
    if-eqz v2, :cond_4

    .line 112
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 119
    :cond_4
    :goto_6
    if-eqz v4, :cond_5

    .line 122
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 129
    :cond_5
    :goto_7
    throw v6

    .line 113
    :catch_3
    move-exception v1

    .line 114
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "SQLiteHelper"

    const-string v8, "Error while trying to close input stream"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 123
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 124
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "SQLiteHelper"

    const-string v8, "Error while trying to close output stream"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 113
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "length":I
    .restart local v5    # "os":Ljava/io/OutputStream;
    :catch_5
    move-exception v1

    .line 114
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "SQLiteHelper"

    const-string v7, "Error while trying to close input stream"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 123
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 124
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "SQLiteHelper"

    const-string v7, "Error while trying to close output stream"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    move-object v4, v5

    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    goto :goto_2

    .line 107
    .end local v0    # "buffer":[B
    .end local v3    # "length":I
    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    goto :goto_5

    .line 105
    :catch_7
    move-exception v1

    goto :goto_3
.end method

.method private getEncounterAppearances(I)Ljava/util/List;
    .locals 9
    .param p1, "encounterId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 565
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 567
    .local v1, "appearances":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;>;"
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT encounter_id, moga_type_id, level, n, probability FROM encounter_appearances WHERE encounter_id = ?"

    new-array v5, v8, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 569
    .local v2, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 582
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 584
    return-object v1

    .line 571
    :cond_0
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;-><init>()V

    .line 573
    .local v0, "appearance":Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;->setMogaTypeId(I)V

    .line 574
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;->setLevel(I)V

    .line 575
    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;->setN(I)V

    .line 576
    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;->setProbability(F)V

    .line 578
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getIntArray(Ljava/lang/String;)[I
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 658
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 659
    .local v2, "stringArray":[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [I

    .line 661
    .local v1, "intArray":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 665
    return-object v1

    .line 662
    :cond_0
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v0

    .line 661
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getSlotMachinePrizes(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "reelName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;",
            ">;"
        }
    .end annotation

    .prologue
    .line 719
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 721
    .local v2, "prizes":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;>;"
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT prize_id, displayName, bluecoffees, mogaType, mogacash, name, starseeds, type FROM reel_prizes WHERE type = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 723
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 738
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 740
    return-object v2

    .line 724
    :cond_0
    new-instance v1, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    invoke-direct {v1}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;-><init>()V

    .line 726
    .local v1, "prize":Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;
    const-string v3, "bluecoffees"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->setBlueCoffees(I)V

    .line 727
    const-string v3, "displayName"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->setDisplayName(Ljava/lang/String;)V

    .line 728
    const-string v3, "prize_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->setId(I)V

    .line 729
    const-string v3, "mogaType"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->setMogaTypeId(I)V

    .line 730
    const-string v3, "mogacash"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->setMogaCash(I)V

    .line 731
    const-string v3, "name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->setName(Ljava/lang/String;)V

    .line 732
    const-string v3, "starseeds"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->setStarSeeds(I)V

    .line 733
    const-string v3, "type"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->setType(Ljava/lang/String;)V

    .line 735
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getSlotMachineReels()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 695
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 697
    .local v3, "reels":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;>;"
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT name, probability FROM reels"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 699
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 713
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 715
    return-object v3

    .line 700
    :cond_0
    new-instance v2, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;

    invoke-direct {v2}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;-><init>()V

    .line 702
    .local v2, "reel":Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;
    const-string v4, "name"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 704
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->setName(Ljava/lang/String;)V

    .line 705
    const-string v4, "probability"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v2, v4, v5}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->setProbability(D)V

    .line 707
    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 708
    invoke-direct {p0, v1}, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->getSlotMachinePrizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->setPrizes(Ljava/util/List;)V

    .line 710
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getTextsByNotificationId(I)Ljava/util/List;
    .locals 12
    .param p1, "notificationId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 638
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "SELECT notification_id, title, message, button_text, text_id FROM notification_texts WHERE notification_id = ? ORDER BY text_id"

    .line 639
    new-array v8, v11, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    .line 638
    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 640
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 641
    .local v4, "texts":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;>;"
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 651
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 653
    return-object v4

    .line 642
    :cond_0
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 643
    .local v5, "title":Ljava/lang/String;
    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 644
    .local v2, "message":Ljava/lang/String;
    const/4 v6, 0x3

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, "buttonText":Ljava/lang/String;
    new-instance v3, Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;

    invoke-direct {v3, v10, v2, v5, v0}, Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    .local v3, "text":Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getAllIslands()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/map/Island;",
            ">;"
        }
    .end annotation

    .prologue
    .line 445
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->islands:Ljava/util/List;

    if-nez v2, :cond_0

    .line 447
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->islands:Ljava/util/List;

    .line 448
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT name, stars, asset, moga_count, quest_ids, max_level, position_x, position_y, island_id, ambience_audio, sting_audio FROM islands"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 450
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 455
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 459
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->islands:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 451
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->buildIsland(Landroid/database/Cursor;)Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v1

    .line 452
    .local v1, "island":Lcom/gaiaonline/monstergalaxy/model/map/Island;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->islands:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 445
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "island":Lcom/gaiaonline/monstergalaxy/model/map/Island;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getAttackMove(I)Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, "move":Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT name, type, power, modifier_p, modifier_q, max_damage, level_multiplier, charge_animation, charge_effect, animation, hit_visual, attack_sound, hit_sound FROM moves WHERE move_id = ?"

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 139
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    new-instance v1, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;

    .end local v1    # "move":Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;
    invoke-direct {v1}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;-><init>()V

    .line 143
    .restart local v1    # "move":Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;
    invoke-virtual {v1, p1}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->setId(I)V

    .line 144
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->setName(Ljava/lang/String;)V

    .line 145
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->setType(Ljava/lang/String;)V

    .line 146
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->setPower(Ljava/lang/String;)V

    .line 147
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->setModifierP(F)V

    .line 148
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->setModifierQ(F)V

    .line 149
    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->setMaxDamage(F)V

    .line 150
    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->setLevelMultiplier(I)V

    .line 151
    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->setChargeAnimation(Ljava/lang/String;)V

    .line 152
    const/16 v2, 0x8

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->setChargeEffect(Ljava/lang/String;)V

    .line 153
    const/16 v2, 0x9

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->setAnimation(Ljava/lang/String;)V

    .line 154
    const/16 v2, 0xa

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->setHitVisual(Ljava/lang/String;)V

    .line 155
    const/16 v2, 0xb

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->setAttackSound(Ljava/lang/String;)V

    .line 156
    const/16 v2, 0xc

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->setHitSound(Ljava/lang/String;)V

    .line 159
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 161
    return-object v1
.end method

.method public getBattleAudio()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 168
    .local v2, "battleAudio":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .line 170
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "SELECT audio_type, audio_asset FROM battle_audio"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 172
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 187
    if-eqz v3, :cond_0

    .line 189
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 196
    :cond_0
    :goto_1
    return-object v2

    .line 173
    :cond_1
    const/4 v6, 0x0

    :try_start_2
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, "type":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "asset":Ljava/lang/String;
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 177
    .local v1, "audioList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_2

    .line 178
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "audioList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .restart local v1    # "audioList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 184
    .end local v0    # "asset":Ljava/lang/String;
    .end local v1    # "audioList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "type":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 185
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 186
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 187
    if-eqz v3, :cond_3

    .line 189
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 194
    :cond_3
    :goto_2
    throw v6

    .line 190
    :catch_1
    move-exception v4

    .line 191
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 190
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 191
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getConstantValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 589
    const/4 v1, 0x0

    .line 591
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT value FROM constants WHERE name = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 593
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 594
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 596
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 598
    return-object v1
.end method

.method public getEncounters(I)Ljava/util/List;
    .locals 10
    .param p1, "nodeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/map/Encounter;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 532
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .local v3, "encounters":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/map/Encounter;>;"
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT encounter_id, quest_id, category, capture, music_asset, music_type FROM encounters WHERE node_id = ?"

    new-array v6, v9, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 535
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 559
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 561
    return-object v3

    .line 537
    :cond_0
    new-instance v2, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;

    invoke-direct {v2}, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;-><init>()V

    .line 539
    .local v2, "encounter":Lcom/gaiaonline/monstergalaxy/model/map/Encounter;
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->setId(I)V

    .line 540
    invoke-virtual {v2, p1}, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->setNodeId(I)V

    .line 541
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->setQuestId(I)V

    .line 545
    const/4 v4, 0x2

    :try_start_0
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 544
    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;->valueOf(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->setCategory(Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :goto_1
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->setCapture(Ljava/lang/String;)V

    .line 551
    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->setMusicAsset(Ljava/lang/String;)V

    .line 552
    const/4 v4, 0x5

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->setMusicType(Ljava/lang/String;)V

    .line 553
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->getEncounterAppearances(I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->setAppearances(Ljava/util/List;)V

    .line 555
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 546
    :catch_0
    move-exception v1

    .line 547
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "MonsterGalaxy"

    const-string v5, "Encounter: Error parsing category."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getIsland(I)Lcom/gaiaonline/monstergalaxy/model/map/Island;
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 430
    const/4 v1, 0x0

    .line 431
    .local v1, "island":Lcom/gaiaonline/monstergalaxy/model/map/Island;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT name, stars, asset, moga_count, quest_ids, max_level, position_x, position_y, island_id, ambience_audio, sting_audio FROM islands WHERE island_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 433
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->buildIsland(Landroid/database/Cursor;)Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v1

    .line 437
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 439
    return-object v1
.end method

.method public getIslandNodes(Lcom/gaiaonline/monstergalaxy/model/map/Island;)Ljava/util/List;
    .locals 8
    .param p1, "island"    # Lcom/gaiaonline/monstergalaxy/model/map/Island;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gaiaonline/monstergalaxy/model/map/Island;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/map/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v2, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/map/Node;>;"
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT node_id, name, description, adjacent_nodes, energy_cost, thumbnail, background, drop_id, drop_probability, position_x, position_y FROM nodes WHERE island_id = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 500
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 507
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 509
    return-object v2

    .line 501
    :cond_0
    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->buildNode(Landroid/database/Cursor;)Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v1

    .line 502
    .local v1, "node":Lcom/gaiaonline/monstergalaxy/model/map/Node;
    invoke-virtual {v1, p1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->setIsland(Lcom/gaiaonline/monstergalaxy/model/map/Island;)V

    .line 504
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getLevelDiffMultipliers()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 307
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 308
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;"
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT level_diff, multiplier FROM level_diff_multipliers"

    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 310
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 314
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 316
    return-object v1

    .line 311
    :cond_0
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getMogaCaptureIsland(I)I
    .locals 7
    .param p1, "mogaId"    # I

    .prologue
    .line 745
    const/4 v1, -0x1

    .line 746
    .local v1, "islandId":I
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT n.island_id FROM encounter_appearances ea, encounters e, nodes n WHERE ea.moga_type_id = ? AND ea.encounter_id = e.encounter_id AND e.node_id = n.node_id AND e.capture = \'enabled\' ORDER BY island_id LIMIT 0,1"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 748
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 749
    const-string v2, "island_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 752
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 754
    return v1
.end method

.method public getMogaType(I)Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 239
    const/4 v1, 0x0

    .line 240
    .local v1, "mogaType":Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT monster_id, name, description, rarity, offense, defense, zodiac_sign, zodiac, max_health, portrait_asset, full_body_asset, physical_attack_id, zodiac_attack_id, island_id, sub_type, purchaseable FROM monsters WHERE monster_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 242
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->buildMogaType(Landroid/database/Cursor;)Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v1

    .line 246
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 248
    return-object v1
.end method

.method public getMogaTypeCount(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;)I
    .locals 7
    .param p1, "subType"    # Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

    .prologue
    const/4 v6, 0x0

    .line 293
    const/4 v1, 0x0

    .line 295
    .local v1, "numberOfMogaTypes":I
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT COUNT(1) FROM monsters WHERE sub_type = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 297
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 298
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 300
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 302
    return v1
.end method

.method public getMogaTypesBySubType(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;)Ljava/util/List;
    .locals 7
    .param p1, "subType"    # Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v1, "mogaTypes":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;>;"
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT monster_id, name, description, rarity, offense, defense, zodiac_sign, zodiac, max_health, portrait_asset, full_body_asset, physical_attack_id, zodiac_attack_id, island_id, sub_type, purchaseable FROM monsters WHERE sub_type = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 257
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 261
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 263
    return-object v1

    .line 258
    :cond_0
    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->buildMogaType(Landroid/database/Cursor;)Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getNode(I)Lcom/gaiaonline/monstergalaxy/model/map/Node;
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 321
    const/4 v1, 0x0

    .line 323
    .local v1, "node":Lcom/gaiaonline/monstergalaxy/model/map/Node;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT node_id, name, description, adjacent_nodes, energy_cost, thumbnail, background, drop_id, drop_probability, position_x, position_y, island_id FROM nodes WHERE node_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 325
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->buildNode(Landroid/database/Cursor;)Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v1

    .line 329
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 331
    return-object v1
.end method

.method public getNotifications()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 618
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 620
    .local v3, "notifications":Ljava/util/Set;, "Ljava/util/Set<Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;>;"
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT type, island_id, notification_id FROM notifications"

    new-array v6, v7, [Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 622
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 632
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 634
    return-object v3

    .line 624
    :cond_0
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->getByCode(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    move-result-object v4

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->newInstance(Lcom/gaiaonline/monstergalaxy/settings/NotificationType;I)Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;

    move-result-object v1

    .line 625
    .local v1, "notification":Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 627
    .local v2, "notificationId":I
    invoke-direct {p0, v2}, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->getTextsByNotificationId(I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->setTexts(Ljava/util/List;)V

    .line 628
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->setIslandId(I)V

    .line 629
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getProducts()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/shop/Product;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v9, "products":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/shop/Product;>;"
    const/4 v7, 0x0

    .line 205
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "SELECT type, quantity, description, title, price, id FROM shop_products ORDER BY type, price"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/String;

    invoke-virtual {v0, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 207
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 224
    if-eqz v7, :cond_0

    .line 226
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 233
    :cond_0
    :goto_1
    return-object v9

    .line 208
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 209
    .local v10, "typeString":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 210
    .local v6, "quantity":I
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, "description":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "title":Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 213
    .local v4, "price":F
    const/4 v0, 0x5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "id":Ljava/lang/String;
    invoke-static {v10}, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->getById(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    move-result-object v5

    .line 217
    .local v5, "type":Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/shop/Product;

    .line 218
    invoke-direct/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/model/shop/Product;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLcom/gaiaonline/monstergalaxy/model/shop/ProductType;I)V

    .line 217
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 221
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "description":Ljava/lang/String;
    .end local v4    # "price":F
    .end local v5    # "type":Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;
    .end local v6    # "quantity":I
    .end local v10    # "typeString":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 222
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 223
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 224
    if-eqz v7, :cond_2

    .line 226
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 231
    :cond_2
    :goto_2
    throw v0

    .line 227
    :catch_1
    move-exception v8

    .line 228
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 227
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v8

    .line 228
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getQuest(I)Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 337
    const/4 v1, 0x0

    .line 338
    .local v1, "quest":Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT quest_id, name, type, npc_name, npc_asset, receive_dialog, description_dialog, complete_dialog, beat_node_id, monster_id, monster_count, reward_item_id, reward_item_count, grant_node_id, grant_quest_id, restriction_node_ids, restriction_quest_id, island_id_to_win_stars, stars_to_win_in_island, locked_node_id, music FROM quests WHERE quest_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 340
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->buildQuest(Landroid/database/Cursor;)Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    move-result-object v1

    .line 344
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 346
    return-object v1
.end method

.method public getQuestByBeatNodeId(I)Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    .locals 7
    .param p1, "beatNodeId"    # I

    .prologue
    .line 366
    const/4 v1, 0x0

    .line 368
    .local v1, "quest":Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT quest_id, name, type, npc_name, npc_asset, receive_dialog, description_dialog, complete_dialog, beat_node_id, monster_id, monster_count, reward_item_id, reward_item_count, grant_node_id, grant_quest_id, restriction_node_ids, restriction_quest_id, island_id_to_win_stars, stars_to_win_in_island, locked_node_id, music FROM quests WHERE beat_node_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 370
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->buildQuest(Landroid/database/Cursor;)Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    move-result-object v1

    .line 374
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 376
    return-object v1
.end method

.method public getQuestByGrantNodeId(I)Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    .locals 7
    .param p1, "grantNodeId"    # I

    .prologue
    .line 382
    const/4 v1, 0x0

    .line 384
    .local v1, "quest":Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT quest_id, name, type, npc_name, npc_asset, receive_dialog, description_dialog, complete_dialog, beat_node_id, monster_id, monster_count, reward_item_id, reward_item_count, grant_node_id, grant_quest_id, restriction_node_ids, restriction_quest_id, island_id_to_win_stars, stars_to_win_in_island, locked_node_id, music FROM quests WHERE grant_node_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 386
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->buildQuest(Landroid/database/Cursor;)Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    move-result-object v1

    .line 390
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 392
    return-object v1
.end method

.method public getQuestByGrantQuestId(I)Ljava/util/List;
    .locals 7
    .param p1, "grantQuestId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/quest/Quest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v1, "quests":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/quest/Quest;>;"
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT quest_id, name, type, npc_name, npc_asset, receive_dialog, description_dialog, complete_dialog, beat_node_id, monster_id, monster_count, reward_item_id, reward_item_count, grant_node_id, grant_quest_id, restriction_node_ids, restriction_quest_id, island_id_to_win_stars, stars_to_win_in_island, locked_node_id, music FROM quests WHERE grant_quest_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 354
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 355
    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->buildQuest(Landroid/database/Cursor;)Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 360
    return-object v1
.end method

.method public getSlotMachine()Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;
    .locals 4

    .prologue
    .line 673
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->slotMachine:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;

    if-eqz v1, :cond_0

    .line 674
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->slotMachine:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;

    .line 691
    :goto_0
    return-object v1

    .line 677
    :cond_0
    new-instance v1, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;

    invoke-direct {v1}, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;-><init>()V

    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->slotMachine:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;

    .line 679
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT cooldown_seconds, cost FROM slot_machine"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 681
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 682
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->slotMachine:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;

    const-string v2, "cooldown_seconds"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->setCoolDownSeconds(I)V

    .line 683
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->slotMachine:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;

    const-string v2, "cost"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->setCost(F)V

    .line 684
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->slotMachine:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;

    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->getSlotMachineReels()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->setReels(Ljava/util/List;)V

    .line 687
    :cond_1
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->slotMachine:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->init()V

    .line 689
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 691
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->slotMachine:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;

    goto :goto_0
.end method

.method public getZodiacSignMultiplier(Ljava/lang/String;Ljava/lang/String;)F
    .locals 7
    .param p1, "playerSign"    # Ljava/lang/String;
    .param p2, "attackerSign"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 602
    const/4 v2, 0x0

    .line 604
    .local v2, "value":F
    const-string v1, "SELECT multiplier FROM zodiac_multiplier WHERE player_name = ? AND attacker_name = ?"

    .line 605
    .local v1, "query":Ljava/lang/String;
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 607
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 608
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    .line 611
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 613
    return v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 78
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 83
    return-void
.end method
