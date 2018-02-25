.class public Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;
.super Ljava/lang/Object;
.source "MD5Renderer.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field private final indices:[[S

.field private mBBox:Lcom/badlogic/gdx/math/collision/BoundingBox;

.field private final mesh:Lcom/badlogic/gdx/graphics/Mesh;

.field private final model:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;

.field private useJni:Z

.field private useNormals:Z

.field private final vertices:[[F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;ZZ)V
    .locals 12
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;
    .param p2, "useNormals"    # Z
    .param p3, "useJni"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v4, Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-direct {v4}, Lcom/badlogic/gdx/math/collision/BoundingBox;-><init>()V

    iput-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->mBBox:Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 65
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v5, "JNI with normals is currently unsupported."

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 66
    :cond_0
    const/4 v2, 0x0

    .line 67
    .local v2, "maxVertices":I
    const/4 v1, 0x0

    .line 68
    .local v1, "maxIndices":I
    if-eqz p2, :cond_3

    const/16 v3, 0x8

    .line 70
    .local v3, "stride":I
    :goto_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->model:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;

    .line 71
    iput-boolean p3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->useJni:Z

    .line 72
    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->useNormals:Z

    .line 73
    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    array-length v4, v4

    new-array v4, v4, [[S

    iput-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->indices:[[S

    .line 74
    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    array-length v4, v4

    new-array v4, v4, [[F

    iput-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->vertices:[[F

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 77
    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numVertices:I

    if-ge v2, v4, :cond_1

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    aget-object v4, v4, v0

    iget v2, v4, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numVertices:I

    .line 78
    :cond_1
    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numTriangles:I

    mul-int/lit8 v4, v4, 0x3

    if-ge v1, v4, :cond_2

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numTriangles:I

    mul-int/lit8 v1, v4, 0x3

    .line 80
    :cond_2
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->indices:[[S

    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->getIndices()[S

    move-result-object v5

    aput-object v5, v4, v0

    .line 81
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->vertices:[[F

    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    aget-object v5, v5, v0

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->createVertexArray(I)[F

    move-result-object v5

    aput-object v5, v4, v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    .end local v0    # "i":I
    .end local v3    # "stride":I
    :cond_3
    const/4 v3, 0x5

    goto :goto_0

    .line 84
    .restart local v0    # "i":I
    .restart local v3    # "stride":I
    :cond_4
    if-eqz p2, :cond_5

    .line 85
    new-instance v4, Lcom/badlogic/gdx/graphics/Mesh;

    new-array v5, v9, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v6, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v7, "a_position"

    invoke-direct {v6, v8, v9, v7}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v6, v5, v8

    new-instance v6, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v7, "a_texCoord0"

    invoke-direct {v6, v9, v10, v7}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v6, v5, v11

    new-instance v6, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v7, "a_normal"

    invoke-direct {v6, v10, v9, v7}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v6, v5, v10

    invoke-direct {v4, v8, v2, v1, v5}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 94
    :goto_2
    return-void

    .line 90
    :cond_5
    new-instance v4, Lcom/badlogic/gdx/graphics/Mesh;

    new-array v5, v10, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v6, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v7, "a_position"

    invoke-direct {v6, v8, v9, v7}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v6, v5, v8

    new-instance v6, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v7, "a_texCoord0"

    invoke-direct {v6, v9, v10, v7}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v6, v5, v11

    invoke-direct {v4, v8, v2, v1, v5}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    goto :goto_2
.end method


# virtual methods
.method public calculateNormals(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;)V
    .locals 3
    .param p1, "bindPoseSkeleton"    # Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    .prologue
    .line 119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->model:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->model:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    aget-object v1, v2, v0

    .line 121
    .local v1, "mesh":Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->vertices:[[F

    aget-object v2, v2, v0

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->calculateNormalsBind(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[F)V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "mesh":Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    .line 150
    return-void
.end method

.method public getBBox()Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->mBBox:Lcom/badlogic/gdx/math/collision/BoundingBox;

    return-object v0
.end method

.method public getIndices(I)[S
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->indices:[[S

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getMesh()Lcom/badlogic/gdx/graphics/Mesh;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    return-object v0
.end method

.method public getVertices(I)[F
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->vertices:[[F

    aget-object v0, v0, p1

    return-object v0
.end method

.method public isJniUsed()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->useJni:Z

    return v0
.end method

.method public render()V
    .locals 5

    .prologue
    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->model:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->indices:[[S

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)V

    .line 128
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->vertices:[[F

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([F)V

    .line 129
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v2, 0x4

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->indices:[[S

    aget-object v4, v4, v0

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Mesh;->render(III)V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method public render([Lcom/badlogic/gdx/graphics/g3d/Material;)V
    .locals 5
    .param p1, "materials"    # [Lcom/badlogic/gdx/graphics/g3d/Material;

    .prologue
    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->model:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 135
    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    .line 136
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/Material;->Texture:Lcom/badlogic/gdx/graphics/TextureRef;

    if-eqz v1, :cond_0

    .line 137
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/Material;->Texture:Lcom/badlogic/gdx/graphics/TextureRef;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/TextureRef;->bind()V

    .line 139
    :cond_0
    aget-object v1, p1, v0

    const/16 v2, 0x404

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(I)V

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->indices:[[S

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)V

    .line 143
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->vertices:[[F

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([F)V

    .line 144
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v2, 0x4

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->indices:[[S

    aget-object v4, v4, v0

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Mesh;->render(III)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_2
    return-void
.end method

.method public setSkeleton(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;)V
    .locals 4
    .param p1, "skeleton"    # Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    .prologue
    .line 97
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->mBBox:Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/collision/BoundingBox;->clr()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->model:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 99
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->model:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    aget-object v1, v2, v0

    .line 101
    .local v1, "mesh":Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->useJni:Z

    if-eqz v2, :cond_0

    .line 102
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->vertices:[[F

    aget-object v2, v2, v0

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->calculateVerticesJni(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[F)V

    .line 98
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->useNormals:Z

    if-eqz v2, :cond_1

    .line 105
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->vertices:[[F

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->mBBox:Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {v1, p1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->calculateVerticesN(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[FLcom/badlogic/gdx/math/collision/BoundingBox;)V

    goto :goto_1

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->vertices:[[F

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->mBBox:Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {v1, p1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->calculateVertices(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[FLcom/badlogic/gdx/math/collision/BoundingBox;)V

    goto :goto_1

    .line 112
    .end local v1    # "mesh":Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;
    :cond_2
    return-void
.end method

.method public setUseJni(Z)V
    .locals 0
    .param p1, "useJni"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->useJni:Z

    .line 116
    return-void
.end method
