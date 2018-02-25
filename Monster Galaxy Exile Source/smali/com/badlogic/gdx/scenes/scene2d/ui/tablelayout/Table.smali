.class public Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "Table.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/Layout;


# instance fields
.field private final layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x0

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;)V

    .line 45
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 48
    const/4 v0, 0x0

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;)V

    .line 49
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->width:F

    .line 50
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->height:F

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FF)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # F
    .param p3, "height"    # F

    .prologue
    .line 62
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;)V

    .line 63
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->width:F

    .line 64
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->height:F

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "layout"    # Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>(Ljava/lang/String;)V

    .line 69
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    .line 70
    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->setTable(Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public static drawDebug(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 2
    .param p0, "stage"    # Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActors()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getSpriteBatch()Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->drawDebug(Ljava/util/List;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 128
    return-void
.end method

.method private static drawDebug(Ljava/util/List;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            ")V"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "actors":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 132
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 133
    .local v0, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    instance-of v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->drawDebug(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 134
    :cond_0
    instance-of v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    .end local v0    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getActors()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->drawDebug(Ljava/util/List;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 131
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_2
    return-void
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->add(Ljava/lang/Object;)Lcom/esotericsoftware/tablelayout/Cell;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->clear()V

    .line 122
    return-void
.end method

.method public columnDefaults(I)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->columnDefaults(I)Lcom/esotericsoftware/tablelayout/Cell;

    move-result-object v0

    return-object v0
.end method

.method public defaults()Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->defaults()Lcom/esotericsoftware/tablelayout/Cell;

    move-result-object v0

    return-object v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 1
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->visible:Z

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->needsLayout:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->layout()V

    .line 96
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_0
.end method

.method public getPrefHeight()F
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->setLayoutSize(IIII)V

    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->layout()V

    .line 116
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getMinHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getPrefWidth()F
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->setLayoutSize(IIII)V

    .line 109
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->layout()V

    .line 110
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getMinWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getTableLayout()Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->invalidate()V

    .line 105
    return-void
.end method

.method public layout()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->layout()V

    .line 101
    return-void
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1
    .param p1, "tableDescription"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->parse(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public row()Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->row()Lcom/esotericsoftware/tablelayout/Cell;

    move-result-object v0

    return-object v0
.end method
