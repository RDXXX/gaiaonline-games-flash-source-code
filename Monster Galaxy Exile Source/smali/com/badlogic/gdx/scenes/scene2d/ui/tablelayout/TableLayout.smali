.class public Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;
.super Lcom/esotericsoftware/tablelayout/BaseTableLayout;
.source "TableLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/tablelayout/BaseTableLayout",
        "<",
        "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;",
        ">;"
    }
.end annotation


# instance fields
.field public atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

.field debugRects:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit$DebugRect;",
            ">;"
        }
    .end annotation
.end field

.field private debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

.field needsLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->instance:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;

    invoke-direct {p0, v0}, Lcom/esotericsoftware/tablelayout/BaseTableLayout;-><init>(Lcom/esotericsoftware/tablelayout/Toolkit;)V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->needsLayout:Z

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;)V
    .locals 1
    .param p1, "toolkit"    # Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/esotericsoftware/tablelayout/BaseTableLayout;-><init>(Lcom/esotericsoftware/tablelayout/Toolkit;)V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->needsLayout:Z

    .line 64
    return-void
.end method


# virtual methods
.method public drawDebug(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 23
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getDebug()I

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRects:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    .line 130
    sget-object v18, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface/range {v18 .. v18}, Lcom/badlogic/gdx/Graphics;->isGL20Available()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 131
    new-instance v18, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;

    const/16 v19, 0x40

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    invoke-direct/range {v18 .. v22}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;-><init>(IZZI)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    .line 136
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getTable()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;

    .line 137
    .local v10, "table":Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    iget-object v7, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 138
    .local v7, "parent":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    const/4 v12, 0x0

    .local v12, "x":F
    const/4 v15, 0x0

    .line 139
    .local v15, "y":F
    :goto_2
    if-eqz v7, :cond_5

    .line 140
    instance-of v0, v7, Lcom/badlogic/gdx/scenes/scene2d/Group;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 141
    iget v0, v7, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    move/from16 v18, v0

    add-float v12, v12, v18

    .line 142
    iget v0, v7, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    move/from16 v18, v0

    add-float v15, v15, v18

    .line 144
    :cond_3
    iget-object v7, v7, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    goto :goto_2

    .line 133
    .end local v7    # "parent":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v10    # "table":Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .end local v12    # "x":F
    .end local v15    # "y":F
    :cond_4
    new-instance v18, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;

    const/16 v19, 0x40

    invoke-direct/range {v18 .. v19}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    goto :goto_1

    .line 146
    .restart local v7    # "parent":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .restart local v10    # "table":Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .restart local v12    # "x":F
    .restart local v15    # "y":F
    :cond_5
    iget v0, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->y:F

    move/from16 v18, v0

    iget v0, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->height:F

    move/from16 v19, v0

    add-float v18, v18, v19

    sub-float v15, v18, v15

    .line 148
    sget-object v18, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface/range {v18 .. v18}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v11

    .line 150
    .local v11, "viewHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v19

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->begin(Lcom/badlogic/gdx/math/Matrix4;I)V

    .line 151
    const/4 v5, 0x0

    .local v5, "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRects:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v6, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v6, "n":I
    :goto_3
    if-ge v5, v6, :cond_a

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRects:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit$DebugRect;

    .line 153
    .local v9, "rect":Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit$DebugRect;
    iget v0, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit$DebugRect;->x:F

    move/from16 v18, v0

    add-float v13, v12, v18

    .line 154
    .local v13, "x1":F
    iget v0, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit$DebugRect;->y:F

    move/from16 v18, v0

    sub-float v18, v15, v18

    iget v0, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit$DebugRect;->height:F

    move/from16 v19, v0

    sub-float v16, v18, v19

    .line 155
    .local v16, "y1":F
    iget v0, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit$DebugRect;->width:F

    move/from16 v18, v0

    add-float v14, v13, v18

    .line 156
    .local v14, "x2":F
    iget v0, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit$DebugRect;->height:F

    move/from16 v18, v0

    add-float v17, v16, v18

    .line 157
    .local v17, "y2":F
    iget v0, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit$DebugRect;->type:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x4

    if-eqz v18, :cond_7

    const/high16 v8, 0x3f800000    # 1.0f

    .line 158
    .local v8, "r":F
    :goto_4
    iget v0, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit$DebugRect;->type:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x8

    if-eqz v18, :cond_8

    const/high16 v4, 0x3f800000    # 1.0f

    .line 159
    .local v4, "g":F
    :goto_5
    iget v0, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit$DebugRect;->type:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x2

    if-eqz v18, :cond_9

    const/high16 v3, 0x3f800000    # 1.0f

    .line 161
    .local v3, "b":F
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v8, v4, v3, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-interface {v0, v13, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v8, v4, v3, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-interface {v0, v13, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v8, v4, v3, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-interface {v0, v13, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v8, v4, v3, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-interface {v0, v14, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v8, v4, v3, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-interface {v0, v14, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v8, v4, v3, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-interface {v0, v14, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v8, v4, v3, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-interface {v0, v14, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v8, v4, v3, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-interface {v0, v13, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->getNumVertices()I

    move-result v18

    const/16 v19, 0x40

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->end()V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v19

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->begin(Lcom/badlogic/gdx/math/Matrix4;I)V

    .line 151
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 157
    .end local v3    # "b":F
    .end local v4    # "g":F
    .end local v8    # "r":F
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 158
    .restart local v8    # "r":F
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 159
    .restart local v4    # "g":F
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 186
    .end local v4    # "g":F
    .end local v8    # "r":F
    .end local v9    # "rect":Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit$DebugRect;
    .end local v13    # "x1":F
    .end local v14    # "x2":F
    .end local v16    # "y1":F
    .end local v17    # "y2":F
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->end()V

    goto/16 :goto_0
.end method

.method public getWidget(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->getWidget(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 83
    .local v0, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getTable()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->findActor(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 84
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getWidget(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getWidget(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->needsLayout:Z

    .line 116
    return-void
.end method

.method public invalidateHierarchy()V
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->invalidate()V

    .line 120
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getTable()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 121
    .local v0, "parent":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :goto_0
    if-eqz v0, :cond_1

    .line 122
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->invalidate()V

    .line 123
    :cond_0
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    goto :goto_0

    .line 125
    :cond_1
    return-void
.end method

.method public layout()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 88
    iget-boolean v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->needsLayout:Z

    if-nez v8, :cond_1

    .line 112
    :cond_0
    return-void

    .line 89
    :cond_1
    iput-boolean v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->needsLayout:Z

    .line 91
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getTable()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;

    .line 92
    .local v6, "table":Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    iget v8, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->width:F

    float-to-int v8, v8

    iget v9, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->height:F

    float-to-int v9, v9

    invoke-virtual {p0, v10, v10, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->setLayoutSize(IIII)V

    .line 94
    invoke-super {p0}, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->layout()V

    .line 96
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getCells()Ljava/util/List;

    move-result-object v2

    .line 97
    .local v2, "cells":Ljava/util/List;, "Ljava/util/List<Lcom/esotericsoftware/tablelayout/Cell;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "n":I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 98
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/esotericsoftware/tablelayout/Cell;

    .line 99
    .local v1, "c":Lcom/esotericsoftware/tablelayout/Cell;
    invoke-virtual {v1}, Lcom/esotericsoftware/tablelayout/Cell;->getIgnore()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 97
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {v1}, Lcom/esotericsoftware/tablelayout/Cell;->getWidget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 101
    .local v0, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {v1}, Lcom/esotericsoftware/tablelayout/Cell;->getWidgetX()I

    move-result v8

    int-to-float v8, v8

    iput v8, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 102
    invoke-virtual {v1}, Lcom/esotericsoftware/tablelayout/Cell;->getWidgetHeight()I

    move-result v7

    .line 103
    .local v7, "widgetHeight":I
    iget v8, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->height:F

    invoke-virtual {v1}, Lcom/esotericsoftware/tablelayout/Cell;->getWidgetY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    int-to-float v9, v7

    sub-float/2addr v8, v9

    iput v8, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 104
    invoke-virtual {v1}, Lcom/esotericsoftware/tablelayout/Cell;->getWidgetWidth()I

    move-result v8

    int-to-float v8, v8

    iput v8, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    .line 105
    int-to-float v8, v7

    iput v8, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    .line 106
    instance-of v8, v0, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    if-eqz v8, :cond_2

    move-object v4, v0

    .line 107
    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    .line 108
    .local v4, "layout":Lcom/badlogic/gdx/scenes/scene2d/Layout;
    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->invalidate()V

    .line 109
    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->layout()V

    goto :goto_1
.end method

.method public parse(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 1
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->parse(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public register(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 3
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 72
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Actor must have a name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->register(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public registerImage(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->register(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    return-object v0
.end method
