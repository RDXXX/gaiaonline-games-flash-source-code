.class Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;
.super Ljava/lang/Object;
.source "MD5Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseFrameJoint"
.end annotation


# instance fields
.field public final orient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

.field public final pos:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->pos:Lcom/badlogic/gdx/math/Vector3;

    .line 490
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->orient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    return-void
.end method
