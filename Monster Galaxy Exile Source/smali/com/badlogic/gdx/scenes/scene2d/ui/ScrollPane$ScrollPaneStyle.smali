.class public Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;
.super Ljava/lang/Object;
.source "ScrollPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollPaneStyle"
.end annotation


# instance fields
.field public final background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public final hScroll:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public final hScrollKnob:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public final vScroll:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public final vScrollKnob:Lcom/badlogic/gdx/graphics/g2d/NinePatch;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V
    .locals 0
    .param p1, "backgroundPatch"    # Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .param p2, "hScroll"    # Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .param p3, "hScrollKnob"    # Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .param p4, "vScroll"    # Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .param p5, "vScrollKnob"    # Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 244
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScroll:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 245
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScrollKnob:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 246
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScroll:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 247
    iput-object p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScrollKnob:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 248
    return-void
.end method
