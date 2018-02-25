.class public Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;
.super Ljava/lang/Object;
.source "ToggleButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleButtonStyle"
.end annotation


# instance fields
.field public final down:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public final font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field public final fontColor:Lcom/badlogic/gdx/graphics/Color;

.field public final up:Lcom/badlogic/gdx/graphics/g2d/NinePatch;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V
    .locals 0
    .param p1, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p2, "fontColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p3, "down"    # Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .param p4, "up"    # Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 155
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 156
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;->down:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 157
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;->up:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 158
    return-void
.end method
