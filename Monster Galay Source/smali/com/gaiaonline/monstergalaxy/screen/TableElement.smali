.class public abstract Lcom/gaiaonline/monstergalaxy/screen/TableElement;
.super Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;
.source "TableElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;"
    }
.end annotation


# instance fields
.field private actualRowHeight:F

.field private rowHeight:F

.field private rowWidth:F

.field private rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/screen/TableElement",
            "<TT;>.TableRow;>;"
        }
    .end annotation
.end field

.field private rowsToShow:I

.field private scrollYOffset:F

.field private scrollable:Z


# direct methods
.method public constructor <init>(FFFLcom/badlogic/gdx/graphics/Color;Ljava/util/List;)V
    .locals 4
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "rowHeight"    # F
    .param p4, "bgColor"    # Lcom/badlogic/gdx/graphics/Color;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF",
            "Lcom/badlogic/gdx/graphics/Color;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/gaiaonline/monstergalaxy/screen/TableElement;, "Lcom/gaiaonline/monstergalaxy/screen/TableElement<TT;>;"
    .local p5, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->rows:Ljava/util/List;

    .line 29
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->rowWidth:F

    .line 30
    iput p3, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->rowHeight:F

    .line 31
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    div-float v2, p2, p3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->rowsToShow:I

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->setSize(FF)V

    .line 33
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    div-float v2, p2, p3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->scrollable:Z

    .line 35
    if-eqz p4, :cond_0

    .line 36
    invoke-virtual {p0, p4}, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->addBackground(Lcom/badlogic/gdx/graphics/Color;)V

    .line 39
    :cond_0
    invoke-direct {p0, p5}, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->addItems(Ljava/util/List;)V

    .line 41
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->rows:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->actualRowHeight:F

    .line 43
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->scrollable:Z

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->actualRowHeight:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->scrollYOffset:F

    .line 47
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 33
    goto :goto_0
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/screen/TableElement;)F
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->rowWidth:F

    return v0
.end method

.method static synthetic access$1(Lcom/gaiaonline/monstergalaxy/screen/TableElement;)F
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->rowHeight:F

    return v0
.end method

.method private addItems(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/gaiaonline/monstergalaxy/screen/TableElement;, "Lcom/gaiaonline/monstergalaxy/screen/TableElement<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .line 52
    .local v1, "j":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 58
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->rows:Ljava/util/List;

    new-instance v3, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;

    invoke-direct {v3, p0}, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;-><init>(Lcom/gaiaonline/monstergalaxy/screen/TableElement;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    return-void

    .line 52
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    .line 53
    .local v0, "aItem":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->rows:Ljava/util/List;

    new-instance v4, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;

    invoke-direct {v4, p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;-><init>(Lcom/gaiaonline/monstergalaxy/screen/TableElement;Ljava/lang/Object;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected dispose()V
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lcom/gaiaonline/monstergalaxy/screen/TableElement;, "Lcom/gaiaonline/monstergalaxy/screen/TableElement<TT;>;"
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->rows:Ljava/util/List;

    .line 112
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->dispose()V

    .line 113
    return-void
.end method

.method public abstract makeEmptyListRow(Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gaiaonline/monstergalaxy/screen/TableElement",
            "<TT;>.TableRow;)V"
        }
    .end annotation
.end method

.method public abstract makeRow(Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gaiaonline/monstergalaxy/screen/TableElement",
            "<TT;>.TableRow;TT;I)V"
        }
    .end annotation
.end method

.method protected present(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 10
    .param p1, "origin"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "batcher"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    .local p0, "this":Lcom/gaiaonline/monstergalaxy/screen/TableElement;, "Lcom/gaiaonline/monstergalaxy/screen/TableElement<TT;>;"
    const/4 v9, 0x0

    .line 82
    iget v4, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->scrollYOffset:F

    neg-float v4, v4

    iget v5, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->actualRowHeight:F

    div-float/2addr v4, v5

    float-to-int v0, v4

    .line 85
    .local v0, "firstRow":I
    iget v4, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->scrollYOffset:F

    int-to-float v5, v0

    iget v6, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->actualRowHeight:F

    mul-float/2addr v5, v6

    add-float v1, v4, v5

    .line 89
    .local v1, "firstRowOffset":F
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 90
    .local v2, "i":I
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 104
    invoke-super {p0, p1, p2}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->present(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 105
    return-void

    .line 90
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;

    .line 91
    .local v3, "row":Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;, "Lcom/gaiaonline/monstergalaxy/screen/TableElement<TT;>.TableRow;"
    if-lt v2, v0, :cond_1

    iget v4, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->rowsToShow:I

    add-int/2addr v4, v0

    if-le v2, v4, :cond_2

    .line 92
    :cond_1
    invoke-virtual {v3, v9}, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;->setVisible(Z)V

    .line 101
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 95
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;->setVisible(Z)V

    .line 96
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->elements:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/math/Vector2;

    const/4 v6, 0x0

    iput v6, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 97
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->elements:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v7, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->rowsToShow:I

    add-int/2addr v7, v0

    sub-int/2addr v7, v2

    int-to-float v7, v7

    .line 98
    iget-object v8, v3, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    add-float/2addr v6, v1

    .line 97
    iput v6, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 99
    iput-boolean v9, v3, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;->needsRecalc:Z

    goto :goto_1
.end method

.method public setScrollOffset(F)V
    .locals 4
    .param p1, "scrollDeltaY"    # F

    .prologue
    .line 65
    .local p0, "this":Lcom/gaiaonline/monstergalaxy/screen/TableElement;, "Lcom/gaiaonline/monstergalaxy/screen/TableElement<TT;>;"
    iget-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->scrollable:Z

    if-nez v1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 69
    :cond_0
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->scrollYOffset:F

    sub-float v0, v1, p1

    .line 72
    .local v0, "offset":F
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->actualRowHeight:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 76
    iput v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TableElement;->scrollYOffset:F

    goto :goto_0
.end method
