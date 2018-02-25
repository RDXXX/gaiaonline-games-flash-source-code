.class public Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;
.super Ljava/lang/Object;
.source "ScissorStack.java"


# static fields
.field private static scissors:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/math/Rectangle;",
            ">;"
        }
    .end annotation
.end field

.field static tmp:Lcom/badlogic/gdx/math/Vector3;

.field static final viewport:Lcom/badlogic/gdx/math/Rectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    .line 86
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 111
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->viewport:Lcom/badlogic/gdx/math/Rectangle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateScissors(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 5
    .param p0, "camera"    # Lcom/badlogic/gdx/graphics/Camera;
    .param p1, "batchTransform"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "area"    # Lcom/badlogic/gdx/math/Rectangle;
    .param p3, "scissor"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    const/4 v4, 0x0

    .line 98
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {v0, v1, v2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 99
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 100
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/Camera;->project(Lcom/badlogic/gdx/math/Vector3;)V

    .line 101
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iput v0, p3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 102
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput v0, p3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 104
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v3, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 105
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 106
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/Camera;->project(Lcom/badlogic/gdx/math/Vector3;)V

    .line 107
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v0, v1

    iput v0, p3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 108
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v0, v1

    iput v0, p3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 109
    return-void
.end method

.method private static fix(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 3
    .param p0, "rect"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    const/4 v2, 0x0

    .line 76
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 77
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    neg-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 78
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 80
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 81
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    neg-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 82
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 84
    :cond_1
    return-void
.end method

.method public static getViewport()Lcom/badlogic/gdx/math/Rectangle;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 115
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_0

    .line 116
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->viewport:Lcom/badlogic/gdx/math/Rectangle;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    .line 117
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->viewport:Lcom/badlogic/gdx/math/Rectangle;

    .line 121
    .local v0, "scissor":Lcom/badlogic/gdx/math/Rectangle;
    :goto_0
    return-object v1

    .line 119
    .end local v0    # "scissor":Lcom/badlogic/gdx/math/Rectangle;
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Rectangle;

    .line 120
    .restart local v0    # "scissor":Lcom/badlogic/gdx/math/Rectangle;
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->viewport:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Rectangle;->set(Lcom/badlogic/gdx/math/Rectangle;)V

    .line 121
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->viewport:Lcom/badlogic/gdx/math/Rectangle;

    goto :goto_0
.end method

.method public static popScissors()V
    .locals 6

    .prologue
    .line 66
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    .line 67
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_0

    .line 68
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v2, 0xc11

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glDisable(I)V

    .line 73
    .local v0, "scissor":Lcom/badlogic/gdx/math/Rectangle;
    :goto_0
    return-void

    .line 70
    .end local v0    # "scissor":Lcom/badlogic/gdx/math/Rectangle;
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Rectangle;

    .line 71
    .restart local v0    # "scissor":Lcom/badlogic/gdx/math/Rectangle;
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    iget v2, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v2, v2

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v3, v3

    iget v4, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v4, v4

    iget v5, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v5, v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/GLCommon;->glScissor(IIII)V

    goto :goto_0
.end method

.method public static pushScissors(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 10
    .param p0, "scissor"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    .line 42
    invoke-static {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->fix(Lcom/badlogic/gdx/math/Rectangle;)V

    .line 44
    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v5, :cond_0

    .line 45
    sget-object v5, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v6, 0xc11

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/graphics/GLCommon;->glEnable(I)V

    .line 59
    :goto_0
    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, p0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 60
    sget-object v5, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    iget v6, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v6, v6

    iget v7, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v7, v7

    iget v8, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v8, v8

    iget v9, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v9, v9

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/GLCommon;->glScissor(IIII)V

    .line 61
    return-void

    .line 48
    :cond_0
    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    sget-object v6, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    iget v6, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/math/Rectangle;

    .line 49
    .local v4, "parent":Lcom/badlogic/gdx/math/Rectangle;
    iget v5, v4, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v6, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 50
    .local v2, "minX":F
    iget v5, v4, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v6, v4, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v7, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 51
    .local v0, "maxX":F
    iput v2, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 52
    sub-float v5, v0, v2

    iput v5, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 54
    iget v5, v4, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v6, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 55
    .local v3, "minY":F
    iget v5, v4, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v6, v4, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v7, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 56
    .local v1, "maxY":F
    iput v3, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 57
    sub-float v5, v1, v3

    iput v5, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    goto :goto_0
.end method

.method public static toWindowCoordinates(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 4
    .param p0, "camera"    # Lcom/badlogic/gdx/graphics/Camera;
    .param p1, "transformMatrix"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "point"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 131
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 132
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 133
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/Camera;->project(Lcom/badlogic/gdx/math/Vector3;)V

    .line 134
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 135
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iput v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 136
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 137
    return-void
.end method
