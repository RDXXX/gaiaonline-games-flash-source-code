.class public Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;
.super Ljava/lang/Object;
.source "MusicSequence.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;


# instance fields
.field private index:I

.field private loop:Z

.field private musicQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;",
            ">;"
        }
    .end annotation
.end field

.field private sequencePlaying:Z

.field private volume:F


# direct methods
.method public constructor <init>(ZF)V
    .locals 1
    .param p1, "loop"    # Z
    .param p2, "volume"    # F

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->musicQueue:Ljava/util/List;

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->index:I

    .line 16
    iput-boolean p1, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->loop:Z

    .line 17
    iput p2, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->volume:F

    .line 18
    return-void
.end method


# virtual methods
.method public addMusic(Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 3
    .param p1, "asset"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "loop"    # Z

    .prologue
    .line 21
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->musicQueue:Ljava/util/List;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->volume:F

    invoke-direct {v1, p1, p2, v2}, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;-><init>(Lcom/badlogic/gdx/files/FileHandle;ZF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method public addMusic(Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;)V
    .locals 1
    .param p1, "music"    # Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->musicQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 75
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->musicQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    return-void

    .line 75
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;

    .line 76
    .local v0, "music":Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;
    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;->destroy()V

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->sequencePlaying:Z

    return v0
.end method

.method public play()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->musicQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->index:I

    if-le v0, v1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->musicQueue:Ljava/util/List;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;->play()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->sequencePlaying:Z

    .line 34
    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 3
    .param p1, "volume"    # F

    .prologue
    .line 51
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->volume:F

    .line 52
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->musicQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    return-void

    .line 52
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;

    .line 53
    .local v0, "music":Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;
    invoke-interface {v0, p1}, Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;->setVolume(F)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->musicQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->index:I

    if-le v0, v1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->musicQueue:Ljava/util/List;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;->stop()V

    .line 41
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->sequencePlaying:Z

    .line 42
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->sequencePlaying:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->musicQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->index:I

    if-le v0, v1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->musicQueue:Ljava/util/List;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->index:I

    .line 62
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->musicQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->index:I

    if-le v0, v1, :cond_1

    .line 63
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->musicQueue:Ljava/util/List;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;->play()V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->loop:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->musicQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 65
    iput v2, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->index:I

    .line 66
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->musicQueue:Ljava/util/List;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;->play()V

    goto :goto_0

    .line 68
    :cond_2
    iput-boolean v2, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->sequencePlaying:Z

    goto :goto_0
.end method
