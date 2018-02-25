.class public final Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final RECEIVED_MILLIS:Ljava/lang/String; = "X-Android-Received-Millis"

.field private static final SENT_MILLIS:Ljava/lang/String; = "X-Android-Sent-Millis"


# instance fields
.field private ageSeconds:I

.field private connection:Ljava/lang/String;

.field private contentEncoding:Ljava/lang/String;

.field private contentLength:I

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private final headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

.field private isPublic:Z

.field private lastModified:Ljava/util/Date;

.field private maxAgeSeconds:I

.field private mustRevalidate:Z

.field private noCache:Z

.field private noStore:Z

.field private proxyAuthenticate:Ljava/lang/String;

.field private receivedResponseMillis:J

.field private sMaxAgeSeconds:I

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private transferEncoding:Ljava/lang/String;

.field private final uri:Ljava/net/URI;

.field private varyFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wwwAuthenticate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URI;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->maxAgeSeconds:I

    .line 92
    iput v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->sMaxAgeSeconds:I

    .line 104
    iput v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->ageSeconds:I

    .line 107
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    .line 111
    iput v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->contentLength:I

    .line 117
    iput-object p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->uri:Ljava/net/URI;

    .line 118
    iput-object p2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    .line 120
    new-instance v3, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders$1;

    invoke-direct {v3, p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders$1;-><init>(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;)V

    move v0, v1

    .line 138
    :goto_0
    invoke-virtual {p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->length()I

    move-result v2

    if-ge v0, v2, :cond_11

    .line 139
    invoke-virtual {p2, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {p2, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 141
    const-string v5, "Cache-Control"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 142
    invoke-static {v4, v3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HeaderParser;->parseCacheControl(Ljava/lang/String;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HeaderParser$CacheControlHandler;)V

    .line 138
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_1
    const-string v5, "Date"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 144
    invoke-static {v4}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    goto :goto_1

    .line 145
    :cond_2
    const-string v5, "Expires"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 146
    invoke-static {v4}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->expires:Ljava/util/Date;

    goto :goto_1

    .line 147
    :cond_3
    const-string v5, "Last-Modified"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 148
    invoke-static {v4}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    goto :goto_1

    .line 149
    :cond_4
    const-string v5, "ETag"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 150
    iput-object v4, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->etag:Ljava/lang/String;

    goto :goto_1

    .line 151
    :cond_5
    const-string v5, "Pragma"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 152
    const-string v2, "no-cache"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->noCache:Z

    goto :goto_1

    .line 155
    :cond_6
    const-string v5, "Age"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 156
    invoke-static {v4}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->ageSeconds:I

    goto :goto_1

    .line 157
    :cond_7
    const-string v5, "Vary"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 159
    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 160
    new-instance v2, Ljava/util/TreeSet;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    .line 162
    :cond_8
    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_0

    aget-object v6, v4, v2

    .line 163
    iget-object v7, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 165
    :cond_9
    const-string v5, "Content-Encoding"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 166
    iput-object v4, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    goto/16 :goto_1

    .line 167
    :cond_a
    const-string v5, "Transfer-Encoding"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 168
    iput-object v4, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->transferEncoding:Ljava/lang/String;

    goto/16 :goto_1

    .line 169
    :cond_b
    const-string v5, "Content-Length"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 171
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->contentLength:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 172
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 174
    :cond_c
    const-string v5, "Connection"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 175
    iput-object v4, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->connection:Ljava/lang/String;

    goto/16 :goto_1

    .line 176
    :cond_d
    const-string v5, "Proxy-Authenticate"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 177
    iput-object v4, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->proxyAuthenticate:Ljava/lang/String;

    goto/16 :goto_1

    .line 178
    :cond_e
    const-string v5, "WWW-Authenticate"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 179
    iput-object v4, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->wwwAuthenticate:Ljava/lang/String;

    goto/16 :goto_1

    .line 180
    :cond_f
    const-string v5, "X-Android-Sent-Millis"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 181
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->sentRequestMillis:J

    goto/16 :goto_1

    .line 182
    :cond_10
    const-string v5, "X-Android-Received-Millis"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->receivedResponseMillis:J

    goto/16 :goto_1

    .line 186
    :cond_11
    return-void
.end method

.method static synthetic access$002(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->noCache:Z

    return p1
.end method

.method static synthetic access$102(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->noStore:Z

    return p1
.end method

.method static synthetic access$202(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;I)I
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->maxAgeSeconds:I

    return p1
.end method

.method static synthetic access$302(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;I)I
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->sMaxAgeSeconds:I

    return p1
.end method

.method static synthetic access$402(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->isPublic:Z

    return p1
.end method

.method static synthetic access$502(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->mustRevalidate:Z

    return p1
.end method

.method private computeAge(J)J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 289
    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->receivedResponseMillis:J

    iget-object v4, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 292
    :cond_0
    iget v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->ageSeconds:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->ageSeconds:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 295
    :cond_1
    iget-wide v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->receivedResponseMillis:J

    iget-wide v4, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->sentRequestMillis:J

    sub-long/2addr v2, v4

    .line 296
    iget-wide v4, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->receivedResponseMillis:J

    sub-long v4, p1, v4

    .line 297
    add-long/2addr v0, v2

    add-long/2addr v0, v4

    return-wide v0
.end method

.method private computeFreshnessLifetime()J
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 305
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->maxAgeSeconds:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 306
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->maxAgeSeconds:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 322
    :cond_0
    :goto_0
    return-wide v2

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->expires:Ljava/util/Date;

    if-eqz v0, :cond_4

    .line 308
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 309
    :goto_1
    iget-object v4, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->expires:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v4, v0

    .line 310
    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    :goto_2
    move-wide v2, v0

    goto :goto_0

    .line 308
    :cond_2
    iget-wide v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->receivedResponseMillis:J

    goto :goto_1

    :cond_3
    move-wide v0, v2

    .line 310
    goto :goto_2

    .line 311
    :cond_4
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 319
    :goto_3
    iget-object v4, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 320
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v2, 0xa

    div-long v2, v0, v2

    goto :goto_0

    .line 318
    :cond_5
    iget-wide v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->sentRequestMillis:J

    goto :goto_3
.end method

.method private static isEndToEnd(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 508
    const-string v0, "Connection"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFreshnessLifetimeHeuristic()Z
    .locals 2

    .prologue
    .line 331
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->maxAgeSeconds:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->expires:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public chooseResponseSource(JLcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;)Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    const/4 v10, -0x1

    .line 401
    invoke-virtual {p0, p3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->isCacheable(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;->NETWORK:Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    .line 447
    :goto_0
    return-object v0

    .line 405
    :cond_0
    invoke-virtual {p3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->isNoCache()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->hasConditions()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 406
    :cond_1
    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;->NETWORK:Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    goto :goto_0

    .line 409
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->computeAge(J)J

    move-result-wide v6

    .line 410
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->computeFreshnessLifetime()J

    move-result-wide v0

    .line 412
    invoke-virtual {p3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getMaxAgeSeconds()I

    move-result v2

    if-eq v2, v10, :cond_3

    .line 413
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getMaxAgeSeconds()I

    move-result v3

    int-to-long v8, v3

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 418
    :cond_3
    invoke-virtual {p3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getMinFreshSeconds()I

    move-result v2

    if-eq v2, v10, :cond_c

    .line 419
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getMinFreshSeconds()I

    move-result v3

    int-to-long v8, v3

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 423
    :goto_1
    iget-boolean v8, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->mustRevalidate:Z

    if-nez v8, :cond_4

    invoke-virtual {p3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getMaxStaleSeconds()I

    move-result v8

    if-eq v8, v10, :cond_4

    .line 424
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getMaxStaleSeconds()I

    move-result v5

    int-to-long v8, v5

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 427
    :cond_4
    iget-boolean v8, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->noCache:Z

    if-nez v8, :cond_7

    add-long v8, v6, v2

    add-long/2addr v4, v0

    cmp-long v4, v8, v4

    if-gez v4, :cond_7

    .line 428
    add-long/2addr v2, v6

    cmp-long v0, v2, v0

    if-ltz v0, :cond_5

    .line 429
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const-string v1, "Warning"

    const-string v2, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v0, v1, v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_5
    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->HOURS:Lcom/sessionm/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x18

    invoke-virtual {v0, v1, v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    cmp-long v0, v6, v0

    if-lez v0, :cond_6

    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->isFreshnessLifetimeHeuristic()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 432
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const-string v1, "Warning"

    const-string v2, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v0, v1, v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_6
    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;->CACHE:Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    goto/16 :goto_0

    .line 437
    :cond_7
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v0, :cond_a

    .line 438
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {p3, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->setIfModifiedSince(Ljava/util/Date;)V

    .line 443
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->etag:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 444
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->etag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->setIfNoneMatch(Ljava/lang/String;)V

    .line 447
    :cond_9
    invoke-virtual {p3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->hasConditions()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;->CONDITIONAL_CACHE:Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    goto/16 :goto_0

    .line 439
    :cond_a
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_8

    .line 440
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    invoke-virtual {p3, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->setIfModifiedSince(Ljava/util/Date;)V

    goto :goto_2

    .line 447
    :cond_b
    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;->NETWORK:Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    goto/16 :goto_0

    :cond_c
    move-wide v2, v4

    goto :goto_1
.end method

.method public combine(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;)Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 480
    new-instance v2, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-direct {v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;-><init>()V

    move v0, v1

    .line 482
    :goto_0
    iget-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 483
    iget-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v3, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v3

    .line 484
    iget-object v4, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 485
    const-string v5, "Warning"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 482
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 488
    :cond_1
    invoke-static {v3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v5, v3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 489
    :cond_2
    invoke-virtual {v2, v3, v4}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 493
    :cond_3
    :goto_2
    iget-object v0, p1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->length()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 494
    iget-object v0, p1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v0

    .line 495
    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 496
    iget-object v3, p1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v3, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 500
    :cond_5
    new-instance v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->uri:Ljava/net/URI;

    invoke-direct {v0, v1, v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;-><init>(Ljava/net/URI;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)V

    return-object v0
.end method

.method public getConnection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->connection:Ljava/lang/String;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->contentLength:I

    return v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public getMaxAgeSeconds()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->maxAgeSeconds:I

    return v0
.end method

.method public getProxyAuthenticate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->proxyAuthenticate:Ljava/lang/String;

    return-object v0
.end method

.method public getSMaxAgeSeconds()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->sMaxAgeSeconds:I

    return v0
.end method

.method public getServedDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public getVaryFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    return-object v0
.end method

.method public getWwwAuthenticate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->wwwAuthenticate:Ljava/lang/String;

    return-object v0
.end method

.method public hasConnectionClose()Z
    .locals 2

    .prologue
    .line 202
    const-string v0, "close"

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->connection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasVaryAll()Z
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCacheable(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 343
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getResponseCode()I

    move-result v1

    .line 344
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    const/16 v2, 0xcb

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12c

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x19a

    if-eq v1, v2, :cond_1

    .line 367
    :cond_0
    :goto_0
    return v0

    .line 356
    :cond_1
    invoke-virtual {p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->hasAuthorization()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->isPublic:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->mustRevalidate:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->sMaxAgeSeconds:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 363
    :cond_2
    iget-boolean v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->noStore:Z

    if-nez v1, :cond_0

    .line 367
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isChunked()Z
    .locals 2

    .prologue
    .line 198
    const-string v0, "chunked"

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->transferEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isContentEncodingGzip()Z
    .locals 2

    .prologue
    .line 189
    const-string v0, "gzip"

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMustRevalidate()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->mustRevalidate:Z

    return v0
.end method

.method public isNoCache()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->noCache:Z

    return v0
.end method

.method public isNoStore()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->noStore:Z

    return v0
.end method

.method public isPublic()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->isPublic:Z

    return v0
.end method

.method public setLocalTimestamps(JJ)V
    .locals 3

    .prologue
    .line 278
    iput-wide p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->sentRequestMillis:J

    .line 279
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const-string v1, "X-Android-Sent-Millis"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iput-wide p3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->receivedResponseMillis:J

    .line 281
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const-string v1, "X-Android-Received-Millis"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public stripContentEncoding()V
    .locals 2

    .prologue
    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public validate(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 457
    iget-object v1, p1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getResponseCode()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_1

    .line 472
    :cond_0
    :goto_0
    return v0

    .line 466
    :cond_1
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 472
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varyMatches(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 385
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    const/4 v0, 0x0

    .line 389
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
