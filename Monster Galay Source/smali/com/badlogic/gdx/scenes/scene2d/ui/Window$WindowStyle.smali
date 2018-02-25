.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowStyle"
.end annotation


# instance fields
.field public final background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public final titleFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field public final titleFontColor:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V
    .locals 2
    .param p1, "titleFont"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p2, "titleFontColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p3, "backgroundPatch"    # Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 161
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 162
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 163
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 164
    return-void
.end method
