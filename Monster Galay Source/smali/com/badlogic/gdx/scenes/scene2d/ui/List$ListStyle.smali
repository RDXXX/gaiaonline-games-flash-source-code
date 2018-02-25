.class public Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;
.super Ljava/lang/Object;
.source "List.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListStyle"
.end annotation


# instance fields
.field public final font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field public final fontColorSelected:Lcom/badlogic/gdx/graphics/Color;

.field public final fontColorUnselected:Lcom/badlogic/gdx/graphics/Color;

.field public final selectedPatch:Lcom/badlogic/gdx/graphics/g2d/NinePatch;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V
    .locals 2
    .param p1, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p2, "fontColorSelected"    # Lcom/badlogic/gdx/graphics/Color;
    .param p3, "fontColorUnselected"    # Lcom/badlogic/gdx/graphics/Color;
    .param p4, "selectedPatch"    # Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorSelected:Lcom/badlogic/gdx/graphics/Color;

    .line 169
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorUnselected:Lcom/badlogic/gdx/graphics/Color;

    .line 173
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 174
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorSelected:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorUnselected:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorUnselected:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 176
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->selectedPatch:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 177
    return-void
.end method
