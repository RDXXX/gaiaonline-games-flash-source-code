.class final enum Lcom/sessionm/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$5;
.super Lcom/sessionm/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sessionm/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;-><init>(Ljava/lang/String;ILcom/sessionm/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$1;)V

    return-void
.end method


# virtual methods
.method public convert(JLcom/sessionm/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;)J
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p3, p1, p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method excessNanos(JJ)I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public toDays(J)J
    .locals 2

    .prologue
    .line 96
    const-wide/16 v0, 0x5a0

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toHours(J)J
    .locals 2

    .prologue
    .line 95
    const-wide/16 v0, 0x3c

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toMicros(J)J
    .locals 6

    .prologue
    .line 91
    const-wide/32 v2, 0x3938700

    const-wide v4, 0x23ca98ce50L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/sessionm/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$5;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMillis(J)J
    .locals 6

    .prologue
    .line 92
    const-wide/32 v2, 0xea60

    const-wide v4, 0x8bcf64e5ec10L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/sessionm/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$5;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMinutes(J)J
    .locals 0

    .prologue
    .line 94
    return-wide p1
.end method

.method public toNanos(J)J
    .locals 6

    .prologue
    .line 90
    const-wide v2, 0xdf8475800L

    const-wide/32 v4, 0x9299ff3

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/sessionm/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$5;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toSeconds(J)J
    .locals 6

    .prologue
    .line 93
    const-wide/16 v2, 0x3c

    const-wide v4, 0x222222222222222L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/sessionm/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$5;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method
