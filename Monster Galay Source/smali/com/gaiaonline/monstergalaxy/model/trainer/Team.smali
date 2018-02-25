.class public Lcom/gaiaonline/monstergalaxy/model/trainer/Team;
.super Ljava/lang/Object;
.source "Team.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final MAX_TEAM_CAPACITY:B = 0x3t

.field private static final serialVersionUID:J = 0x54de00903a0a6d0fL


# instance fields
.field private deployedMoga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

.field private mogas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/moga/Moga;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->mogas:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method public addMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V
    .locals 1
    .param p1, "moga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->mogas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->mogas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_0
    return-void
.end method

.method public getDeployedMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->deployedMoga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    return-object v0
.end method

.method public getFirstMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->mogas:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->mogas:Ljava/util/List;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getMaxLevel(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public getMogas()Ljava/util/List;
    .locals 1
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
    .line 23
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->mogas:Ljava/util/List;

    return-object v0
.end method

.method public getNextMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .locals 4

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, "nextMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->mogas:Ljava/util/List;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->deployedMoga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 67
    .local v0, "deployedMogaIndex":I
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->mogas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->mogas:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "nextMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    check-cast v1, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 71
    .restart local v1    # "nextMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    :cond_0
    return-object v1
.end method

.method public hasHealtyMogas()Z
    .locals 4

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 46
    .local v1, "totalHealth":I
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->mogas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 50
    if-lez v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 46
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 47
    .local v0, "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getHitPoints()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 50
    .end local v0    # "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public hasMoreMogasToDeploy()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->mogas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDeployedMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V
    .locals 1
    .param p1, "newMoga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->deployedMoga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 34
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->deployedMoga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadMogaTypeSounds(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;)V

    .line 35
    return-void
.end method
