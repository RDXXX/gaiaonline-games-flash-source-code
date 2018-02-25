.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Pane$PaneStyle;
.super Ljava/lang/Object;
.source "Pane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaneStyle"
.end annotation


# instance fields
.field public final background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V
    .locals 0
    .param p1, "backgroundPatch"    # Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane$PaneStyle;->background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 122
    return-void
.end method
