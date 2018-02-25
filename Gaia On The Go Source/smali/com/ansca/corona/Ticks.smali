.class public Lcom/ansca/corona/Ticks;
.super Ljava/lang/Object;
.source "Ticks.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private fMilliseconds:J


# direct methods
.method private constructor <init>(J)V
    .locals 0
    .param p1, "value"    # J

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lcom/ansca/corona/Ticks;->fMilliseconds:J

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/ansca/corona/Ticks;)V
    .locals 2
    .param p1, "value"    # Lcom/ansca/corona/Ticks;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    if-eqz p1, :cond_0

    .line 25
    iget-wide v0, p1, Lcom/ansca/corona/Ticks;->fMilliseconds:J

    iput-wide v0, p0, Lcom/ansca/corona/Ticks;->fMilliseconds:J

    .line 27
    :cond_0
    return-void
.end method

.method public static fromCurrentTime()Lcom/ansca/corona/Ticks;
    .locals 3

    .prologue
    .line 217
    new-instance v0, Lcom/ansca/corona/Ticks;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/Ticks;-><init>(J)V

    return-object v0
.end method

.method public static fromLong(J)Lcom/ansca/corona/Ticks;
    .locals 1
    .param p0, "value"    # J

    .prologue
    .line 209
    new-instance v0, Lcom/ansca/corona/Ticks;

    invoke-direct {v0, p0, p1}, Lcom/ansca/corona/Ticks;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/ansca/corona/TimeSpan;)Lcom/ansca/corona/Ticks;
    .locals 5
    .param p1, "value"    # Lcom/ansca/corona/TimeSpan;

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 50
    .end local p0    # "this":Lcom/ansca/corona/Ticks;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/ansca/corona/Ticks;
    :cond_0
    new-instance v0, Lcom/ansca/corona/Ticks;

    iget-wide v1, p0, Lcom/ansca/corona/Ticks;->fMilliseconds:J

    invoke-virtual {p1}, Lcom/ansca/corona/TimeSpan;->getTotalMilliseconds()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/Ticks;-><init>(J)V

    move-object p0, v0

    goto :goto_0
.end method

.method public addMilliseconds(J)Lcom/ansca/corona/Ticks;
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 64
    .end local p0    # "this":Lcom/ansca/corona/Ticks;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/ansca/corona/Ticks;
    :cond_0
    new-instance v0, Lcom/ansca/corona/Ticks;

    iget-wide v1, p0, Lcom/ansca/corona/Ticks;->fMilliseconds:J

    add-long/2addr v1, p1

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/Ticks;-><init>(J)V

    move-object p0, v0

    goto :goto_0
.end method

.method public addSeconds(J)Lcom/ansca/corona/Ticks;
    .locals 5
    .param p1, "value"    # J

    .prologue
    .line 75
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 78
    .end local p0    # "this":Lcom/ansca/corona/Ticks;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/ansca/corona/Ticks;
    :cond_0
    new-instance v0, Lcom/ansca/corona/Ticks;

    iget-wide v1, p0, Lcom/ansca/corona/Ticks;->fMilliseconds:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/Ticks;-><init>(J)V

    move-object p0, v0

    goto :goto_0
.end method

.method public compareTo(Lcom/ansca/corona/Ticks;)I
    .locals 9
    .param p1, "value"    # Lcom/ansca/corona/Ticks;

    .prologue
    const-wide/16 v7, 0x0

    const/4 v4, 0x1

    .line 136
    if-nez p1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v4

    .line 141
    :cond_1
    iget-wide v0, p1, Lcom/ansca/corona/Ticks;->fMilliseconds:J

    .line 144
    .local v0, "milliseconds":J
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v5, v0, v5

    if-nez v5, :cond_2

    .line 145
    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    .line 149
    :cond_2
    iget-wide v5, p0, Lcom/ansca/corona/Ticks;->fMilliseconds:J

    sub-long v2, v5, v0

    .line 150
    .local v2, "result":J
    cmp-long v5, v2, v7

    if-gez v5, :cond_3

    .line 151
    const/4 v4, -0x1

    goto :goto_0

    .line 153
    :cond_3
    cmp-long v5, v2, v7

    if-nez v5, :cond_0

    .line 154
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 169
    instance-of v0, p1, Lcom/ansca/corona/Ticks;

    if-nez v0, :cond_0

    .line 170
    const/4 v0, 0x1

    .line 174
    .end local p1    # "value":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    check-cast p1, Lcom/ansca/corona/Ticks;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/ansca/corona/Ticks;->compareTo(Lcom/ansca/corona/Ticks;)I

    move-result v0

    goto :goto_0
.end method

.method public equals(Lcom/ansca/corona/Ticks;)Z
    .locals 5
    .param p1, "value"    # Lcom/ansca/corona/Ticks;

    .prologue
    const/4 v0, 0x0

    .line 107
    if-nez p1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v1, p0, Lcom/ansca/corona/Ticks;->fMilliseconds:J

    iget-wide v3, p1, Lcom/ansca/corona/Ticks;->fMilliseconds:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 121
    instance-of v0, p1, Lcom/ansca/corona/Ticks;

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 124
    .end local p1    # "value":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    check-cast p1, Lcom/ansca/corona/Ticks;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/ansca/corona/Ticks;->equals(Lcom/ansca/corona/Ticks;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/ansca/corona/Ticks;->fMilliseconds:J

    long-to-int v0, v0

    return v0
.end method

.method public subtract(Lcom/ansca/corona/Ticks;)Lcom/ansca/corona/TimeSpan;
    .locals 4
    .param p1, "value"    # Lcom/ansca/corona/Ticks;

    .prologue
    .line 87
    const-wide/16 v0, 0x0

    .line 88
    .local v0, "milliseconds":J
    if-eqz p1, :cond_0

    .line 89
    iget-wide v0, p1, Lcom/ansca/corona/Ticks;->fMilliseconds:J

    .line 93
    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 94
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 98
    :cond_1
    iget-wide v2, p0, Lcom/ansca/corona/Ticks;->fMilliseconds:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/ansca/corona/TimeSpan;->fromMilliseconds(J)Lcom/ansca/corona/TimeSpan;

    move-result-object v2

    return-object v2
.end method

.method public toLong()J
    .locals 2

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/ansca/corona/Ticks;->fMilliseconds:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/ansca/corona/Ticks;->fMilliseconds:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
