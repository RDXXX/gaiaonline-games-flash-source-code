.class public Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;
.super Ljava/lang/Object;
.source "EncounterAppearance.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6b7284aaa57a8d1fL


# instance fields
.field private level:I

.field private mogaTypeId:I

.field private n:I

.field private probability:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;->level:I

    return v0
.end method

.method public getMogaTypeId()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;->mogaTypeId:I

    return v0
.end method

.method public getN()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;->n:I

    return v0
.end method

.method public getProbability()F
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;->probability:F

    return v0
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;->level:I

    .line 28
    return-void
.end method

.method public setMogaTypeId(I)V
    .locals 0
    .param p1, "mogaTypeId"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;->mogaTypeId:I

    .line 20
    return-void
.end method

.method public setN(I)V
    .locals 0
    .param p1, "n"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;->n:I

    .line 44
    return-void
.end method

.method public setProbability(F)V
    .locals 0
    .param p1, "probability"    # F

    .prologue
    .line 35
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;->probability:F

    .line 36
    return-void
.end method
