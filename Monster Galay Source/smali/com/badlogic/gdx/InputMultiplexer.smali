.class public Lcom/badlogic/gdx/InputMultiplexer;
.super Ljava/lang/Object;
.source "InputMultiplexer.java"

# interfaces
.implements Lcom/badlogic/gdx/InputProcessor;


# instance fields
.field private processors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/InputProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/InputProcessor;)V
    .locals 3
    .param p1, "processors"    # [Lcom/badlogic/gdx/InputProcessor;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Ljava/util/ArrayList;

    .line 31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public addProcessor(Lcom/badlogic/gdx/InputProcessor;)V
    .locals 1
    .param p1, "processor"    # Lcom/badlogic/gdx/InputProcessor;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public keyDown(I)Z
    .locals 3
    .param p1, "keycode"    # I

    .prologue
    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 45
    iget-object v2, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/InputProcessor;

    invoke-interface {v2, p1}, Lcom/badlogic/gdx/InputProcessor;->keyDown(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 46
    :goto_1
    return v2

    .line 44
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public keyTyped(C)Z
    .locals 3
    .param p1, "character"    # C

    .prologue
    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 57
    iget-object v2, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/InputProcessor;

    invoke-interface {v2, p1}, Lcom/badlogic/gdx/InputProcessor;->keyTyped(C)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 58
    :goto_1
    return v2

    .line 56
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public keyUp(I)Z
    .locals 3
    .param p1, "keycode"    # I

    .prologue
    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 51
    iget-object v2, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/InputProcessor;

    invoke-interface {v2, p1}, Lcom/badlogic/gdx/InputProcessor;->keyUp(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 52
    :goto_1
    return v2

    .line 50
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public removeProcessor(Lcom/badlogic/gdx/InputProcessor;)V
    .locals 1
    .param p1, "processor"    # Lcom/badlogic/gdx/InputProcessor;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public scrolled(I)Z
    .locals 3
    .param p1, "amount"    # I

    .prologue
    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 89
    iget-object v2, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/InputProcessor;

    invoke-interface {v2, p1}, Lcom/badlogic/gdx/InputProcessor;->scrolled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 90
    :goto_1
    return v2

    .line 88
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public touchDown(IIII)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    .prologue
    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 63
    iget-object v2, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/InputProcessor;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/badlogic/gdx/InputProcessor;->touchDown(IIII)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 64
    :goto_1
    return v2

    .line 62
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public touchDragged(III)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "pointer"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 75
    iget-object v2, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/InputProcessor;

    invoke-interface {v2, p1, p2, p3}, Lcom/badlogic/gdx/InputProcessor;->touchDragged(III)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 76
    :goto_1
    return v2

    .line 74
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public touchMoved(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 82
    iget-object v2, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/InputProcessor;

    invoke-interface {v2, p1, p2}, Lcom/badlogic/gdx/InputProcessor;->touchMoved(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 83
    :goto_1
    return v2

    .line 81
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public touchUp(IIII)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    .prologue
    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 69
    iget-object v2, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/InputProcessor;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/badlogic/gdx/InputProcessor;->touchUp(IIII)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 70
    :goto_1
    return v2

    .line 68
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
