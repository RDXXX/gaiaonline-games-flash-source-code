.class public abstract Lcom/badlogic/gdx/scenes/scene2d/TemporalAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "TemporalAction.java"


# instance fields
.field protected action:Lcom/badlogic/gdx/scenes/scene2d/Action;

.field protected target:Lcom/badlogic/gdx/scenes/scene2d/Actor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/TemporalAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    return-object v0
.end method
