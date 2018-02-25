.class final Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HeaderParser;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HeaderParser$CacheControlHandler;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static parseCacheControl(Ljava/lang/String;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HeaderParser$CacheControlHandler;)V
    .locals 5

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 30
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 32
    const-string v1, "=,"

    invoke-static {p0, v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 33
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2c

    if-ne v0, v3, :cond_1

    .line 36
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .line 37
    const/4 v1, 0x0

    invoke-interface {p1, v2, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HeaderParser$CacheControlHandler;->handle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_1
    add-int/lit8 v0, v1, 0x1

    .line 42
    invoke-static {p0, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v0

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x22

    if-ne v1, v3, :cond_2

    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 50
    const-string v1, "\""

    invoke-static {p0, v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 51
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 52
    add-int/lit8 v1, v1, 0x1

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 61
    :goto_1
    invoke-interface {p1, v2, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HeaderParser$CacheControlHandler;->handle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_2
    const-string v1, ","

    invoke-static {p0, v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 58
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    goto :goto_1

    .line 63
    :cond_3
    return-void
.end method

.method public static parseSeconds(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 99
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 100
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 101
    const v0, 0x7fffffff

    .line 108
    :goto_0
    return v0

    .line 102
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 103
    const/4 v0, 0x0

    goto :goto_0

    .line 105
    :cond_1
    long-to-int v0, v0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static skipUntil(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2

    .prologue
    .line 71
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 76
    :cond_0
    return p1

    .line 71
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private static skipWhitespace(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 84
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 85
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 86
    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 90
    :cond_0
    return p1

    .line 84
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method
