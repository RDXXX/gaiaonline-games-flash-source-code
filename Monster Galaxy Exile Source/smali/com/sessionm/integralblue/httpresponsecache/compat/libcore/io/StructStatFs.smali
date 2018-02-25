.class public final Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructStatFs;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public final f_bavail:J

.field public final f_bfree:J

.field public final f_blocks:J

.field public final f_bsize:J

.field public final f_ffree:J

.field public final f_files:J

.field public final f_frsize:J

.field public final f_namemax:J


# direct methods
.method constructor <init>(JJJJJJJJ)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructStatFs;->f_bsize:J

    .line 53
    iput-wide p3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructStatFs;->f_blocks:J

    .line 54
    iput-wide p5, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructStatFs;->f_bfree:J

    .line 55
    iput-wide p7, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructStatFs;->f_bavail:J

    .line 56
    iput-wide p9, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructStatFs;->f_files:J

    .line 57
    iput-wide p11, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructStatFs;->f_ffree:J

    .line 58
    iput-wide p13, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructStatFs;->f_namemax:J

    .line 59
    iput-wide p15, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructStatFs;->f_frsize:J

    .line 60
    return-void
.end method
