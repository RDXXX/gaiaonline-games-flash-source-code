.class public Lcom/gaiaonline/monstergalaxy/model/trainer/Friend;
.super Ljava/lang/Object;
.source "Friend.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7b48f11671583c57L


# instance fields
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

.field private name:Ljava/lang/String;

.field private rank:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 33
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Friend;->mogas:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Friend;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Friend;->rank:I

    return v0
.end method

.method public setMogas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/moga/Moga;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "mogas":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/moga/Moga;>;"
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Friend;->mogas:Ljava/util/List;

    .line 38
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Friend;->name:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setRank(I)V
    .locals 0
    .param p1, "rank"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Friend;->rank:I

    .line 30
    return-void
.end method
