.class public Lcom/badlogic/gdx/physics/box2d/JointEdge;
.super Ljava/lang/Object;
.source "JointEdge.java"


# instance fields
.field public final joint:Lcom/badlogic/gdx/physics/box2d/Joint;

.field public final other:Lcom/badlogic/gdx/physics/box2d/Body;


# direct methods
.method protected constructor <init>(Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/physics/box2d/Joint;)V
    .locals 0
    .param p1, "other"    # Lcom/badlogic/gdx/physics/box2d/Body;
    .param p2, "joint"    # Lcom/badlogic/gdx/physics/box2d/Joint;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/JointEdge;->other:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 28
    iput-object p2, p0, Lcom/badlogic/gdx/physics/box2d/JointEdge;->joint:Lcom/badlogic/gdx/physics/box2d/Joint;

    .line 29
    return-void
.end method
