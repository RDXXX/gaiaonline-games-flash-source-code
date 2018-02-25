.class public Lcom/badlogic/gdx/math/Matrix4;
.super Ljava/lang/Object;
.source "Matrix4.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final M00:I = 0x0

.field public static final M01:I = 0x4

.field public static final M02:I = 0x8

.field public static final M03:I = 0xc

.field public static final M10:I = 0x1

.field public static final M11:I = 0x5

.field public static final M12:I = 0x9

.field public static final M13:I = 0xd

.field public static final M20:I = 0x2

.field public static final M21:I = 0x6

.field public static final M22:I = 0xa

.field public static final M23:I = 0xe

.field public static final M30:I = 0x3

.field public static final M31:I = 0x7

.field public static final M32:I = 0xb

.field public static final M33:I = 0xf

.field static l_vex:Lcom/badlogic/gdx/math/Vector3; = null

.field static l_vey:Lcom/badlogic/gdx/math/Vector3; = null

.field static l_vez:Lcom/badlogic/gdx/math/Vector3; = null

.field static quat:Lcom/badlogic/gdx/math/Quaternion; = null

.field static right:Lcom/badlogic/gdx/math/Vector3; = null

.field private static final serialVersionUID:J = -0x25b70d0e1a139be1L

.field static tmpForward:Lcom/badlogic/gdx/math/Vector3;

.field static final tmpMat:Lcom/badlogic/gdx/math/Matrix4;

.field static tmpUp:Lcom/badlogic/gdx/math/Vector3;

.field static final tmpV:Lcom/badlogic/gdx/math/Vector3;

.field static final tmpVec:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field public final tmp:[F

.field public final val:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 534
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    .line 560
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    .line 599
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    .line 600
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    .line 601
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    .line 628
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    .line 629
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    .line 645
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->right:Lcom/badlogic/gdx/math/Vector3;

    .line 646
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    .line 647
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v1, 0x10

    const/high16 v2, 0x3f800000    # 1.0f

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    .line 45
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aput v2, v0, v1

    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xf

    aput v2, v0, v1

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 2
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    const/16 v1, 0x10

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    .line 45
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 59
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Quaternion;)V
    .locals 2
    .param p1, "quaternion"    # Lcom/badlogic/gdx/math/Quaternion;

    .prologue
    const/16 v1, 0x10

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    .line 45
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 71
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    .line 72
    return-void
.end method

