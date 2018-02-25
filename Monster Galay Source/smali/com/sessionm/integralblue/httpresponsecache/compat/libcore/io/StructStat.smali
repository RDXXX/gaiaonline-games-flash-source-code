.class public final Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructStat;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public final st_atime:J

.field public final st_blksize:J

.field public final st_blocks:J

.field public final st_ctime:J

.field public final st_dev:J

.field public final st_gid:I

.field public final st_ino:J

.field public final st_mode:I

.field public final st_mtime:J

.field public final st_nlink:J

.field public final st_rdev:J

.field public final st_size:J

.field public final st_uid:I


# direct methods
.method constructor <init>(JJIJIIJJJJJJJ)V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-wide p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructStat;->st_dev:J

    .line 77
    iput-wide p3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructStat;->st_ino:J

    .line 78
    iput p5, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructStat;->st_mode:I

    .line 79
    iput-wide p6, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructStat;->st_nlink:J

    .line 80
    iput p8, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructStat;->st_uid:I

    .line 81
    iput p9, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructStat;->st_gid:I

    .line 82
    iput-wide p10, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructStat;->st_rdev:J

    .line 83
    iput-wide p12, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructStat;->st_size:J

    .line 84
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructStat;->st_atime:J

    .line 85
    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructStat;->st_mtime:J

    .line 86
    move-wide/from16 v0, p18

    iput-wide v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructStat;->st_ctime:J

    .line 87
    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructStat;->st_blksize:J

    .line 88
    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructStat;->st_blocks:J

    .line 89
    return-void
.end method
