.class public Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;
.super Ljava/lang/Object;
.source "CheckBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckBoxStyle"
.end annotation


# instance fields
.field public final checked:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public final font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field public final fontColor:Lcom/badlogic/gdx/graphics/Color;

.field public final unchecked:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0
    .param p1, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p2, "fontColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p3, "checked"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p4, "unchecked"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 187
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 188
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checked:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 189
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->unchecked:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 190
    return-void
.end method
