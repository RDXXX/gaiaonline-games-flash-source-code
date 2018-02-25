.class public Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ImageToggleButtonStyle;
.super Ljava/lang/Object;
.source "ImageToggleButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageToggleButtonStyle"
.end annotation


# instance fields
.field public final down:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public final up:Lcom/badlogic/gdx/graphics/g2d/NinePatch;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V
    .locals 0
    .param p1, "down"    # Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .param p2, "up"    # Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ImageToggleButtonStyle;->down:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 161
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ImageToggleButtonStyle;->up:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 162
    return-void
.end method
