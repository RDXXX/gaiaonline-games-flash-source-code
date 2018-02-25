.class public Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;
.super Lcom/badlogic/gdx/graphics/g3d/Animation;
.source "MD5Animation.java"


# static fields
.field static jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

.field static jointBOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;


# instance fields
.field public bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

.field public frameRate:I

.field public frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

.field public name:Ljava/lang/String;

.field public secondsPerFrame:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    .line 80
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointBOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/Animation;-><init>()V

    return-void
.end method

.method public static interpolate(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;F)V
    .locals 11
    .param p0, "skeletonA"    # Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;
    .param p1, "skeletonB"    # Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;
    .param p2, "skeletonOut"    # Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;
    .param p3, "t"    # F

    .prologue
    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    iget v8, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->numJoints:I

    if-ge v0, v8, :cond_0

    .line 84
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v1, 0x1

    aget v2, v8, v9

    .line 85
    .local v2, "jointAPosX":F
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v1, 0x2

    aget v3, v8, v9

    .line 86
    .local v3, "jointAPosY":F
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v1, 0x3

    aget v4, v8, v9

    .line 88
    .local v4, "jointAPosZ":F
    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v10, v1, 0x4

    aget v9, v9, v10

    iput v9, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 89
    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v10, v1, 0x5

    aget v9, v9, v10

    iput v9, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 90
    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v10, v1, 0x6

    aget v9, v9, v10

    iput v9, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 91
    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v10, v1, 0x7

    aget v9, v9, v10

    iput v9, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 93
    iget-object v8, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v1, 0x1

    aget v5, v8, v9

    .line 94
    .local v5, "jointBPosX":F
    iget-object v8, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v1, 0x2

    aget v6, v8, v9

    .line 95
    .local v6, "jointBPosY":F
    iget-object v8, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v1, 0x3

    aget v7, v8, v9

    .line 97
    .local v7, "jointBPosZ":F
    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointBOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v9, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v10, v1, 0x4

    aget v9, v9, v10

    iput v9, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 98
    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointBOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v9, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v10, v1, 0x5

    aget v9, v9, v10

    iput v9, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 99
    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointBOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v9, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v10, v1, 0x6

    aget v9, v9, v10

    iput v9, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 100
    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointBOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v9, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v10, v1, 0x7

    aget v9, v9, v10

    iput v9, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 102
    iget-object v8, p2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    aget v9, v9, v1

    aput v9, v8, v1

    .line 104
    iget-object v8, p2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v1, 0x1

    sub-float v10, v5, v2

    mul-float/2addr v10, p3

    add-float/2addr v10, v2

    aput v10, v8, v9

    .line 105
    iget-object v8, p2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v1, 0x2

    sub-float v10, v6, v3

    mul-float/2addr v10, p3

    add-float/2addr v10, v3

    aput v10, v8, v9

    .line 106
    iget-object v8, p2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v1, 0x3

    sub-float v10, v7, v4

    mul-float/2addr v10, p3

    add-float/2addr v10, v4

    aput v10, v8, v9

    .line 108
    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    sget-object v9, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointBOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-virtual {v8, v9, p3}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->slerp(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;F)V

    .line 110
    iget-object v8, p2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v1, 0x4

    sget-object v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    aput v10, v8, v9

    .line 111
    iget-object v8, p2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v1, 0x5

    sget-object v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    aput v10, v8, v9

    .line 112
    iget-object v8, p2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v1, 0x6

    sget-object v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    aput v10, v8, v9

    .line 113
    iget-object v8, p2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v1, 0x7

    sget-object v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    aput v10, v8, v9

    .line 83
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x8

    goto/16 :goto_0

    .line 115
    .end local v2    # "jointAPosX":F
    .end local v3    # "jointAPosY":F
    .end local v4    # "jointAPosZ":F
    .end local v5    # "jointBPosX":F
    .end local v6    # "jointBPosY":F
    .end local v7    # "jointBPosZ":F
    :cond_0
    return-void
.end method


# virtual methods
.method public getLength()F
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->secondsPerFrame:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getNumFrames()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    array-length v0, v0

    return v0
.end method

.method public read(Ljava/io/DataInputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->name:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frameRate:I

    .line 59
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->secondsPerFrame:F

    .line 60
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 61
    .local v2, "numFrames":I
    new-array v3, v2, [Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 63
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    new-instance v4, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    invoke-direct {v4}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;-><init>()V

    aput-object v4, v3, v0

    .line 64
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->read(Ljava/io/DataInputStream;)V

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 67
    .local v1, "numBounds":I
    new-array v3, v1, [Lcom/badlogic/gdx/math/collision/BoundingBox;

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 68
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 69
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    new-instance v4, Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-direct {v4}, Lcom/badlogic/gdx/math/collision/BoundingBox;-><init>()V

    aput-object v4, v3, v0

    .line 70
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v4

    iput v4, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 71
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v4

    iput v4, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 72
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v4

    iput v4, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 73
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v4

    iput v4, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 74
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v4

    iput v4, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 75
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v4

    iput v4, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 77
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
    .line 38
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 39
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frameRate:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 40
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->secondsPerFrame:F

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 41
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->write(Ljava/io/DataOutputStream;)V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 46
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 47
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 48
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 49
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 50
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 51
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 52
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 54
    :cond_1
    return-void
.end method
