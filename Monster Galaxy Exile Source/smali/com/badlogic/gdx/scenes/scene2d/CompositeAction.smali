.class public abstract Lcom/badlogic/gdx/scenes/scene2d/CompositeAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "CompositeAction.java"


# instance fields
.field protected final actions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Action;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/CompositeAction;->actions:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getActions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/CompositeAction;->actions:Ljava/util/ArrayList;

    return-object v0
.end method
