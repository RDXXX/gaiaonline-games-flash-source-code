.class public Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;
.super Ljava/lang/Object;
.source "TextField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextFieldStyle"
.end annotation


# instance fields
.field public final background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public final cursor:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public final font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field public final fontColor:Lcom/badlogic/gdx/graphics/Color;

.field public final selection:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V
    .locals 0
    .param p1, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p2, "fontColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p3, "cursor"    # Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .param p4, "selection"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p5, "background"    # Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .prologue
    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    iput-object p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 440
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->cursor:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 441
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 442
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 443
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->selection:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 444
    return-void
.end method