.method public constructor <init>([F)V
    .locals 2
    .param p1, "values"    # [F

    .prologue
    const/16 v1, 0x10

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    .line 45
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 65
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set([F)Lcom/badlogic/gdx/math/Matrix4;

    .line 66
    return-void
.end method

.method public static native det([F)F
.end method

.method public static native inv([F)Z
.end method

.method public static native mul([F[F)V
.end method

.method public static native mulVec([F[F)V
.end method

.method public static native mulVec([F[FIII)V
.end method

.method public static native prj([F[F)V
.end method

.method public static native prj([F[FIII)V
.end method

.method public static native rot([F[F)V
.end method

.method public static native rot([F[FIII)V
.end method


# virtual methods
.method public cpy()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/math/Matrix4;-><init>(Lcom/badlogic/gdx/math/Matrix4;)V

    return-object v0
.end method

.method public det()F
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 355
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v0, v0, v7

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x9

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xc

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v8

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v8

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v8

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v8

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v8

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v8

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getRotation(Lcom/badlogic/gdx/math/Quaternion;)V
    .locals 0
    .param p1, "rotation"    # Lcom/badlogic/gdx/math/Quaternion;

    .prologue
    .line 708
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/math/Quaternion;->setFromMatrix(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Quaternion;

    .line 709
    return-void
.end method

.method public getTranslation(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 2
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 702
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 703
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 704
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 705
    return-void
.end method

.method public getValues()[F
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    return-object v0
.end method

.method public idt()Lcom/badlogic/gdx/math/Matrix4;
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 268
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 269
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 270
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x8

    aput v2, v0, v1

    .line 271
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aput v2, v0, v1

    .line 272
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 273
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aput v3, v0, v1

    .line 274
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x9

    aput v2, v0, v1

    .line 275
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aput v2, v0, v1

    .line 276
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 277
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 278
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aput v3, v0, v1

    .line 279
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aput v2, v0, v1

    .line 280
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 281
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 282
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xb

    aput v2, v0, v1

    .line 283
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 284
    return-object p0
.end method

.method public inv()Lcom/badlogic/gdx/math/Matrix4;
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 291
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v11

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x9

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xc

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v10

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v11

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v9

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v10

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v9

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v11

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v10

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v11

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v12

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v10

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v12

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v11

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v9

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v11

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v12

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v9

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v12

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v10

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v9

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v10

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v12

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v9

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v12

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 300
    .local v1, "l_det":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "non-invertible matrix"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 301
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    div-float v0, v2, v1

    .line 302
    .local v0, "inv_det":F
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x9

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xa

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xb

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xe

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xb

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xf

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xa

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xf

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v2, v8

    .line 304
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xc

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xe

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xb

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v12

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xe

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xb

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xf

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v12

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xa

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xf

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v2, v12

    .line 306
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xd

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x9

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x7

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xb

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xb

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xf

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x9

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xf

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 308
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v3, 0xc

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x9

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x6

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xa

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xa

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xe

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x9

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xe

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 310
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xd

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v11

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xe

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v11

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v10

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xb

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xe

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xb

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v10

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xf

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xa

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xf

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v2, v9

    .line 312
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xe

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v11

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xa

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v11

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v10

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xb

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xe

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xb

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v10

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xf

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xa

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xf

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 314
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x9

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v11

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v11

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xb

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xb

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xf

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x9

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xf

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 316
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v3, 0xd

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xd

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v10

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x9

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v10

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xa

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xa

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xe

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x9

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xe

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 318
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v11

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v11

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v10

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xe

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v10

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xf

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xf

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v2, v10

    .line 320
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v11

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xe

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v11

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v10

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x7

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xe

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x7

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v10

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xf

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x6

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xf

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 322
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v12

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xd

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v11

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v11

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x7

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x7

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xf

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xf

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 324
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v3, 0xe

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v10

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v10

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x6

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x6

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xe

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xe

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 326
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x9

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v11

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xa

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v11

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v10

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xa

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v10

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xb

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xb

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v2, v11

    .line 328
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v12

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xa

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v11

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x6

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v11

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v10

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x7

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xa

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x7

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v10

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xb

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x6

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xb

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 330
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v3, 0xb

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v11

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x9

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v11

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x7

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x9

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x7

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xb

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xb

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 332
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v3, 0xf

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v12

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x9

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v10

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v10

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x6

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x9

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x6

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xa

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xa

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 334
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    aget v3, v3, v8

    mul-float/2addr v3, v0

    aput v3, v2, v8

    .line 335
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    aget v3, v3, v12

    mul-float/2addr v3, v0

    aput v3, v2, v12

    .line 336
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    mul-float/2addr v4, v0

    aput v4, v2, v3

    .line 337
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    mul-float/2addr v4, v0

    aput v4, v2, v3

    .line 338
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    aget v3, v3, v9

    mul-float/2addr v3, v0

    aput v3, v2, v9

    .line 339
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    mul-float/2addr v4, v0

    aput v4, v2, v3

    .line 340
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    mul-float/2addr v4, v0

    aput v4, v2, v3

    .line 341
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    mul-float/2addr v4, v0

    aput v4, v2, v3

    .line 342
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    aget v3, v3, v10

    mul-float/2addr v3, v0

    aput v3, v2, v10

    .line 343
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v4, v0

    aput v4, v2, v3

    .line 344
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v4, v0

    aput v4, v2, v3

    .line 345
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v4, v0

    aput v4, v2, v3

    .line 346
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    aget v3, v3, v11

    mul-float/2addr v3, v0

    aput v3, v2, v11

    .line 347
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v4, v0

    aput v4, v2, v3

    .line 348
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v4, v0

    aput v4, v2, v3

    .line 349
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v4, v0

    aput v4, v2, v3

    .line 350
    return-object p0
.end method

.method public lerp(Lcom/badlogic/gdx/math/Matrix4;F)V
    .locals 4
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "alpha"    # F

    .prologue
    .line 669
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 670
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p2

    mul-float/2addr v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v0

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 669
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 671
    :cond_0
    return-void
.end method

.method public mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 11
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 206
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v6

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v6

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v10

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v9

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v6

    .line 208
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v6

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v10

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v10

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x7

    aget v3, v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v10

    .line 210
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v6

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v10

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xc

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 212
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v6

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xc

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v10

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xc

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 214
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v7

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v6

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v9

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v7

    .line 216
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v7

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v10

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x9

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xd

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 218
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v7

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x9

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xd

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 220
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v7

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xc

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x9

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xd

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 222
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v8

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v6

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    aget v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v9

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v8

    .line 224
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v8

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v10

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xa

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xe

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 226
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v8

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xa

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xe

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 228
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v8

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xc

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xa

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xe

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 230
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v9

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v6

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v9

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v9

    .line 232
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v9

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v10

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x7

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xb

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xf

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 234
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v9

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x7

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xb

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xf

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 236
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v9

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xc

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x7

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xb

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xf

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 238
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set([F)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public scl(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 4
    .param p1, "scale"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 696
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 697
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 698
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 699
    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 7
    .param p1, "mat"    # Lcom/badlogic/gdx/math/Matrix3;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 676
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 677
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 678
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v1, v1, v5

    aput v1, v0, v5

    .line 679
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aput v4, v0, v6

    .line 680
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v2, v2, v6

    aput v2, v0, v1

    .line 681
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v3, 0x4

    aget v2, v2, v3

    aput v2, v0, v1

    .line 682
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    aput v2, v0, v1

    .line 683
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x7

    aput v4, v0, v1

    .line 684
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x8

    aput v4, v0, v1

    .line 685
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x9

    aput v4, v0, v1

    .line 686
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 687
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xb

    aput v4, v0, v1

    .line 688
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    aput v2, v0, v1

    .line 689
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    aput v2, v0, v1

    .line 690
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aput v4, v0, v1

    .line 691
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xf

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    aput v2, v0, v1

    .line 692
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 79
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set([F)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 14
    .param p1, "quaternion"    # Lcom/badlogic/gdx/math/Quaternion;

    .prologue
    .line 112
    iget v9, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v10, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float v1, v9, v10

    .line 113
    .local v1, "l_xx":F
    iget v9, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v10, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float v2, v9, v10

    .line 114
    .local v2, "l_xy":F
    iget v9, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v10, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float v3, v9, v10

    .line 115
    .local v3, "l_xz":F
    iget v9, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v10, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float v0, v9, v10

    .line 116
    .local v0, "l_xw":F
    iget v9, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v10, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float v5, v9, v10

    .line 117
    .local v5, "l_yy":F
    iget v9, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v10, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float v6, v9, v10

    .line 118
    .local v6, "l_yz":F
    iget v9, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v10, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float v4, v9, v10

    .line 119
    .local v4, "l_yw":F
    iget v9, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v10, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float v8, v9, v10

    .line 120
    .local v8, "l_zz":F
    iget v9, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v10, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float v7, v9, v10

    .line 122
    .local v7, "l_zw":F
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x40000000    # 2.0f

    add-float v13, v5, v8

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    aput v11, v9, v10

    .line 123
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v10, 0x4

    const/high16 v11, 0x40000000    # 2.0f

    sub-float v12, v2, v7

    mul-float/2addr v11, v12

    aput v11, v9, v10

    .line 124
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v10, 0x8

    const/high16 v11, 0x40000000    # 2.0f

    add-float v12, v3, v4

    mul-float/2addr v11, v12

    aput v11, v9, v10

    .line 125
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v10, 0xc

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 126
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v10, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    add-float v12, v2, v7

    mul-float/2addr v11, v12

    aput v11, v9, v10

    .line 127
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v10, 0x5

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x40000000    # 2.0f

    add-float v13, v1, v8

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    aput v11, v9, v10

    .line 128
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v10, 0x9

    const/high16 v11, 0x40000000    # 2.0f

    sub-float v12, v6, v0

    mul-float/2addr v11, v12

    aput v11, v9, v10

    .line 129
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v10, 0xd

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 130
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v10, 0x2

    const/high16 v11, 0x40000000    # 2.0f

    sub-float v12, v3, v4

    mul-float/2addr v11, v12

    aput v11, v9, v10

    .line 131
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v10, 0x6

    const/high16 v11, 0x40000000    # 2.0f

    add-float v12, v6, v0

    mul-float/2addr v11, v12

    aput v11, v9, v10

    .line 132
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v10, 0xa

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x40000000    # 2.0f

    add-float v13, v1, v5

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    aput v11, v9, v10

    .line 133
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v10, 0xe

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 134
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v10, 0x3

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 135
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v10, 0x7

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 136
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v10, 0xb

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 137
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v10, 0xf

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    .line 138
    return-object p0
.end method

.method public set([F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 7
    .param p1, "values"    # [F

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, p1, v2

    aput v1, v0, v2

    .line 88
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, p1, v3

    aput v1, v0, v3

    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, p1, v4

    aput v1, v0, v4

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, p1, v5

    aput v1, v0, v5

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, p1, v6

    aput v1, v0, v6

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    const/4 v2, 0x5

    aget v2, p1, v2

    aput v2, v0, v1

    .line 93
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x6

    const/4 v2, 0x6

    aget v2, p1, v2

    aput v2, v0, v1

    .line 94
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x7

    const/4 v2, 0x7

    aget v2, p1, v2

    aput v2, v0, v1

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x8

    const/16 v2, 0x8

    aget v2, p1, v2

    aput v2, v0, v1

    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x9

    const/16 v2, 0x9

    aget v2, p1, v2

    aput v2, v0, v1

    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    const/16 v2, 0xa

    aget v2, p1, v2

    aput v2, v0, v1

    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xb

    const/16 v2, 0xb

    aget v2, p1, v2

    aput v2, v0, v1

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    const/16 v2, 0xc

    aget v2, p1, v2

    aput v2, v0, v1

    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    const/16 v2, 0xd

    aget v2, p1, v2

    aput v2, v0, v1

    .line 101
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    const/16 v2, 0xe

    aget v2, p1, v2

    aput v2, v0, v1

    .line 102
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xf

    const/16 v2, 0xf

    aget v2, p1, v2

    aput v2, v0, v1

    .line 103
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 4
    .param p1, "xAxis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "yAxis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "zAxis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "pos"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    const/4 v3, 0x0

    .line 149
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 150
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x4

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 151
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x8

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 152
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x1

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 153
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 154
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x9

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 155
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x2

    iget v2, p3, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v2, v2

    aput v2, v0, v1

    .line 156
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x6

    iget v2, p3, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v2, v2

    aput v2, v0, v1

    .line 157
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    iget v2, p3, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v2, v2

    aput v2, v0, v1

    .line 158
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    iget v2, p4, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 159
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    iget v2, p4, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 160
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    iget v2, p4, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 161
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 162
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 163
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xb

    aput v3, v0, v1

    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xf

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 165
    return-void
.end method

.method public setFromEulerAngles(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1
    .param p1, "yaw"    # F
    .param p2, "pitch"    # F
    .param p3, "roll"    # F

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 569
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Quaternion;->setEulerAngles(FFF)Lcom/badlogic/gdx/math/Quaternion;

    .line 570
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public setToLookAt(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .param p1, "direction"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "up"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 610
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 611
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 612
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 613
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 614
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 615
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 616
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x4

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 617
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x8

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 618
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x1

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 619
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 620
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x9

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 621
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x2

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v2, v2

    aput v2, v0, v1

    .line 622
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x6

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v2, v2

    aput v2, v0, v1

    .line 623
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v2, v2

    aput v2, v0, v1

    .line 625
    return-object p0
.end method

.method public setToLookAt(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "target"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "up"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 638
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 639
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0, p3}, Lcom/badlogic/gdx/math/Matrix4;->setToLookAt(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 640
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 642
    return-object p0
.end method

.method public setToOrtho(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 9
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "near"    # F
    .param p6, "far"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 438
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 439
    sub-float v6, p2, p1

    div-float v3, v7, v6

    .line 440
    .local v3, "x_orth":F
    sub-float v6, p4, p3

    div-float v4, v7, v6

    .line 441
    .local v4, "y_orth":F
    const/high16 v6, -0x40000000    # -2.0f

    sub-float v7, p6, p5

    div-float v5, v6, v7

    .line 443
    .local v5, "z_orth":F
    add-float v6, p2, p1

    neg-float v6, v6

    sub-float v7, p2, p1

    div-float v0, v6, v7

    .line 444
    .local v0, "tx":F
    add-float v6, p4, p3

    neg-float v6, v6

    sub-float v7, p4, p3

    div-float v1, v6, v7

    .line 445
    .local v1, "ty":F
    add-float v6, p6, p5

    neg-float v6, v6

    sub-float v7, p6, p5

    div-float v2, v6, v7

    .line 447
    .local v2, "tz":F
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x0

    aput v3, v6, v7

    .line 448
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x1

    aput v8, v6, v7

    .line 449
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x2

    aput v8, v6, v7

    .line 450
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x3

    aput v8, v6, v7

    .line 451
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x4

    aput v8, v6, v7

    .line 452
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x5

    aput v4, v6, v7

    .line 453
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x6

    aput v8, v6, v7

    .line 454
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x7

    aput v8, v6, v7

    .line 455
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x8

    aput v8, v6, v7

    .line 456
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x9

    aput v8, v6, v7

    .line 457
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xa

    aput v5, v6, v7

    .line 458
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xb

    aput v8, v6, v7

    .line 459
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xc

    aput v0, v6, v7

    .line 460
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xd

    aput v1, v6, v7

    .line 461
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xe

    aput v2, v6, v7

    .line 462
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xf

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v7

    .line 464
    return-object p0
.end method

.method public setToOrtho2D(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 407
    add-float v2, p1, p3

    add-float v4, p2, p4

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 408
    return-object p0
.end method

.method public setToOrtho2D(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "near"    # F
    .param p6, "far"    # F

    .prologue
    .line 422
    add-float v2, p1, p3

    add-float v4, p2, p4

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 423
    return-object p0
.end method

.method public setToProjection(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 10
    .param p1, "near"    # F
    .param p2, "far"    # F
    .param p3, "fov"    # F
    .param p4, "aspectRatio"    # F

    .prologue
    const/4 v9, 0x0

    .line 374
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 375
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    float-to-double v5, p3

    const-wide v7, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    double-to-float v2, v3

    .line 376
    .local v2, "l_fd":F
    add-float v3, p2, p1

    sub-float v4, p1, p2

    div-float v0, v3, v4

    .line 377
    .local v0, "l_a1":F
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, p2

    mul-float/2addr v3, p1

    sub-float v4, p1, p2

    div-float v1, v3, v4

    .line 378
    .local v1, "l_a2":F
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x0

    div-float v5, v2, p4

    aput v5, v3, v4

    .line 379
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x1

    aput v9, v3, v4

    .line 380
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x2

    aput v9, v3, v4

    .line 381
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x3

    aput v9, v3, v4

    .line 382
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x4

    aput v9, v3, v4

    .line 383
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x5

    aput v2, v3, v4

    .line 384
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x6

    aput v9, v3, v4

    .line 385
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x7

    aput v9, v3, v4

    .line 386
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x8

    aput v9, v3, v4

    .line 387
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x9

    aput v9, v3, v4

    .line 388
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xa

    aput v0, v3, v4

    .line 389
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xb

    const/high16 v5, -0x40800000    # -1.0f

    aput v5, v3, v4

    .line 390
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xc

    aput v9, v3, v4

    .line 391
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xd

    aput v9, v3, v4

    .line 392
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xe

    aput v1, v3, v4

    .line 393
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xf

    aput v9, v3, v4

    .line 395
    return-object p0
.end method

.method public setToRotation(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2
    .param p1, "axisX"    # F
    .param p2, "axisY"    # F
    .param p3, "axisZ"    # F
    .param p4, "angle"    # F

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 556
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-nez v0, :cond_0

    .line 557
    .end local p0    # "this":Lcom/badlogic/gdx/math/Matrix4;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/badlogic/gdx/math/Matrix4;
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p0

    goto :goto_0
.end method

.method public setToRotation(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "angle"    # F

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 543
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 544
    .end local p0    # "this":Lcom/badlogic/gdx/math/Matrix4;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/badlogic/gdx/math/Matrix4;
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p0

    goto :goto_0
.end method

.method public setToScaling(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 593
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 594
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aput p2, v0, v1

    .line 595
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aput p3, v0, v1

    .line 596
    return-object p0
.end method

.method public setToScaling(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 579
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 580
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 581
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 582
    return-object p0
.end method

.method public setToTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 489
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 490
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    .line 491
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aput p3, v0, v1

    .line 492
    return-object p0
.end method

.method public setToTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 474
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 475
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 476
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 477
    return-object p0
.end method

.method public setToTranslationAndScaling(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2
    .param p1, "translationX"    # F
    .param p2, "translationY"    # F
    .param p3, "translationZ"    # F
    .param p4, "scalingX"    # F
    .param p5, "scalingY"    # F
    .param p6, "scalingZ"    # F

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 525
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 526
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    .line 527
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aput p3, v0, v1

    .line 528
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aput p4, v0, v1

    .line 529
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aput p5, v0, v1

    .line 530
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aput p6, v0, v1

    .line 531
    return-object p0
.end method

.method public setToTranslationAndScaling(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .param p1, "translation"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "scaling"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 503
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 504
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 505
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 506
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 507
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 508
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 509
    return-object p0
.end method

.method public setToWorld(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "forward"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "up"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 650
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 651
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->right:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 652
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->right:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 654
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->right:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 655
    return-object p0
.end method

.method public toNormalMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 713
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aput v2, v0, v1

    .line 714
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aput v2, v0, v1

    .line 715
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aput v2, v0, v1

    .line 716
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->inv()Lcom/badlogic/gdx/math/Matrix4;

    .line 717
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->tra()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xc

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x9

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xd

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xa

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xe

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x7

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xb

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xf

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tra()Lcom/badlogic/gdx/math/Matrix4;
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 245
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 246
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v3

    aput v1, v0, v6

    .line 247
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v4

    aput v2, v0, v1

    .line 248
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v5

    aput v2, v0, v1

    .line 249
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v6

    aput v1, v0, v3

    .line 250
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    aput v2, v0, v1

    .line 251
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    aput v2, v0, v1

    .line 252
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    aput v2, v0, v1

    .line 253
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    aput v1, v0, v4

    .line 254
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    aput v2, v0, v1

    .line 255
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    aput v2, v0, v1

    .line 256
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    aput v2, v0, v1

    .line 257
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xc

    aget v1, v1, v2

    aput v1, v0, v5

    .line 258
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    aput v2, v0, v1

    .line 259
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    aget v2, v2, v3

    aput v2, v0, v1

    .line 260
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    aput v2, v0, v1

    .line 261
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set([F)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public trn(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 190
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 191
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    .line 192
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aget v2, v0, v1

    add-float/2addr v2, p3

    aput v2, v0, v1

    .line 193
    return-object p0
.end method

.method public trn(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 4
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 178
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 179
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 180
    return-object p0
.end method
