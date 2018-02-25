.class Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit$DebugRect;
.super Lcom/badlogic/gdx/math/Rectangle;
.source "LibgdxToolkit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DebugRect"
.end annotation


# instance fields
.field final type:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 158
    int-to-float v0, p2

    int-to-float v1, p3

    int-to-float v2, p4

    int-to-float v3, p5

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    .line 159
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit$DebugRect;->type:I

    .line 160
    return-void
.end method
