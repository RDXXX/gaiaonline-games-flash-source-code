.class public final Lcom/flurry/android/FlurryAgent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field static a:Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static volatile c:Ljava/lang/String;

.field private static volatile d:Ljava/lang/String;

.field private static volatile e:Ljava/lang/String;

.field private static volatile f:Ljava/lang/String;

.field private static volatile g:Ljava/lang/String;

.field private static final h:Lcom/flurry/android/FlurryAgent;

.field private static i:J

.field private static j:Z

.field private static k:Z

.field private static volatile kInsecureReportUrl:Ljava/lang/String;

.field private static volatile kSecureReportUrl:Ljava/lang/String;

.field private static l:Z

.field private static m:Z

.field private static n:Landroid/location/Criteria;

.field private static o:Z

.field private static p:Lcom/flurry/android/AppCircle;


# instance fields
.field private A:Z

.field private B:Ljava/util/List;

.field private C:Landroid/location/LocationManager;

.field private D:Ljava/lang/String;

.field private E:Z

.field private F:J

.field private G:Ljava/util/List;

.field private H:J

.field private I:J

.field private J:J

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:B

.field private N:Ljava/lang/String;

.field private O:B

.field private P:Ljava/lang/Long;

.field private Q:I

.field private R:Landroid/location/Location;

.field private S:Ljava/util/Map;

.field private T:Ljava/util/List;

.field private U:Z

.field private V:I

.field private W:Ljava/util/List;

.field private X:I

.field private Y:Lcom/flurry/android/u;

.field private final q:Landroid/os/Handler;

.field private r:Ljava/io/File;

.field private s:Ljava/io/File;

.field private volatile t:Z

.field private volatile u:Z

.field private v:J

.field private w:Ljava/util/Map;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "9774d56d682e549c"

    aput-object v1, v0, v2

    const-string v1, "dead00beef"

    aput-object v1, v0, v4

    sput-object v0, Lcom/flurry/android/FlurryAgent;->b:[Ljava/lang/String;

    .line 96
    sput-object v3, Lcom/flurry/android/FlurryAgent;->c:Ljava/lang/String;

    .line 97
    const-string v0, "http://data.flurry.com/aap.do"

    sput-object v0, Lcom/flurry/android/FlurryAgent;->kInsecureReportUrl:Ljava/lang/String;

    .line 98
    const-string v0, "https://data.flurry.com/aap.do"

    sput-object v0, Lcom/flurry/android/FlurryAgent;->kSecureReportUrl:Ljava/lang/String;

    .line 100
    sput-object v3, Lcom/flurry/android/FlurryAgent;->d:Ljava/lang/String;

    .line 101
    const-string v0, "http://ad.flurry.com/getCanvas.do"

    sput-object v0, Lcom/flurry/android/FlurryAgent;->e:Ljava/lang/String;

    .line 103
    sput-object v3, Lcom/flurry/android/FlurryAgent;->f:Ljava/lang/String;

    .line 104
    const-string v0, "http://ad.flurry.com/getAndroidApp.do"

    sput-object v0, Lcom/flurry/android/FlurryAgent;->g:Ljava/lang/String;

    .line 143
    new-instance v0, Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0}, Lcom/flurry/android/FlurryAgent;-><init>()V

    sput-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    .line 145
    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/flurry/android/FlurryAgent;->i:J

    .line 146
    sput-boolean v4, Lcom/flurry/android/FlurryAgent;->j:Z

    .line 148
    sput-boolean v2, Lcom/flurry/android/FlurryAgent;->k:Z

    .line 149
    sput-boolean v2, Lcom/flurry/android/FlurryAgent;->l:Z

    .line 152
    sput-boolean v4, Lcom/flurry/android/FlurryAgent;->m:Z

    .line 153
    sput-object v3, Lcom/flurry/android/FlurryAgent;->n:Landroid/location/Criteria;

    .line 155
    sput-boolean v2, Lcom/flurry/android/FlurryAgent;->o:Z

    .line 156
    new-instance v0, Lcom/flurry/android/AppCircle;

    invoke-direct {v0}, Lcom/flurry/android/AppCircle;-><init>()V

    sput-object v0, Lcom/flurry/android/FlurryAgent;->p:Lcom/flurry/android/AppCircle;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->s:Ljava/io/File;

    .line 165
    iput-boolean v2, p0, Lcom/flurry/android/FlurryAgent;->t:Z

    .line 166
    iput-boolean v2, p0, Lcom/flurry/android/FlurryAgent;->u:Z

    .line 169
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->w:Ljava/util/Map;

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->A:Z

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/util/List;

    .line 188
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->K:Ljava/lang/String;

    .line 189
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->L:Ljava/lang/String;

    .line 190
    iput-byte v1, p0, Lcom/flurry/android/FlurryAgent;->M:B

    .line 191
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->N:Ljava/lang/String;

    .line 192
    iput-byte v1, p0, Lcom/flurry/android/FlurryAgent;->O:B

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->S:Ljava/util/Map;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->T:Ljava/util/List;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->W:Ljava/util/List;

    .line 204
    new-instance v0, Lcom/flurry/android/u;

    invoke-direct {v0}, Lcom/flurry/android/u;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    .line 282
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FlurryAgent"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 284
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->q:Landroid/os/Handler;

    .line 285
    return-void
.end method

.method private static a(D)D
    .locals 4

    .prologue
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 1354
    mul-double v0, p0, v2

    .line 1355
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    .line 1356
    div-double/2addr v0, v2

    .line 1357
    return-wide v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 332
    sget-boolean v1, Lcom/flurry/android/FlurryAgent;->o:Z

    if-nez v1, :cond_0

    .line 341
    :goto_0
    return-object v0

    .line 336
    :cond_0
    :try_start_0
    sget-object v1, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iget-object v1, v1, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v1, p0, p1, p2}, Lcom/flurry/android/u;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v1

    .line 340
    const-string v2, "FlurryAgent"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Lcom/flurry/android/Offer;
    .locals 1

    .prologue
    .line 359
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 361
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0, p0}, Lcom/flurry/android/u;->b(Ljava/lang/String;)Lcom/flurry/android/Offer;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;
    .locals 6

    .prologue
    .line 2439
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 2441
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 2443
    new-instance v1, Lcom/flurry/android/ai;

    invoke-direct {v1, p0, v0}, Lcom/flurry/android/ai;-><init>(Lcom/flurry/android/FlurryAgent;Ljava/security/KeyStore;)V

    .line 2445
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 2446
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 2448
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 2450
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, p1, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 2452
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2456
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    goto :goto_0
.end method

