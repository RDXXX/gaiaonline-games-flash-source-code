.class public Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;
.super Ljava/lang/Object;
.source "MogaChangesReport.java"


# instance fields
.field private level:I

.field private levelCompletion:I

.field private newLevel:I

.field private newLevelCompletion:I

.field private totalXP:I

.field private variableXP:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;->level:I

    return v0
.end method

.method public getLevelCompletion()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;->levelCompletion:I

    return v0
.end method

.method public getNewLevel()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;->newLevel:I

    return v0
.end method

.method public getNewLevelCompletion()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;->newLevelCompletion:I

    return v0
.end method

.method public getTotalXP()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;->totalXP:I

    return v0
.end method

.method public getVariableXP()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;->variableXP:I

    return v0
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;->level:I

    .line 34
    return-void
.end method

.method public setLevelCompletion(I)V
    .locals 0
    .param p1, "levelCompletion"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;->levelCompletion:I

    .line 42
    return-void
.end method

.method public setNewLevel(I)V
    .locals 0
    .param p1, "newLevel"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;->newLevel:I

    .line 50
    return-void
.end method

.method public setNewLevelCompletion(I)V
    .locals 0
    .param p1, "newLevelCompletion"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;->newLevelCompletion:I

    .line 58
    return-void
.end method

.method public setTotalXP(I)V
    .locals 0
    .param p1, "totalXP"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;->totalXP:I

    .line 26
    return-void
.end method

.method public setVariableXP(I)V
    .locals 0
    .param p1, "variableXP"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;->variableXP:I

    .line 18
    return-void
.end method
