.class public Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;
.super Ljava/lang/Object;
.source "ComboBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComboBoxStyle"
.end annotation


# instance fields
.field public final background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public final font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field public final fontColor:Lcom/badlogic/gdx/graphics/Color;

.field public final listBackground:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public final listSelection:Lcom/badlogic/gdx/graphics/g2d/NinePatch;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V
    .locals 2
    .param p1, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p2, "fontColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p3, "background"    # Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .param p4, "listBackground"    # Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .param p5, "listSelection"    # Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 180
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;->background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 181
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;->listBackground:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 182
    iput-object p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;->listSelection:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 183
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 184
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 185
    return-void
.end method
