.class final Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field private final cipherSuite:Ljava/lang/String;

.field private final localCertificates:[Ljava/security/cert/Certificate;

.field private final peerCertificates:[Ljava/security/cert/Certificate;

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

.field private final uri:Ljava/lang/String;

.field private final varyHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    :try_start_0
    invoke-static {p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    .line 351
    invoke-static {p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    .line 352
    new-instance v1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-direct {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;-><init>()V

    iput-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->varyHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    .line 353
    invoke-direct {p0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->readInt(Ljava/io/InputStream;)I

    move-result v2

    move v1, v0

    .line 354
    :goto_0
    if-ge v1, v2, :cond_0

    .line 355
    iget-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->varyHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-static {p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->addLine(Ljava/lang/String;)V

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    :cond_0
    new-instance v1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-direct {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;-><init>()V

    iput-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    .line 359
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-static {p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 360
    invoke-direct {p0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->readInt(Ljava/io/InputStream;)I

    move-result v1

    .line 361
    :goto_1
    if-ge v0, v1, :cond_1

    .line 362
    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-static {p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->addLine(Ljava/lang/String;)V

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 365
    :cond_1
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 366
    invoke-static {p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/Strings;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 368
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected \"\" but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0

    .line 370
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    .line 371
    invoke-direct {p0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->readCertArray(Ljava/io/InputStream;)[Ljava/security/cert/Certificate;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    .line 372
    invoke-direct {p0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->readCertArray(Ljava/io/InputStream;)[Ljava/security/cert/Certificate;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    :goto_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 381
    return-void

    .line 374
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Ljava/net/HttpURLConnection;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    .line 385
    iput-object p2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->varyHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    .line 386
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    .line 387
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->fromMultimap(Ljava/util/Map;)Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v1

    iput-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    .line 389
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->isHttps()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    check-cast p3, Ljavax/net/ssl/HttpsURLConnection;

    .line 391
    invoke-virtual {p3}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    .line 394
    :try_start_0
    invoke-virtual {p3}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 397
    :goto_0
    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    .line 398
    invoke-virtual {p3}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    .line 404
    :goto_1
    return-void

    .line 400
    :cond_0
    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    .line 401
    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    .line 402
    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    goto :goto_1

    .line 395
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)Z
    .locals 1

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->isHttps()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method private isHttps()Z
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readCertArray(Ljava/io/InputStream;)[Ljava/security/cert/Certificate;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 449
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 450
    const/4 v0, 0x0

    .line 461
    :cond_0
    return-object v0

    .line 453
    :cond_1
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 454
    new-array v0, v0, [Ljava/security/cert/Certificate;

    .line 455
    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 456
    invoke-static {p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 457
    sget-object v4, Lcom/sessionm/integralblue/httpresponsecache/compat/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {v3, v4}, Lcom/sessionm/integralblue/httpresponsecache/compat/Strings;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/Base64;->decode([B)[B

    move-result-object v3

    .line 458
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    aput-object v3, v0, v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    :catch_0
    move-exception v0

    .line 463
    new-instance v1, Lcom/sessionm/integralblue/httpresponsecache/compat/java/io/IOException;

    invoke-direct {v1, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/java/io/IOException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private readInt(Ljava/io/InputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    invoke-static {p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 441
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 442
    :catch_0
    move-exception v1

    .line 443
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected an int but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private writeCertArray(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 468
    if-nez p2, :cond_1

    .line 469
    const-string v0, "-1\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 482
    :cond_0
    return-void

    .line 473
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 474
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 475
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    .line 476
    invoke-static {v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    .line 477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    new-instance v1, Lcom/sessionm/integralblue/httpresponsecache/compat/java/io/IOException;

    invoke-direct {v1, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/java/io/IOException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public matches(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
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
    .line 486
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-direct {v0, p1, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;-><init>(Ljava/net/URI;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)V

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->varyHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->varyMatches(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newCacheResponse(Ljava/io/InputStream;)Ljava/net/CacheResponse;
    .locals 1

    .prologue
    .line 493
    new-instance v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry$1;

    invoke-direct {v0, p0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry$1;-><init>(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public newSecureCacheResponse(Ljava/io/InputStream;)Ljava/net/SecureCacheResponse;
    .locals 1

    .prologue
    .line 505
    new-instance v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry$2;

    invoke-direct {v0, p0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry$2;-><init>(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public writeTo(Lcom/sessionm/jakewharton/DiskLruCache$Editor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0xa

    .line 407
    invoke-virtual {p1, v1}, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    .line 408
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Lcom/sessionm/integralblue/httpresponsecache/compat/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->varyHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v0, v1

    .line 413
    :goto_0
    iget-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->varyHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->varyHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->varyHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 418
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 420
    :goto_1
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v3, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v3, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 420
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 425
    :cond_1
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    invoke-virtual {v2, v5}, Ljava/io/Writer;->write(I)V

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    invoke-direct {p0, v2, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->writeCertArray(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    .line 429
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    invoke-direct {p0, v2, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->writeCertArray(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    .line 431
    :cond_2
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 432
    return-void
.end method