.method private declared-synchronized a(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 1944
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/flurry/android/FlurryAgent;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->D:Ljava/lang/String;

    .line 1946
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->s:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1948
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading persistent data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->s:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1951
    const/4 v2, 0x0

    .line 1954
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->s:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1955
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1957
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 1960
    const v2, 0xb5fa

    if-ne v0, v2, :cond_4

    .line 1962
    invoke-direct {p0, v1}, Lcom/flurry/android/FlurryAgent;->b(Ljava/io/DataInputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1975
    :goto_0
    :try_start_3
    invoke-static {v1}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1980
    :goto_1
    :try_start_4
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->u:Z

    if-nez v0, :cond_0

    .line 1982
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->s:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 1983
    if-eqz v0, :cond_5

    .line 1985
    const-string v0, "FlurryAgent"

    const-string v1, "Deleted persistence file"

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2003
    :cond_0
    :goto_2
    :try_start_5
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->u:Z

    if-nez v0, :cond_1

    .line 2005
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->E:Z

    .line 2006
    iget-wide v0, p0, Lcom/flurry/android/FlurryAgent;->H:J

    iput-wide v0, p0, Lcom/flurry/android/FlurryAgent;->F:J

    .line 2007
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->u:Z

    .line 2010
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->D:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 2012
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x25

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/flurry/android/FlurryAgent;->x:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    mul-int/lit8 v6, v6, 0x25

    int-to-long v6, v6

    add-long/2addr v4, v6

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v0, v1, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->D:Ljava/lang/String;

    .line 2013
    const-string v0, "FlurryAgent"

    const-string v1, "Generated id"

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/u;->a(Ljava/lang/String;)V

    .line 2019
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->D:Ljava/lang/String;

    const-string v1, "AND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->r:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2021
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->D:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/flurry/android/FlurryAgent;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2023
    :cond_3
    monitor-exit p0

    return-void

    .line 1966
    :cond_4
    :try_start_6
    const-string v0, "FlurryAgent"

    const-string v2, "Unexpected file type"

    invoke-static {v0, v2}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_0

    .line 1969
    :catch_0
    move-exception v0

    .line 1971
    :goto_3
    :try_start_7
    const-string v2, "FlurryAgent"

    const-string v3, "Error when loading persistent file"

    invoke-static {v2, v3, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1975
    :try_start_8
    invoke-static {v1}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 1944
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1975
    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_9
    invoke-static {v1}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1989
    :cond_5
    :try_start_a
    const-string v0, "FlurryAgent"

    const-string v1, "Cannot delete persistence file"

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 1993
    :catch_1
    move-exception v0

    .line 1995
    :try_start_b
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 2000
    :cond_6
    const-string v0, "FlurryAgent"

    const-string v1, "Agent cache file doesn\'t exist."

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2

    .line 1975
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 1969
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_3
.end method

.method static a(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 373
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-nez v0, :cond_0

    .line 375
    const-string v0, "FlurryAgent"

    const-string v1, "Cannot accept Offer. AppCircle is not enabled"

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/android/u;->a(Landroid/content/Context;J)V

    .line 379
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 347
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-nez v0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 349
    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0, p0, p1}, Lcom/flurry/android/u;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized a(Landroid/content/Context;Z)V
    .locals 5

    .prologue
    .line 1156
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1158
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->w:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1159
    if-nez v0, :cond_0

    .line 1161
    const-string v0, "FlurryAgent"

    const-string v1, "onEndSession called without context from corresponding onStartSession"

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->t:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->w:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1166
    const-string v0, "FlurryAgent"

    const-string v1, "Ending session"

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    invoke-direct {p0}, Lcom/flurry/android/FlurryAgent;->m()V

    .line 1170
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 1172
    :goto_0
    if-eqz p1, :cond_1

    .line 1174
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1175
    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->y:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1177
    const-string v2, "FlurryAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEndSession called from different application package, expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/FlurryAgent;->y:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " actual: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1182
    iput-wide v1, p0, Lcom/flurry/android/FlurryAgent;->v:J

    .line 1183
    iget-wide v3, p0, Lcom/flurry/android/FlurryAgent;->I:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/flurry/android/FlurryAgent;->J:J

    .line 1184
    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->D:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "FlurryAgent"

    const-string v2, "Not creating report because of bad Android ID or generated ID is null"

    invoke-static {v1, v2}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v1, Lcom/flurry/android/b;

    invoke-direct {v1, p0, p2, v0}, Lcom/flurry/android/b;-><init>(Lcom/flurry/android/FlurryAgent;ZLandroid/content/Context;)V

    invoke-direct {p0, v1}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/Runnable;)V

    .line 1186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1188
    :cond_3
    monitor-exit p0

    return-void

    .line 1170
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static a(Lcom/flurry/android/AppCircleCallback;)V
    .locals 1

    .prologue
    .line 411
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0, p0}, Lcom/flurry/android/u;->a(Lcom/flurry/android/AppCircleCallback;)V

    .line 412
    return-void
.end method

.method static synthetic a(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/flurry/android/FlurryAgent;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 82
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/flurry/android/FlurryAgent;->d(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->R:Landroid/location/Location;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0}, Lcom/flurry/android/u;->b()V

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/flurry/android/FlurryAgent;->c(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Ljava/io/DataInputStream;)V
    .locals 14

    .prologue
    const/4 v7, 0x0

    .line 1734
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1735
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1736
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1737
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1738
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1739
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1742
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v9

    .line 1743
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1744
    packed-switch v9, :pswitch_data_0

    .line 1845
    :pswitch_0
    const-string v8, "FlurryAgent"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown chunkType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 1849
    :cond_1
    :goto_0
    :pswitch_1
    const/16 v0, 0x108

    if-ne v9, v0, :cond_0

    .line 1851
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-eqz v0, :cond_3

    .line 1853
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1855
    const-string v0, "FlurryAgent"

    const-string v7, "No ads from server"

    invoke-static {v0, v7}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/u;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 1859
    :cond_3
    return-void

    .line 1747
    :pswitch_2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    goto :goto_0

    .line 1751
    :pswitch_3
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    .line 1753
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v10

    .line 1755
    new-array v11, v10, [Lcom/flurry/android/v;

    move v0, v7

    .line 1756
    :goto_1
    if-ge v0, v10, :cond_4

    .line 1758
    new-instance v12, Lcom/flurry/android/v;

    invoke-direct {v12, p1}, Lcom/flurry/android/v;-><init>(Ljava/io/DataInput;)V

    .line 1759
    aput-object v12, v11, v0

    .line 1756
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1762
    :cond_4
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v1, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1765
    :pswitch_4
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    move v0, v7

    .line 1766
    :goto_2
    if-ge v0, v8, :cond_1

    .line 1768
    new-instance v10, Lcom/flurry/android/AdImage;

    invoke-direct {v10, p1}, Lcom/flurry/android/AdImage;-><init>(Ljava/io/DataInput;)V

    .line 1769
    iget-wide v11, v10, Lcom/flurry/android/AdImage;->a:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v4, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1774
    :pswitch_5
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    move v0, v7

    .line 1775
    :goto_3
    if-ge v0, v8, :cond_1

    .line 1777
    new-instance v10, Lcom/flurry/android/e;

    invoke-direct {v10, p1}, Lcom/flurry/android/e;-><init>(Ljava/io/DataInput;)V

    .line 1778
    iget-object v11, v10, Lcom/flurry/android/e;->a:Ljava/lang/String;

    invoke-interface {v2, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1779
    const-string v11, "FlurryAgent"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Parsed hook: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1784
    :pswitch_6
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto/16 :goto_0

    .line 1787
    :pswitch_7
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    move v0, v7

    .line 1788
    :goto_4
    if-ge v0, v8, :cond_1

    .line 1790
    new-instance v10, Lcom/flurry/android/c;

    invoke-direct {v10, p1}, Lcom/flurry/android/c;-><init>(Ljava/io/DataInput;)V

    .line 1791
    iget-byte v11, v10, Lcom/flurry/android/c;->a:B

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-interface {v3, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1788
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1796
    :pswitch_8
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    move v8, v7

    .line 1797
    :goto_5
    if-ge v8, v10, :cond_1

    .line 1799
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 1800
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/c;

    .line 1801
    if-eqz v0, :cond_5

    .line 1803
    invoke-virtual {v0, p1}, Lcom/flurry/android/c;->a(Ljava/io/DataInput;)V

    .line 1797
    :cond_5
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_5

    .line 1809
    :pswitch_9
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    move v0, v7

    .line 1811
    :goto_6
    if-ge v0, v8, :cond_1

    .line 1813
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v10

    .line 1814
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v12

    .line 1815
    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v6, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1811
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1819
    :pswitch_a
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v10

    .line 1821
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/al;

    .line 1822
    if-nez v0, :cond_6

    .line 1824
    new-instance v0, Lcom/flurry/android/al;

    invoke-direct {v0}, Lcom/flurry/android/al;-><init>()V

    .line 1826
    :cond_6
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/flurry/android/al;->a:Ljava/lang/String;

    .line 1827
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, v0, Lcom/flurry/android/al;->c:I

    .line 1828
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1835
    :pswitch_b
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto/16 :goto_0

    .line 1839
    :pswitch_c
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto/16 :goto_0

    .line 1744
    nop

    :pswitch_data_0
    .packed-switch 0x102
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_b
        :pswitch_6
        :pswitch_8
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->q:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1363
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1469
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->W:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1471
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError called before onStartSession.  Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1491
    :goto_0
    monitor-exit p0

    return-void

    .line 1475
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/flurry/android/FlurryAgent;->Q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/android/FlurryAgent;->Q:I

    .line 1476
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->W:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1478
    new-instance v0, Lcom/flurry/android/aa;

    invoke-direct {v0}, Lcom/flurry/android/aa;-><init>()V

    .line 1479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/flurry/android/aa;->a:J

    .line 1480
    const/16 v1, 0xff

    invoke-static {p1, v1}, Lcom/flurry/android/r;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/android/aa;->b:Ljava/lang/String;

    .line 1481
    const/16 v1, 0x200

    invoke-static {p2, v1}, Lcom/flurry/android/r;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/android/aa;->c:Ljava/lang/String;

    .line 1482
    const/16 v1, 0xff

    invoke-static {p3, v1}, Lcom/flurry/android/r;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/android/aa;->d:Ljava/lang/String;

    .line 1483
    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->W:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1485
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error logged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/flurry/android/aa;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1469
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1489
    :cond_1
    :try_start_2
    const-string v0, "FlurryAgent"

    const-string v1, "Max errors logged. No more errors logged."

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 7

    .prologue
    const/16 v6, 0x3e80

    .line 1372
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->T:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1374
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent called before onStartSession.  Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1451
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1378
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/android/FlurryAgent;->I:J

    sub-long v3, v0, v2

    .line 1380
    const/16 v0, 0xff

    invoke-static {p1, v0}, Lcom/flurry/android/r;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1381
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->S:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/g;

    .line 1386
    if-nez v0, :cond_4

    .line 1388
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->S:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v2, 0x64

    if-ge v0, v2, :cond_3

    .line 1390
    new-instance v0, Lcom/flurry/android/g;

    invoke-direct {v0}, Lcom/flurry/android/g;-><init>()V

    .line 1391
    const/4 v2, 0x1

    iput v2, v0, Lcom/flurry/android/g;->a:I

    .line 1392
    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->S:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    const-string v0, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Event count incremented: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    :cond_2
    :goto_1
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->j:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xc8

    if-ge v0, v2, :cond_7

    iget v0, p0, Lcom/flurry/android/FlurryAgent;->V:I

    if-ge v0, v6, :cond_7

    .line 1415
    if-nez p2, :cond_8

    .line 1417
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 1419
    :goto_2
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v5, 0xa

    if-le v0, v5, :cond_5

    .line 1421
    const-string v0, "FlurryAgent"

    invoke-static {v0}, Lcom/flurry/android/ah;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1423
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MaxEventParams exceeded: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1372
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1398
    :cond_3
    :try_start_2
    const-string v0, "FlurryAgent"

    invoke-static {v0}, Lcom/flurry/android/ah;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1400
    const-string v0, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too many different events. Event not counted: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1406
    :cond_4
    iget v2, v0, Lcom/flurry/android/g;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/flurry/android/g;->a:I

    .line 1408
    const-string v0, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Event count incremented: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1428
    :cond_5
    new-instance v0, Lcom/flurry/android/i;

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/i;-><init>(Ljava/lang/String;Ljava/util/Map;JZ)V

    .line 1430
    invoke-virtual {v0}, Lcom/flurry/android/i;->a()[B

    move-result-object v2

    array-length v2, v2

    iget v3, p0, Lcom/flurry/android/FlurryAgent;->V:I

    add-int/2addr v2, v3

    if-gt v2, v6, :cond_6

    .line 1432
    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->T:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1433
    iget v2, p0, Lcom/flurry/android/FlurryAgent;->V:I

    invoke-virtual {v0}, Lcom/flurry/android/i;->a()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/flurry/android/FlurryAgent;->V:I

    .line 1435
    const-string v0, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logged event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1440
    :cond_6
    const/16 v0, 0x3e80

    iput v0, p0, Lcom/flurry/android/FlurryAgent;->V:I

    .line 1441
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->U:Z

    .line 1443
    const-string v0, "FlurryAgent"

    const-string v1, "Event Log size exceeded. No more event details logged."

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1449
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->U:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_8
    move-object v2, p2

    goto/16 :goto_2
.end method

.method static a(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 383
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-nez v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 385
    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0, p0}, Lcom/flurry/android/u;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method static a(Z)V
    .locals 1

    .prologue
    .line 390
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-nez v0, :cond_0

    .line 393
    :goto_0
    return-void

    .line 392
    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0, p0}, Lcom/flurry/android/u;->a(Z)V

    goto :goto_0
.end method

.method static a()Z
    .locals 1

    .prologue
    .line 397
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0}, Lcom/flurry/android/u;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/flurry/android/FlurryAgent;)Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->u:Z

    return v0
.end method

.method private static a(Ljava/io/File;)Z
    .locals 4

    .prologue
    .line 2163
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 2164
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 2165
    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2167
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create persistent dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    const/4 v0, 0x0

    .line 2170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a([B)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1626
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->k()Ljava/lang/String;

    move-result-object v0

    .line 1627
    if-nez v0, :cond_1

    move v0, v1

    .line 1662
    :cond_0
    :goto_0
    return v0

    .line 1634
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/flurry/android/FlurryAgent;->a([BLjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1640
    :goto_1
    if-nez v0, :cond_0

    sget-object v2, Lcom/flurry/android/FlurryAgent;->c:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1644
    sget-boolean v2, Lcom/flurry/android/FlurryAgent;->k:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/flurry/android/FlurryAgent;->l:Z

    if-nez v2, :cond_0

    .line 1646
    sget-object v2, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    monitor-enter v2

    .line 1647
    const/4 v3, 0x1

    :try_start_1
    sput-boolean v3, Lcom/flurry/android/FlurryAgent;->l:Z

    .line 1648
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->k()Ljava/lang/String;

    move-result-object v3

    .line 1649
    if-nez v3, :cond_2

    .line 1651
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    .line 1636
    :catch_0
    move-exception v0

    .line 1638
    const-string v2, "FlurryAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending report exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1

    .line 1653
    :cond_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1656
    :try_start_3
    invoke-direct {p0, p1, v3}, Lcom/flurry/android/FlurryAgent;->a([BLjava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    goto :goto_0

    .line 1653
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private a([BLjava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1668
    const-string v2, "local"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1705
    :goto_0
    return v0

    .line 1673
    :cond_0
    const-string v2, "FlurryAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending report to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v2, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 1676
    const-string v3, "application/octet-stream"

    invoke-virtual {v2, v3}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 1677
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1678
    invoke-virtual {v3, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1680
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1681
    const/16 v4, 0x2710

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1682
    const/16 v4, 0x3a98

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1683
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.protocol.expect-continue"

    invoke-interface {v4, v5, v1}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 1685
    invoke-direct {p0, v2}, Lcom/flurry/android/FlurryAgent;->a(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 1686
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 1687
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 1688
    monitor-enter p0

    .line 1690
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_2

    .line 1692
    :try_start_0
    const-string v1, "FlurryAgent"

    const-string v3, "Report successful"

    invoke-static {v1, v3}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/android/FlurryAgent;->E:Z

    .line 1694
    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/util/List;

    iget-object v3, p0, Lcom/flurry/android/FlurryAgent;->B:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1697
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    const-string v2, "FlurryAgent"

    const-string v3, "Processing report response"

    invoke-static {v2, v3}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v3}, Lcom/flurry/android/FlurryAgent;->a(Ljava/io/DataInputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 1703
    :cond_1
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->B:Ljava/util/List;

    .line 1704
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1697
    :catchall_1
    move-exception v0

    :try_start_3
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v0

    .line 1701
    :cond_2
    const-string v0, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Report failed. HTTP response: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    goto :goto_1
.end method

.method public static addUserCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 416
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-nez v0, :cond_0

    .line 419
    :goto_0
    return-void

    .line 418
    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0, p0, p1}, Lcom/flurry/android/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static b()Lcom/flurry/android/u;
    .locals 1

    .prologue
    .line 1043
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    return-object v0
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2221
    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->D:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 2224
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->D:Ljava/lang/String;

    .line 2260
    :cond_0
    :goto_0
    return-object v0

    .line 2228
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2229
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_1
    if-eqz v1, :cond_5

    .line 2231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2229
    :cond_3
    sget-object v4, Lcom/flurry/android/FlurryAgent;->b:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_4

    aget-object v6, v4, v2

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    .line 2236
    :cond_5
    const-string v1, ".flurryb."

    invoke-virtual {p1, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 2237
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2242
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2243
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2244
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    .line 2245
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 2253
    invoke-static {v2}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 2247
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 2249
    :goto_3
    :try_start_2
    const-string v3, "FlurryAgent"

    const-string v4, "Error when loading b file"

    invoke-static {v3, v4, v1}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2253
    invoke-static {v2}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    invoke-static {v2}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 2247
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method static b(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 366
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 368
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0, p0}, Lcom/flurry/android/u;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 1048
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->x:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->x:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1050
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartSession called with different api keys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->w:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1054
    if-eqz v0, :cond_1

    .line 1056
    const-string v0, "FlurryAgent"

    const-string v1, "onStartSession called with duplicate context, use a specific Activity or Service as context instead of using a global context"

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :cond_1
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->t:Z

    if-nez v0, :cond_8

    .line 1060
    const-string v0, "FlurryAgent"

    const-string v1, "Initializing Flurry session"

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iput-object p2, p0, Lcom/flurry/android/FlurryAgent;->x:Ljava/lang/String;

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".flurryagent."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->x:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->s:Ljava/io/File;

    .line 1064
    const-string v0, ".flurryb."

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->r:Ljava/io/File;

    .line 1065
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->m:Z

    if-eqz v0, :cond_2

    .line 1067
    new-instance v0, Lcom/flurry/android/FlurryAgent$FlurryDefaultExceptionHandler;

    invoke-direct {v0}, Lcom/flurry/android/FlurryAgent$FlurryDefaultExceptionHandler;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 1070
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1072
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->z:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 1074
    invoke-static {v1}, Lcom/flurry/android/FlurryAgent;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->z:Ljava/lang/String;

    .line 1076
    :cond_3
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1077
    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->y:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->y:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1079
    const-string v2, "FlurryAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStartSession called from different application packages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/FlurryAgent;->y:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_4
    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->y:Ljava/lang/String;

    .line 1083
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1084
    iget-wide v4, p0, Lcom/flurry/android/FlurryAgent;->v:J

    sub-long v4, v2, v4

    sget-wide v6, Lcom/flurry/android/FlurryAgent;->i:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_a

    .line 1086
    const-string v0, "FlurryAgent"

    const-string v4, "New session"

    invoke-static {v0, v4}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/flurry/android/FlurryAgent;->H:J

    .line 1090
    iput-wide v2, p0, Lcom/flurry/android/FlurryAgent;->I:J

    .line 1091
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/flurry/android/FlurryAgent;->J:J

    .line 1092
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->N:Ljava/lang/String;

    .line 1093
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/android/FlurryAgent;->Q:I

    .line 1094
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->R:Landroid/location/Location;

    .line 1095
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->L:Ljava/lang/String;

    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->K:Ljava/lang/String;

    .line 1097
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->S:Ljava/util/Map;

    .line 1098
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->T:Ljava/util/List;

    .line 1099
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->U:Z

    .line 1100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->W:Ljava/util/List;

    .line 1101
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/android/FlurryAgent;->V:I

    .line 1102
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/android/FlurryAgent;->X:I

    .line 1106
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-eqz v0, :cond_6

    .line 1108
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0}, Lcom/flurry/android/u;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1110
    const-string v0, "FlurryAgent"

    const-string v2, "Initializing AppCircle"

    invoke-static {v0, v2}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    new-instance v2, Lcom/flurry/android/a;

    invoke-direct {v2}, Lcom/flurry/android/a;-><init>()V

    .line 1113
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->x:Ljava/lang/String;

    iput-object v0, v2, Lcom/flurry/android/a;->a:Ljava/lang/String;

    .line 1114
    iget-wide v3, p0, Lcom/flurry/android/FlurryAgent;->F:J

    iput-wide v3, v2, Lcom/flurry/android/a;->b:J

    .line 1115
    sget-object v0, Lcom/flurry/android/FlurryAgent;->d:Ljava/lang/String;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/flurry/android/FlurryAgent;->d:Ljava/lang/String;

    :goto_0
    iput-object v0, v2, Lcom/flurry/android/a;->c:Ljava/lang/String;

    .line 1116
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/flurry/android/a;->d:Ljava/lang/String;

    .line 1117
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->q:Landroid/os/Handler;

    iput-object v0, v2, Lcom/flurry/android/a;->e:Landroid/os/Handler;

    .line 1119
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0, p1, v2}, Lcom/flurry/android/u;->a(Landroid/content/Context;Lcom/flurry/android/a;)V

    .line 1121
    const-string v0, "FlurryAgent"

    const-string v2, "AppCircle initialized"

    invoke-static {v0, v2}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :cond_5
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    iget-wide v2, p0, Lcom/flurry/android/FlurryAgent;->H:J

    iget-wide v4, p0, Lcom/flurry/android/FlurryAgent;->I:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/flurry/android/u;->a(JJ)V

    .line 1126
    :cond_6
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->A:Z

    .line 1127
    new-instance v2, Lcom/flurry/android/d;

    invoke-direct {v2, p0, v1, v0}, Lcom/flurry/android/d;-><init>(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;Z)V

    invoke-direct {p0, v2}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/Runnable;)V

    .line 1150
    :cond_7
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1152
    :cond_8
    monitor-exit p0

    return-void

    .line 1115
    :cond_9
    :try_start_1
    sget-object v0, Lcom/flurry/android/FlurryAgent;->e:Ljava/lang/String;

    goto :goto_0

    .line 1143
    :cond_a
    const-string v0, "FlurryAgent"

    const-string v1, "Continuing previous session"

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1147
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/util/List;

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1048
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/flurry/android/FlurryAgent;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/flurry/android/FlurryAgent;->i()V

    return-void
.end method

.method static synthetic b(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 82
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/flurry/android/FlurryAgent;->v:J

    sub-long/2addr v1, v3

    iget-boolean v3, p0, Lcom/flurry/android/FlurryAgent;->t:Z

    if-nez v3, :cond_0

    sget-wide v3, Lcom/flurry/android/FlurryAgent;->i:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/flurry/android/FlurryAgent;->c(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private declared-synchronized b(Ljava/io/DataInputStream;)V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 2027
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 2031
    if-le v1, v2, :cond_0

    .line 2033
    const-string v0, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown agent file version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown agent file version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2027
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2037
    :cond_0
    if-lt v1, v2, :cond_4

    .line 2039
    :try_start_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 2040
    const-string v2, "FlurryAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading API key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/FlurryAgent;->x:Ljava/lang/String;

    invoke-static {v4}, Lcom/flurry/android/FlurryAgent;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2044
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 2045
    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->D:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 2047
    const-string v2, "FlurryAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    :cond_1
    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->D:Ljava/lang/String;

    .line 2051
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/flurry/android/FlurryAgent;->E:Z

    .line 2052
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/flurry/android/FlurryAgent;->F:J

    .line 2054
    const-string v1, "FlurryAgent"

    const-string v2, "Loading session reports"

    invoke-static {v1, v2}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    :goto_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 2060
    if-eqz v1, :cond_2

    .line 2062
    new-array v1, v1, [B

    .line 2065
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 2066
    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2068
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session report added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2071
    :cond_2
    const-string v0, "FlurryAgent"

    const-string v1, "Persistent file loaded"

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->u:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2084
    :goto_1
    monitor-exit p0

    return-void

    .line 2077
    :cond_3
    :try_start_2
    const-string v0, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Api keys do not match, old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/flurry/android/FlurryAgent;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->x:Ljava/lang/String;

    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2082
    :cond_4
    const-string v0, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting old file version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized b(Z)[B
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1496
    monitor-enter p0

    .line 1500
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1501
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1504
    const/16 v0, 0xf

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1505
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1507
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1514
    :goto_0
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-eqz v0, :cond_1

    .line 1517
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0}, Lcom/flurry/android/u;->d()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1518
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0}, Lcom/flurry/android/u;->e()Ljava/util/Set;

    move-result-object v0

    .line 1519
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1521
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1523
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1524
    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1574
    :catch_0
    move-exception v0

    .line 1576
    :goto_2
    :try_start_2
    const-string v3, "FlurryAgent"

    const-string v4, "Error when generating report"

    invoke-static {v3, v4, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1580
    :try_start_3
    invoke-static {v2}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v1

    .line 1583
    :goto_3
    monitor-exit p0

    return-object v0

    .line 1511
    :cond_0
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1580
    :catchall_0
    move-exception v0

    :goto_4
    :try_start_5
    invoke-static {v2}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1496
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1529
    :cond_1
    const-wide/16 v5, 0x0

    :try_start_6
    invoke-virtual {v2, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1530
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1533
    :cond_2
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1534
    const/16 v0, 0x79

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1535
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1536
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->x:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1537
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->z:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1539
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1540
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->D:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1542
    iget-wide v5, p0, Lcom/flurry/android/FlurryAgent;->F:J

    invoke-virtual {v2, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1543
    iget-wide v5, p0, Lcom/flurry/android/FlurryAgent;->H:J

    invoke-virtual {v2, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1546
    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1547
    const-string v0, "device.model"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1548
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1549
    const-string v0, "build.brand"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1550
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1551
    const-string v0, "build.id"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1552
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1553
    const-string v0, "version.release"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1554
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1555
    const-string v0, "build.device"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1556
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1557
    const-string v0, "build.product"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1558
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1560
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 1562
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1563
    :goto_5
    if-ge v3, v5, :cond_3

    .line 1565
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1566
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 1563
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    .line 1569
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->B:Ljava/util/List;

    .line 1571
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1572
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    .line 1580
    :try_start_7
    invoke-static {v2}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto/16 :goto_4

    .line 1574
    :catch_1
    move-exception v0

    move-object v2, v1

    goto/16 :goto_2
.end method

.method static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1613
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2284
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2285
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2286
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2288
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 2299
    :goto_0
    return-object v0

    .line 2290
    :cond_0
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eqz v1, :cond_1

    .line 2292
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2295
    :catch_0
    move-exception v0

    .line 2297
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2299
    :cond_1
    const-string v0, "Unknown"

    goto :goto_0
.end method

.method private declared-synchronized c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2191
    monitor-enter p0

    :try_start_0
    const-string v0, ".flurryb."

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->r:Ljava/io/File;

    .line 2192
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->r:Ljava/io/File;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->a(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2193
    if-nez v0, :cond_0

    .line 2213
    :goto_0
    monitor-exit p0

    return-void

    .line 2198
    :cond_0
    const/4 v2, 0x0

    .line 2201
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->r:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2202
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2203
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2204
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2212
    :try_start_3
    invoke-static {v1}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2206
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 2208
    :goto_1
    :try_start_4
    const-string v2, "FlurryAgent"

    const-string v3, "Error when saving b file"

    invoke-static {v2, v3, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2212
    :try_start_5
    invoke-static {v1}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 2206
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic c(Lcom/flurry/android/FlurryAgent;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/flurry/android/FlurryAgent;->l()V

    return-void
.end method

.method private declared-synchronized c(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1456
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/i;

    .line 1458
    invoke-virtual {v0, p1}, Lcom/flurry/android/i;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1460
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/flurry/android/FlurryAgent;->I:J

    sub-long/2addr v1, v3

    .line 1461
    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/i;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1465
    :cond_1
    monitor-exit p0

    return-void

    .line 1456
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Z)V
    .locals 3

    .prologue
    .line 1876
    :try_start_0
    const-string v0, "FlurryAgent"

    const-string v1, "generating report"

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    invoke-direct {p0, p1}, Lcom/flurry/android/FlurryAgent;->b(Z)[B

    move-result-object v0

    .line 1878
    if-eqz v0, :cond_2

    .line 1881
    invoke-direct {p0, v0}, Lcom/flurry/android/FlurryAgent;->a([B)Z

    move-result v0

    .line 1882
    if-eqz v0, :cond_0

    .line 1884
    const-string v1, "FlurryAgent"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Done sending "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->t:Z

    if-eqz v0, :cond_1

    const-string v0, "initial "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "agent report"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    invoke-direct {p0}, Lcom/flurry/android/FlurryAgent;->l()V

    .line 1903
    :cond_0
    :goto_1
    return-void

    .line 1884
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 1892
    :cond_2
    const-string v0, "FlurryAgent"

    const-string v1, "Error generating report"

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1895
    :catch_0
    move-exception v0

    .line 1897
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1899
    :catch_1
    move-exception v0

    .line 1901
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static clearUserCookies()V
    .locals 1

    .prologue
    .line 423
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-nez v0, :cond_0

    .line 426
    :goto_0
    return-void

    .line 425
    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0}, Lcom/flurry/android/u;->k()V

    goto :goto_0
.end method

.method private d(Landroid/content/Context;)Landroid/location/Location;
    .locals 7

    .prologue
    .line 2304
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 2307
    :cond_0
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 2308
    monitor-enter p0

    .line 2310
    :try_start_0
    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->C:Landroid/location/LocationManager;

    if-nez v1, :cond_2

    .line 2312
    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->C:Landroid/location/LocationManager;

    .line 2318
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2319
    sget-object v1, Lcom/flurry/android/FlurryAgent;->n:Landroid/location/Criteria;

    .line 2320
    if-nez v1, :cond_1

    .line 2322
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 2324
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 2325
    if-eqz v1, :cond_3

    .line 2327
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 2328
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 2331
    :goto_1
    return-object v0

    .line 2316
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->C:Landroid/location/LocationManager;

    goto :goto_0

    .line 2318
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2331
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic d(Lcom/flurry/android/FlurryAgent;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->q:Landroid/os/Handler;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2091
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 2093
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2094
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    if-ge v0, v2, :cond_0

    .line 2096
    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2094
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2098
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2099
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2103
    :cond_1
    return-object p0
.end method

.method static d()Z
    .locals 1

    .prologue
    .line 1618
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1620
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0}, Lcom/flurry/android/u;->m()Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/flurry/android/FlurryAgent;)Lcom/flurry/android/u;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    return-object v0
.end method

.method static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2344
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->x:Ljava/lang/String;

    return-object v0
.end method

.method public static enableAppCircle()V
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    .line 312
    return-void
.end method

.method public static endTimedEvent(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 816
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0, p0}, Lcom/flurry/android/FlurryAgent;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    :goto_0
    return-void

    .line 818
    :catch_0
    move-exception v0

    .line 820
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to signify the end of event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic f()Lcom/flurry/android/FlurryAgent;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    return-object v0
.end method

.method static synthetic g()J
    .locals 2

    .prologue
    .line 82
    sget-wide v0, Lcom/flurry/android/FlurryAgent;->i:J

    return-wide v0
.end method

.method public static getAgentVersion()I
    .locals 1

    .prologue
    .line 459
    const/16 v0, 0x79

    return v0
.end method

.method public static getAppCircle()Lcom/flurry/android/AppCircle;
    .locals 1

    .prologue
    .line 321
    sget-object v0, Lcom/flurry/android/FlurryAgent;->p:Lcom/flurry/android/AppCircle;

    return-object v0
.end method

.method public static getForbidPlaintextFallback()Z
    .locals 1

    .prologue
    .line 1016
    const/4 v0, 0x0

    return v0
.end method

.method public static getPhoneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2354
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0}, Lcom/flurry/android/FlurryAgent;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h()Z
    .locals 1

    .prologue
    .line 82
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    return v0
.end method

.method private declared-synchronized i()V
    .locals 6

    .prologue
    .line 1258
    monitor-enter p0

    const/4 v1, 0x0

    .line 1261
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1262
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1264
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1265
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->z:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1266
    iget-wide v0, p0, Lcom/flurry/android/FlurryAgent;->H:J

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1267
    iget-wide v0, p0, Lcom/flurry/android/FlurryAgent;->J:J

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1268
    const-wide/16 v0, 0x0

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1269
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->K:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1270
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->L:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1271
    iget-byte v0, p0, Lcom/flurry/android/FlurryAgent;->M:B

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1272
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->N:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1274
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->R:Landroid/location/Location;

    if-nez v0, :cond_1

    .line 1276
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1286
    :goto_1
    iget v0, p0, Lcom/flurry/android/FlurryAgent;->X:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1287
    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1288
    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1289
    iget-byte v0, p0, Lcom/flurry/android/FlurryAgent;->O:B

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1290
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->P:Ljava/lang/Long;

    if-nez v0, :cond_2

    .line 1292
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1300
    :goto_2
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->S:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1301
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->S:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1303
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1304
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/g;

    iget v0, v0, Lcom/flurry/android/g;->a:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1339
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1341
    :goto_4
    :try_start_2
    const-string v2, "FlurryAgent"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1345
    :try_start_3
    invoke-static {v1}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1346
    :goto_5
    monitor-exit p0

    return-void

    .line 1272
    :cond_0
    :try_start_4
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->N:Ljava/lang/String;

    goto :goto_0

    .line 1280
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1281
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->R:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->a(D)D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 1282
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->R:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->a(D)D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 1283
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->R:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 1345
    :catchall_0
    move-exception v0

    :goto_6
    :try_start_5
    invoke-static {v2}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1258
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1296
    :cond_2
    const/4 v0, 0x1

    :try_start_6
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1297
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->P:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto/16 :goto_2

    .line 1307
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1308
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/i;

    .line 1310
    invoke-virtual {v0}, Lcom/flurry/android/i;->a()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_7

    .line 1312
    :cond_4
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->U:Z

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1314
    iget v0, p0, Lcom/flurry/android/FlurryAgent;->Q:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1315
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->W:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1316
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->W:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/aa;

    .line 1318
    iget-wide v4, v0, Lcom/flurry/android/aa;->a:J

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1319
    iget-object v4, v0, Lcom/flurry/android/aa;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1320
    iget-object v4, v0, Lcom/flurry/android/aa;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1321
    iget-object v0, v0, Lcom/flurry/android/aa;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_8

    .line 1324
    :cond_5
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-eqz v0, :cond_6

    .line 1326
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0}, Lcom/flurry/android/u;->f()Ljava/util/List;

    move-result-object v0

    .line 1327
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1328
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/p;

    .line 1330
    invoke-virtual {v0, v2}, Lcom/flurry/android/p;->a(Ljava/io/DataOutput;)V

    goto :goto_9

    .line 1335
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1337
    :cond_7
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/util/List;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1345
    :try_start_7
    invoke-static {v2}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto/16 :goto_6

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto/16 :goto_6

    .line 1339
    :catch_1
    move-exception v0

    goto/16 :goto_4
.end method

.method protected static isCaptureUncaughtExceptions()Z
    .locals 1

    .prologue
    .line 1032
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->m:Z

    return v0
.end method

.method private declared-synchronized j()V
    .locals 1

    .prologue
    .line 1367
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/flurry/android/FlurryAgent;->X:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/android/FlurryAgent;->X:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1368
    monitor-exit p0

    return-void

    .line 1367
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1587
    sget-object v0, Lcom/flurry/android/FlurryAgent;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1589
    sget-object v0, Lcom/flurry/android/FlurryAgent;->c:Ljava/lang/String;

    .line 1603
    :goto_0
    return-object v0

    .line 1591
    :cond_0
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->l:Z

    if-eqz v0, :cond_1

    .line 1593
    sget-object v0, Lcom/flurry/android/FlurryAgent;->kInsecureReportUrl:Ljava/lang/String;

    goto :goto_0

    .line 1599
    :cond_1
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->k:Z

    if-eqz v0, :cond_2

    .line 1601
    sget-object v0, Lcom/flurry/android/FlurryAgent;->kSecureReportUrl:Ljava/lang/String;

    goto :goto_0

    .line 1603
    :cond_2
    sget-object v0, Lcom/flurry/android/FlurryAgent;->kInsecureReportUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private declared-synchronized l()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2109
    monitor-enter p0

    .line 2113
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->s:Ljava/io/File;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->a(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    .line 2114
    if-nez v0, :cond_0

    .line 2152
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2153
    :goto_0
    monitor-exit p0

    return-void

    .line 2119
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->s:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2120
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2121
    const v0, 0xb5fa

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2122
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2124
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->x:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2125
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->D:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2127
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->E:Z

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2128
    iget-wide v2, p0, Lcom/flurry/android/FlurryAgent;->F:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2132
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_1

    .line 2134
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 2135
    array-length v3, v0

    .line 2136
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->size()I

    move-result v5

    add-int/2addr v4, v5

    const v5, 0xc350

    if-le v4, v5, :cond_2

    .line 2138
    const-string v0, "FlurryAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "discarded sessions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2152
    :try_start_4
    invoke-static {v1}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 2109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2141
    :cond_2
    :try_start_5
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2142
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2132
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 2146
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 2148
    :goto_2
    :try_start_6
    const-string v2, "FlurryAgent"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2152
    :try_start_7
    invoke-static {v1}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 2146
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static logEvent(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 711
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    :goto_0
    return-void

    .line 713
    :catch_0
    move-exception v0

    .line 715
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static logEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4

    .prologue
    .line 747
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    :goto_0
    return-void

    .line 749
    :catch_0
    move-exception v0

    .line 751
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static logEvent(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 4

    .prologue
    .line 797
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0, p0, p1, p2}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    :goto_0
    return-void

    .line 799
    :catch_0
    move-exception v0

    .line 801
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static logEvent(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 771
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    :goto_0
    return-void

    .line 773
    :catch_0
    move-exception v0

    .line 775
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private declared-synchronized m()V
    .locals 1

    .prologue
    .line 2336
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->C:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 2338
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->C:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2340
    :cond_0
    monitor-exit p0

    return-void

    .line 2336
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2349
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->D:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static onEndSession(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 670
    if-nez p0, :cond_0

    .line 672
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_0
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/android/FlurryAgent;->a(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :goto_0
    return-void

    .line 678
    :catch_0
    move-exception v0

    .line 680
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 841
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0, p0, p1, p2}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :goto_0
    return-void

    .line 843
    :catch_0
    move-exception v0

    .line 845
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static onEvent(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 858
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    :goto_0
    return-void

    .line 860
    :catch_0
    move-exception v0

    .line 862
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static onEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 876
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    :goto_0
    return-void

    .line 878
    :catch_0
    move-exception v0

    .line 880
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static onPageView()V
    .locals 3

    .prologue
    .line 896
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0}, Lcom/flurry/android/FlurryAgent;->j()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    :goto_0
    return-void

    .line 898
    :catch_0
    move-exception v0

    .line 900
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static onStartSession(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 621
    if-nez p0, :cond_0

    .line 623
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 627
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Api key not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 632
    :cond_2
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/FlurryAgent;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    :goto_0
    return-void

    .line 634
    :catch_0
    move-exception v0

    .line 636
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setAge(I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 952
    if-lez p0, :cond_0

    const/16 v0, 0x6e

    if-ge p0, v0, :cond_0

    .line 954
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p0

    const-wide v4, 0x7528ad000L

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 955
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v0

    .line 956
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v0, v6, v6}, Ljava/util/Date;-><init>(III)V

    .line 957
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/android/FlurryAgent;->P:Ljava/lang/Long;

    .line 959
    :cond_0
    return-void
.end method

.method public static setCanvasUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 913
    sput-object p0, Lcom/flurry/android/FlurryAgent;->d:Ljava/lang/String;

    .line 914
    return-void
.end method

.method public static setCaptureUncaughtExceptions(Z)V
    .locals 3

    .prologue
    .line 570
    sget-object v1, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    monitor-enter v1

    .line 572
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iget-boolean v0, v0, Lcom/flurry/android/FlurryAgent;->t:Z

    if-eqz v0, :cond_0

    .line 574
    const-string v0, "FlurryAgent"

    const-string v2, "Cannot setCaptureUncaughtExceptions after onSessionStart"

    invoke-static {v0, v2}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    monitor-exit v1

    .line 578
    :goto_0
    return-void

    .line 577
    :cond_0
    sput-boolean p0, Lcom/flurry/android/FlurryAgent;->m:Z

    .line 578
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setCatalogIntentName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 296
    sput-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public static setContinueSessionMillis(J)V
    .locals 3

    .prologue
    .line 529
    const-wide/16 v0, 0x1388

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 531
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid time set for session resumption: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :goto_0
    return-void

    .line 535
    :cond_0
    sget-object v1, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    monitor-enter v1

    .line 537
    :try_start_0
    sput-wide p0, Lcom/flurry/android/FlurryAgent;->i:J

    .line 538
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setDefaultNoAdsMessage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 404
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-nez v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 406
    :cond_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    sput-object p0, Lcom/flurry/android/u;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setGender(B)V
    .locals 2

    .prologue
    .line 968
    packed-switch p0, :pswitch_data_0

    .line 976
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    const/4 v1, -0x1

    iput-byte v1, v0, Lcom/flurry/android/FlurryAgent;->O:B

    .line 978
    :goto_0
    return-void

    .line 972
    :pswitch_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iput-byte p0, v0, Lcom/flurry/android/FlurryAgent;->O:B

    goto :goto_0

    .line 968
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static setGetAppUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 918
    sput-object p0, Lcom/flurry/android/FlurryAgent;->f:Ljava/lang/String;

    .line 919
    return-void
.end method

.method public static setLocationCriteria(Landroid/location/Criteria;)V
    .locals 2

    .prologue
    .line 933
    sget-object v1, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    monitor-enter v1

    .line 935
    :try_start_0
    sput-object p0, Lcom/flurry/android/FlurryAgent;->n:Landroid/location/Criteria;

    .line 936
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setLogEnabled(Z)V
    .locals 2

    .prologue
    .line 483
    sget-object v1, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    monitor-enter v1

    .line 485
    if-eqz p0, :cond_0

    .line 487
    :try_start_0
    invoke-static {}, Lcom/flurry/android/ah;->b()V

    .line 493
    :goto_0
    monitor-exit v1

    return-void

    .line 491
    :cond_0
    invoke-static {}, Lcom/flurry/android/ah;->a()V

    goto :goto_0

    .line 493
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setLogEvents(Z)V
    .locals 2

    .prologue
    .line 547
    sget-object v1, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    monitor-enter v1

    .line 549
    :try_start_0
    sput-boolean p0, Lcom/flurry/android/FlurryAgent;->j:Z

    .line 550
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setLogLevel(I)V
    .locals 2

    .prologue
    .line 502
    sget-object v1, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    monitor-enter v1

    .line 504
    :try_start_0
    invoke-static {p0}, Lcom/flurry/android/ah;->a(I)V

    .line 505
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setReportLocation(Z)V
    .locals 2

    .prologue
    .line 471
    sget-object v1, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    monitor-enter v1

    .line 473
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iput-boolean p0, v0, Lcom/flurry/android/FlurryAgent;->A:Z

    .line 474
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setReportUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 908
    sput-object p0, Lcom/flurry/android/FlurryAgent;->c:Ljava/lang/String;

    .line 909
    return-void
.end method

.method public static setUseHttps(Z)V
    .locals 0

    .prologue
    .line 561
    sput-boolean p0, Lcom/flurry/android/FlurryAgent;->k:Z

    .line 562
    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 989
    sget-object v1, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    monitor-enter v1

    .line 991
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    const/16 v2, 0xff

    invoke-static {p0, v2}, Lcom/flurry/android/r;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/flurry/android/FlurryAgent;->N:Ljava/lang/String;

    .line 992
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setVersionName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 447
    sget-object v1, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    monitor-enter v1

    .line 449
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iput-object p0, v0, Lcom/flurry/android/FlurryAgent;->z:Ljava/lang/String;

    .line 450
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method final a(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 250
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 252
    const-string v0, ""

    .line 253
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 254
    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    .line 256
    const/4 v0, 0x0

    aget-object v0, v1, v0

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    const-string v2, "uncaught"

    invoke-static {v2, v0, v1}, Lcom/flurry/android/FlurryAgent;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->w:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 277
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/FlurryAgent;->a(Landroid/content/Context;Z)V

    .line 278
    return-void

    .line 269
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 271
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final declared-synchronized onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .prologue
    .line 2362
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/flurry/android/FlurryAgent;->R:Landroid/location/Location;

    .line 2363
    invoke-direct {p0}, Lcom/flurry/android/FlurryAgent;->m()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2369
    :goto_0
    monitor-exit p0

    return-void

    .line 2365
    :catch_0
    move-exception v0

    .line 2367
    :try_start_1
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2362
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2375
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2381
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 2387
    return-void
.end method
