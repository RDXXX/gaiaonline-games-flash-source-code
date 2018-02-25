.class public abstract Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "Widget.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/Layout;


# instance fields
.field protected invalidated:Z

.field public prefHeight:F

.field public prefWidth:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FF)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefWidth"    # F
    .param p3, "prefHeight"    # F

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidated:Z

    .line 49
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->prefWidth:F

    .line 50
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->prefHeight:F

    .line 51
    return-void
.end method


# virtual methods
.method public getPrefHeight()F
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->prefHeight:F

    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->prefWidth:F

    return v0
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 80
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->height:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .end local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidated:Z

    .line 66
    return-void
.end method

.method public invalidateHierarchy()V
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidate()V

    .line 71
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 72
    .local v0, "parent":Lcom/badlogic/gdx/scenes/scene2d/Group;
    :goto_0
    if-eqz v0, :cond_1

    .line 73
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->invalidate()V

    .line 74
    :cond_0
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    goto :goto_0

    .line 76
    :cond_1
    return-void
.end method

.method public setPrefSize(II)V
    .locals 1
    .param p1, "prefWidth"    # I
    .param p2, "prefHeight"    # I

    .prologue
    .line 87
    int-to-float v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->width:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->prefWidth:F

    .line 88
    int-to-float v0, p2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->height:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->prefHeight:F

    .line 89
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidateHierarchy()V

    .line 90
    return-void
.end method
