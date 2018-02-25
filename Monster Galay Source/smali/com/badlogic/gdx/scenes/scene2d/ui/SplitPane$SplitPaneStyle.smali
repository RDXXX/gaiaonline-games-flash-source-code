.class public Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;
.super Ljava/lang/Object;
.source "SplitPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitPaneStyle"
.end annotation


# instance fields
.field public final handle:Lcom/badlogic/gdx/graphics/g2d/NinePatch;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V
    .locals 0
    .param p1, "handle"    # Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;->handle:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 318
    return-void
.end method
