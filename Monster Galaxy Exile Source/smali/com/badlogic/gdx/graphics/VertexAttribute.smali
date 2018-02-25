.class public final Lcom/badlogic/gdx/graphics/VertexAttribute;
.super Ljava/lang/Object;
.source "VertexAttribute.java"


# instance fields
.field public alias:Ljava/lang/String;

.field public final numComponents:I

.field public offset:I

.field public final usage:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "usage"    # I
    .param p2, "numComponents"    # I
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    .line 46
    iput p2, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    .line 47
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    .line 48
    return-void
.end method
