.class public Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;
.super Ljava/lang/Object;
.source "RewardItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;,
        Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xbee24347277e575L


# instance fields
.field private count:I

.field private type:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "count"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;->getValue(I)Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;->type:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

    .line 15
    iput p2, p0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;->count:I

    .line 16
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;->count:I

    return v0
.end method

.method public getType()Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;->type:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;->count:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;->type:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;->access$2(Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
