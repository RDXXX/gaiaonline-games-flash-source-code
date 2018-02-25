.class public final Lcom/badlogic/gdx/graphics/VertexAttributes;
.super Ljava/lang/Object;
.source "VertexAttributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/VertexAttributes$Usage;
    }
.end annotation


# instance fields
.field private final attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

.field public final vertexSize:I


# direct methods
.method public varargs constructor <init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .locals 4
    .param p1, "attributes"    # [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    array-length v2, p1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "attributes must be >= 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_0
    array-length v2, p1

    new-array v1, v2, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 47
    .local v1, "list":[Lcom/badlogic/gdx/graphics/VertexAttribute;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 48
    aget-object v2, p1, v0

    aput-object v2, v1, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_1
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 52
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->checkValidity()V

    .line 53
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->calculateOffsets()I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    .line 54
    return-void
.end method

.method private calculateOffsets()I
    .locals 5

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 59
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v0, v3, v2

    .line 60
    .local v0, "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iput v1, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    .line 61
    iget v3, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 62
    add-int/lit8 v1, v1, 0x4

    .line 58
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_0
    iget v3, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v1, v3

    goto :goto_1

    .line 67
    .end local v0    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :cond_1
    return v1
.end method

.method private checkValidity()V
    .locals 7

    .prologue
    .line 71
    const/4 v4, 0x0

    .line 72
    .local v4, "pos":Z
    const/4 v1, 0x0

    .line 73
    .local v1, "cols":Z
    const/4 v3, 0x0

    .line 75
    .local v3, "nors":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v5, v5

    if-ge v2, v5, :cond_7

    .line 76
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v0, v5, v2

    .line 77
    .local v0, "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v5, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    if-nez v5, :cond_1

    .line 78
    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "two position attributes were specified"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 79
    :cond_0
    const/4 v4, 0x1

    .line 82
    :cond_1
    iget v5, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 83
    if-eqz v3, :cond_2

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "two normal attributes were specified"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 86
    :cond_2
    iget v5, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    iget v5, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_6

    .line 87
    :cond_3
    iget v5, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_4

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "color attribute must have 4 components"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 89
    :cond_4
    if-eqz v1, :cond_5

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "two color attributes were specified"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 90
    :cond_5
    const/4 v1, 0x1

    .line 75
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :cond_7
    if-nez v4, :cond_8

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "no position attribute was specified"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 95
    :cond_8
    return-void
.end method


# virtual methods
.method public get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
