.class Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter$MogaTypeComparator;
.super Ljava/lang/Object;
.source "TeamGalleryAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MogaTypeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/gaiaonline/monstergalaxy/model/moga/Moga;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter;


# direct methods
.method private constructor <init>(Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter$MogaTypeComparator;->this$0:Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter;Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter$MogaTypeComparator;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter$MogaTypeComparator;-><init>(Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)I
    .locals 7
    .param p1, "moga1"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .param p2, "moga2"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    .line 123
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getRarity()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    move-result-object v3

    .line 124
    .local v3, "rarity1":Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;
    invoke-virtual {p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getRarity()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    move-result-object v4

    .line 126
    .local v4, "rarity2":Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getName()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "name1":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getName()Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "name2":Ljava/lang/String;
    const/4 v0, 0x0

    .line 131
    .local v0, "compare":I
    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->getOrder()I

    move-result v5

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->getOrder()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 132
    const/4 v0, -0x1

    .line 140
    :goto_0
    return v0

    .line 134
    :cond_0
    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->getOrder()I

    move-result v5

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->getOrder()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 135
    const/4 v0, 0x1

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    check-cast p2, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {p0, p1, p2}, Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter$MogaTypeComparator;->compare(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)I

    move-result v0

    return v0
.end method
