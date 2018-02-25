.class public Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter;
.super Lcom/gaiaonline/monstergalaxy/screen/GalleryAdapter;
.source "TeamGalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter$CapturedMogaComparator;,
        Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter$MogaTypeComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gaiaonline/monstergalaxy/screen/GalleryAdapter",
        "<",
        "Lcom/gaiaonline/monstergalaxy/team/Portrait;",
        ">;"
    }
.end annotation


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

.field private screen:Lcom/gaiaonline/monstergalaxy/team/TeamScreen;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/team/TeamScreen;)V
    .locals 11
    .param p1, "screen"    # Lcom/gaiaonline/monstergalaxy/team/TeamScreen;

    .prologue
    const/4 v10, 0x0

    .line 20
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/GalleryAdapter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter;->screen:Lcom/gaiaonline/monstergalaxy/team/TeamScreen;

    .line 22
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter;->mogas:Ljava/util/List;

    .line 26
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v8

    invoke-virtual {v8}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v6

    .line 27
    .local v6, "teamMogas":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/moga/Moga;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v0, "capturedMogas":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/moga/Moga;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v5, "notCapturedMogas":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/moga/Moga;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v3, "mogaIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter$CapturedMogaComparator;

    invoke-direct {v1, p0, v10}, Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter$CapturedMogaComparator;-><init>(Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter;Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter$CapturedMogaComparator;)V

    .line 34
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/gaiaonline/monstergalaxy/model/moga/Moga;>;"
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter;->mogas:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter;->mogas:Ljava/util/List;

    invoke-static {v8, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 39
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getMogas()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 47
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 48
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter;->mogas:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter;->mogas:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 56
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v8

    sget-object v9, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;->NORMAL:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

    invoke-interface {v8, v9}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getMogaTypesBySubType(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;)Ljava/util/List;

    move-result-object v4

    .line 58
    .local v4, "mogaTypes":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 67
    new-instance v8, Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter$MogaTypeComparator;

    invoke-direct {v8, p0, v10}, Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter$MogaTypeComparator;-><init>(Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter;Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter$MogaTypeComparator;)V

    invoke-static {v5, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 69
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter;->mogas:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 70
    return-void

    .line 39
    .end local v4    # "mogaTypes":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;>;"
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 41
    .local v2, "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    iget-object v9, p0, Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter;->mogas:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 42
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    .end local v2    # "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 52
    .restart local v2    # "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 58
    .end local v2    # "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .restart local v4    # "mogaTypes":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;>;"
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    .line 60
    .local v7, "type":Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;
    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 61
    invoke-static {v7}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->newMogaFromType(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;)Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v2

    .line 62
    .restart local v2    # "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method public bridge synthetic configureItem(Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;I)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/gaiaonline/monstergalaxy/team/Portrait;

    invoke-virtual {p0, p1, p2}, Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter;->configureItem(Lcom/gaiaonline/monstergalaxy/team/Portrait;I)V

    return-void
.end method

.method public configureItem(Lcom/gaiaonline/monstergalaxy/team/Portrait;I)V
    .locals 1
    .param p1, "portrait"    # Lcom/gaiaonline/monstergalaxy/team/Portrait;
    .param p2, "index"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter;->mogas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {p1, v0}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->setMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 80
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter;->mogas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public bridge synthetic newItem()Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter;->newItem()Lcom/gaiaonline/monstergalaxy/team/Portrait;

    move-result-object v0

    return-object v0
.end method

.method public newItem()Lcom/gaiaonline/monstergalaxy/team/Portrait;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter;->screen:Lcom/gaiaonline/monstergalaxy/team/TeamScreen;

    invoke-direct {v0, v1}, Lcom/gaiaonline/monstergalaxy/team/Portrait;-><init>(Lcom/gaiaonline/monstergalaxy/team/TeamScreen;)V

    return-object v0
.end method
