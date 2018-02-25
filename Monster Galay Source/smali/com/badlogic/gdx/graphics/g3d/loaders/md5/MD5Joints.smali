.class public Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;
.super Ljava/lang/Object;
.source "MD5Joints.java"


# static fields
.field private static final stride:I = 0x8


# instance fields
.field public joints:[F

.field public names:[Ljava/lang/String;

.field public numJoints:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/io/DataInputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 32
    .local v1, "numNames":I
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->names:[Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 34
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->names:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->numJoints:I

    .line 37
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->numJoints:I

    mul-int/lit8 v2, v2, 0x8

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    .line 38
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->numJoints:I

    mul-int/lit8 v2, v2, 0x8

    if-ge v0, v2, :cond_1

    .line 39
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    aput v3, v2, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 41
    :cond_1
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->names:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->names:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->names:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->numJoints:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 49
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->numJoints:I

    mul-int/lit8 v1, v1, 0x8

    if-ge v0, v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    :cond_1
    return-void
.end method
