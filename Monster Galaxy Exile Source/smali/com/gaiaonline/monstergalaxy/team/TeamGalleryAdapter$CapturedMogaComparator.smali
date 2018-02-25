.class Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter$CapturedMogaComparator;
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
    name = "CapturedMogaComparator"
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
    .line 87
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter$CapturedMogaComparator;->this$0:Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter;Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter$CapturedMogaComparator;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter$CapturedMogaComparator;-><init>(Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)I
    .locals 3
    .param p1, "moga1"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .param p2, "moga2"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, "compare":I
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->isSleeping()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->isSleeping()Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    const/4 v0, -0x1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->isSleeping()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->isSleeping()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    const/4 v0, 0x1

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->isDead()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    const/4 v0, -0x1

    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->isDead()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 104
    const/4 v0, 0x1

    goto :goto_0

    .line 106
    :cond_4
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLevel()I

    move-result v1

    invoke-virtual {p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLevel()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 107
    const/4 v0, -0x1

    goto :goto_0

    .line 109
    :cond_5
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLevel()I

    move-result v1

    invoke-virtual {p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLevel()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 110
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    check-cast p2, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {p0, p1, p2}, Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter$CapturedMogaComparator;->compare(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)I

    move-result v0

    return v0
.end method
