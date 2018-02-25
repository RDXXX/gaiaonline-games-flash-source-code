.class public Lcom/gaiaonline/monstergalaxy/model/map/Encounter;
.super Ljava/lang/Object;
.source "Encounter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x784a00d5fbbf577fL


# instance fields
.field private appearances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;",
            ">;"
        }
    .end annotation
.end field

.field private capture:Ljava/lang/String;

.field private category:Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;

.field private id:I

.field private musicAsset:Ljava/lang/String;

.field private musicType:Ljava/lang/String;

.field private nodeId:I

.field private questId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;->NORMAL:Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->category:Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;

    .line 25
    return-void
.end method


# virtual methods
.method public getAppearances()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->appearances:Ljava/util/List;

    return-object v0
.end method

.method public getCategory()Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->category:Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->id:I

    return v0
.end method

.method public getMogas()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/moga/Moga;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v1, "mogas":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/moga/Moga;>;"
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->category:Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;

    sget-object v6, Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;->NORMAL:Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;

    if-ne v5, v6, :cond_3

    .line 97
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-virtual {v5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    .line 98
    .local v2, "randomValue":D
    const/4 v4, 0x0

    .line 100
    .local v4, "sum":F
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->appearances:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 118
    .end local v2    # "randomValue":D
    .end local v4    # "sum":F
    :cond_1
    :goto_0
    return-object v1

    .line 100
    .restart local v2    # "randomValue":D
    .restart local v4    # "sum":F
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;

    .line 101
    .local v0, "appearance":Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;->getProbability()F

    move-result v6

    add-float/2addr v4, v6

    .line 103
    float-to-double v6, v4

    cmpg-double v6, v2, v6

    if-gtz v6, :cond_0

    .line 104
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->newMogaFromAppearance(Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;)Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    .end local v0    # "appearance":Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;
    .end local v2    # "randomValue":D
    .end local v4    # "sum":F
    :cond_3
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->appearances:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;

    .line 113
    .restart local v0    # "appearance":Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->newMogaFromAppearance(Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;)Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getMusicAsset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->musicAsset:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->musicType:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeId()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->nodeId:I

    return v0
.end method

.method public getQuestId()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->questId:I

    return v0
.end method

.method public isCaptureEnabled()Z
    .locals 2

    .prologue
    .line 64
    const-string v0, "enabled"

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->capture:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAppearances(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "appearances":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;>;"
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->appearances:Ljava/util/List;

    .line 85
    return-void
.end method

.method public setCapture(Ljava/lang/String;)V
    .locals 0
    .param p1, "capture"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->capture:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setCategory(Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;)V
    .locals 0
    .param p1, "category"    # Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->category:Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;

    .line 57
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->id:I

    .line 33
    return-void
.end method

.method public setMusicAsset(Ljava/lang/String;)V
    .locals 0
    .param p1, "musicAsset"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->musicAsset:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setMusicType(Ljava/lang/String;)V
    .locals 0
    .param p1, "musicType"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->musicType:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setNodeId(I)V
    .locals 0
    .param p1, "nodeId"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->nodeId:I

    .line 41
    return-void
.end method

.method public setQuestId(I)V
    .locals 0
    .param p1, "questId"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->questId:I

    .line 49
    return-void
.end method
