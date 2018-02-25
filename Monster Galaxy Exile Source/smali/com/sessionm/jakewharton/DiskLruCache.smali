.class public final Lcom/sessionm/jakewharton/DiskLruCache;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sessionm/jakewharton/DiskLruCache$Entry;,
        Lcom/sessionm/jakewharton/DiskLruCache$Editor;,
        Lcom/sessionm/jakewharton/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_TMP:Ljava/lang/String; = "journal.tmp"

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final journalFile:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sessionm/jakewharton/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/sessionm/jakewharton/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-wide v4, p0, Lcom/sessionm/jakewharton/DiskLruCache;->size:J

    .line 237
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v3, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 246
    iput-wide v4, p0, Lcom/sessionm/jakewharton/DiskLruCache;->nextSequenceNumber:J

    .line 249
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 251
    new-instance v0, Lcom/sessionm/jakewharton/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/sessionm/jakewharton/DiskLruCache$1;-><init>(Lcom/sessionm/jakewharton/DiskLruCache;)V

    iput-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 268
    iput-object p1, p0, Lcom/sessionm/jakewharton/DiskLruCache;->directory:Ljava/io/File;

    .line 269
    iput p2, p0, Lcom/sessionm/jakewharton/DiskLruCache;->appVersion:I

    .line 270
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->journalFile:Ljava/io/File;

    .line 271
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 272
    iput p3, p0, Lcom/sessionm/jakewharton/DiskLruCache;->valueCount:I

    .line 273
    iput-wide p4, p0, Lcom/sessionm/jakewharton/DiskLruCache;->maxSize:J

    .line 274
    return-void
.end method

.method static synthetic access$000(Lcom/sessionm/jakewharton/DiskLruCache;)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sessionm/jakewharton/DiskLruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/sessionm/jakewharton/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sessionm/jakewharton/DiskLruCache;Ljava/lang/String;J)Lcom/sessionm/jakewharton/DiskLruCache$Editor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/sessionm/jakewharton/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/sessionm/jakewharton/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {p0}, Lcom/sessionm/jakewharton/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Ljava/io/Closeable;)V
    .locals 0

    .prologue
    .line 93
    invoke-static {p0}, Lcom/sessionm/jakewharton/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method static synthetic access$1900()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/sessionm/jakewharton/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sessionm/jakewharton/DiskLruCache;)Z
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/sessionm/jakewharton/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/sessionm/jakewharton/DiskLruCache;Lcom/sessionm/jakewharton/DiskLruCache$Editor;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/sessionm/jakewharton/DiskLruCache;->completeEdit(Lcom/sessionm/jakewharton/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sessionm/jakewharton/DiskLruCache;)I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$2300(Lcom/sessionm/jakewharton/DiskLruCache;)Ljava/io/File;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sessionm/jakewharton/DiskLruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/sessionm/jakewharton/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$402(Lcom/sessionm/jakewharton/DiskLruCache;I)I
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/sessionm/jakewharton/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method private checkNotClosed()V
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 646
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_0
    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 142
    if-eqz p0, :cond_0

    .line 144
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    throw v0

    .line 147
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized completeEdit(Lcom/sessionm/jakewharton/DiskLruCache$Editor;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 544
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->access$1400(Lcom/sessionm/jakewharton/DiskLruCache$Editor;)Lcom/sessionm/jakewharton/DiskLruCache$Entry;

    move-result-object v2

    .line 545
    invoke-static {v2}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$700(Lcom/sessionm/jakewharton/DiskLruCache$Entry;)Lcom/sessionm/jakewharton/DiskLruCache$Editor;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 546
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 550
    :cond_0
    if-eqz p2, :cond_2

    :try_start_1
    invoke-static {v2}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$600(Lcom/sessionm/jakewharton/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v0

    .line 551
    :goto_0
    iget v3, p0, Lcom/sessionm/jakewharton/DiskLruCache;->valueCount:I

    if-ge v1, v3, :cond_2

    .line 552
    invoke-virtual {v2, v1}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 553
    invoke-virtual {p1}, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->abort()V

    .line 554
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "edit didn\'t create file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 559
    :cond_2
    :goto_1
    iget v1, p0, Lcom/sessionm/jakewharton/DiskLruCache;->valueCount:I

    if-ge v0, v1, :cond_5

    .line 560
    invoke-virtual {v2, v0}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v1

    .line 561
    if-eqz p2, :cond_4

    .line 562
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 563
    invoke-virtual {v2, v0}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    .line 564
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 565
    invoke-static {v2}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$1000(Lcom/sessionm/jakewharton/DiskLruCache$Entry;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    .line 566
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 567
    invoke-static {v2}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$1000(Lcom/sessionm/jakewharton/DiskLruCache$Entry;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    .line 568
    iget-wide v8, p0, Lcom/sessionm/jakewharton/DiskLruCache;->size:J

    sub-long v3, v8, v4

    add-long/2addr v3, v6

    iput-wide v3, p0, Lcom/sessionm/jakewharton/DiskLruCache;->size:J

    .line 559
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 571
    :cond_4
    invoke-static {v1}, Lcom/sessionm/jakewharton/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_2

    .line 575
    :cond_5
    iget v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->redundantOpCount:I

    .line 576
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$702(Lcom/sessionm/jakewharton/DiskLruCache$Entry;Lcom/sessionm/jakewharton/DiskLruCache$Editor;)Lcom/sessionm/jakewharton/DiskLruCache$Editor;

    .line 577
    invoke-static {v2}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$600(Lcom/sessionm/jakewharton/DiskLruCache$Entry;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_9

    .line 578
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$602(Lcom/sessionm/jakewharton/DiskLruCache$Entry;Z)Z

    .line 579
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLEAN "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$1100(Lcom/sessionm/jakewharton/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 580
    if-eqz p2, :cond_6

    .line 581
    iget-wide v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/sessionm/jakewharton/DiskLruCache;->nextSequenceNumber:J

    invoke-static {v2, v0, v1}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$1202(Lcom/sessionm/jakewharton/DiskLruCache$Entry;J)J

    .line 588
    :cond_6
    :goto_3
    iget-wide v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->size:J

    iget-wide v2, p0, Lcom/sessionm/jakewharton/DiskLruCache;->maxSize:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_7

    invoke-direct {p0}, Lcom/sessionm/jakewharton/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 589
    :cond_7
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/sessionm/jakewharton/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 591
    :cond_8
    monitor-exit p0

    return-void

    .line 584
    :cond_9
    :try_start_2
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$1100(Lcom/sessionm/jakewharton/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REMOVE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$1100(Lcom/sessionm/jakewharton/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .prologue
    .line 107
    array-length v0, p0

    .line 108
    if-le p1, p2, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 111
    :cond_0
    if-ltz p1, :cond_1

    if-le p1, v0, :cond_2

    .line 112
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 114
    :cond_2
    sub-int v1, p2, p1

    .line 115
    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 117
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    return-object v0
.end method

.method private static deleteContents(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 127
    if-nez v1, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 131
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    invoke-static {v3}, Lcom/sessionm/jakewharton/DiskLruCache;->deleteContents(Ljava/io/File;)V

    .line 134
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 135
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to delete file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_3
    return-void
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 444
    :cond_0
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/sessionm/jakewharton/DiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 496
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sessionm/jakewharton/DiskLruCache;->checkNotClosed()V

    .line 497
    invoke-direct {p0, p1}, Lcom/sessionm/jakewharton/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sessionm/jakewharton/DiskLruCache$Entry;

    .line 499
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$1200(Lcom/sessionm/jakewharton/DiskLruCache$Entry;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 516
    :goto_0
    monitor-exit p0

    return-object v0

    .line 503
    :cond_1
    if-nez v0, :cond_2

    .line 504
    :try_start_1
    new-instance v0, Lcom/sessionm/jakewharton/DiskLruCache$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;-><init>(Lcom/sessionm/jakewharton/DiskLruCache;Ljava/lang/String;Lcom/sessionm/jakewharton/DiskLruCache$1;)V

    .line 505
    iget-object v1, p0, Lcom/sessionm/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 510
    :goto_1
    new-instance v0, Lcom/sessionm/jakewharton/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sessionm/jakewharton/DiskLruCache$Editor;-><init>(Lcom/sessionm/jakewharton/DiskLruCache;Lcom/sessionm/jakewharton/DiskLruCache$Entry;Lcom/sessionm/jakewharton/DiskLruCache$1;)V

    .line 511
    invoke-static {v1, v0}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$702(Lcom/sessionm/jakewharton/DiskLruCache$Entry;Lcom/sessionm/jakewharton/DiskLruCache$Editor;)Lcom/sessionm/jakewharton/DiskLruCache$Editor;

    .line 514
    iget-object v1, p0, Lcom/sessionm/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DIRTY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 515
    iget-object v1, p0, Lcom/sessionm/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 506
    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$700(Lcom/sessionm/jakewharton/DiskLruCache$Entry;)Lcom/sessionm/jakewharton/DiskLruCache$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 507
    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 701
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/sessionm/jakewharton/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/sessionm/jakewharton/DiskLruCache;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .locals 2

    .prologue
    .line 598
    .line 599
    iget v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->redundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->redundantOpCount:I

    iget-object v1, p0, Lcom/sessionm/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/sessionm/jakewharton/DiskLruCache;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_0
    if-gtz p2, :cond_1

    .line 292
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_1
    new-instance v0, Lcom/sessionm/jakewharton/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sessionm/jakewharton/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 297
    iget-object v1, v0, Lcom/sessionm/jakewharton/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 299
    :try_start_0
    invoke-direct {v0}, Lcom/sessionm/jakewharton/DiskLruCache;->readJournal()V

    .line 300
    invoke-direct {v0}, Lcom/sessionm/jakewharton/DiskLruCache;->processJournal()V

    .line 301
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, v0, Lcom/sessionm/jakewharton/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/sessionm/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    return-object v0

    .line 303
    :catch_0
    move-exception v1

    .line 304
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", removing"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0}, Lcom/sessionm/jakewharton/DiskLruCache;->delete()V

    .line 311
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 312
    new-instance v0, Lcom/sessionm/jakewharton/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sessionm/jakewharton/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 313
    invoke-direct {v0}, Lcom/sessionm/jakewharton/DiskLruCache;->rebuildJournal()V

    goto :goto_0
.end method

.method private processJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 382
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v0}, Lcom/sessionm/jakewharton/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 383
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 384
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sessionm/jakewharton/DiskLruCache$Entry;

    .line 385
    invoke-static {v0}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$700(Lcom/sessionm/jakewharton/DiskLruCache$Entry;)Lcom/sessionm/jakewharton/DiskLruCache$Editor;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    .line 386
    :goto_1
    iget v4, p0, Lcom/sessionm/jakewharton/DiskLruCache;->valueCount:I

    if-ge v1, v4, :cond_0

    .line 387
    iget-wide v4, p0, Lcom/sessionm/jakewharton/DiskLruCache;->size:J

    invoke-static {v0}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$1000(Lcom/sessionm/jakewharton/DiskLruCache$Entry;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/sessionm/jakewharton/DiskLruCache;->size:J

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 390
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$702(Lcom/sessionm/jakewharton/DiskLruCache$Entry;Lcom/sessionm/jakewharton/DiskLruCache$Editor;)Lcom/sessionm/jakewharton/DiskLruCache$Editor;

    move v1, v2

    .line 391
    :goto_2
    iget v4, p0, Lcom/sessionm/jakewharton/DiskLruCache;->valueCount:I

    if-ge v1, v4, :cond_2

    .line 392
    invoke-virtual {v0, v1}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/sessionm/jakewharton/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 393
    invoke-virtual {v0, v1}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/sessionm/jakewharton/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 391
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 395
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 398
    :cond_3
    return-void
.end method

.method private static readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 173
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 174
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 175
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 176
    :cond_0
    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 183
    if-lez v1, :cond_1

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 184
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 186
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 180
    :cond_2
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static readFully(Ljava/io/Reader;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 156
    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 158
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 159
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/StringWriter;->write([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    throw v0

    .line 161
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 163
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-object v0
.end method

.method private readJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/sessionm/jakewharton/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 320
    :try_start_0
    invoke-static {v1}, Lcom/sessionm/jakewharton/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-static {v1}, Lcom/sessionm/jakewharton/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 322
    invoke-static {v1}, Lcom/sessionm/jakewharton/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 323
    invoke-static {v1}, Lcom/sessionm/jakewharton/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 324
    invoke-static {v1}, Lcom/sessionm/jakewharton/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 325
    const-string v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/sessionm/jakewharton/DiskLruCache;->appVersion:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sessionm/jakewharton/DiskLruCache;->valueCount:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 330
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected journal header: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/sessionm/jakewharton/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 336
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {v1}, Lcom/sessionm/jakewharton/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sessionm/jakewharton/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 342
    invoke-static {v1}, Lcom/sessionm/jakewharton/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 344
    return-void
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 347
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 348
    array-length v0, v2

    if-ge v0, v4, :cond_0

    .line 349
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_0
    aget-object v1, v2, v7

    .line 353
    aget-object v0, v2, v5

    const-string v3, "REMOVE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    array-length v0, v2

    if-ne v0, v4, :cond_2

    .line 354
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_1
    :goto_0
    return-void

    .line 358
    :cond_2
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sessionm/jakewharton/DiskLruCache$Entry;

    .line 359
    if-nez v0, :cond_6

    .line 360
    new-instance v0, Lcom/sessionm/jakewharton/DiskLruCache$Entry;

    invoke-direct {v0, p0, v1, v6}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;-><init>(Lcom/sessionm/jakewharton/DiskLruCache;Ljava/lang/String;Lcom/sessionm/jakewharton/DiskLruCache$1;)V

    .line 361
    iget-object v3, p0, Lcom/sessionm/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 364
    :goto_1
    aget-object v0, v2, v5

    const-string v3, "CLEAN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    array-length v0, v2

    iget v3, p0, Lcom/sessionm/jakewharton/DiskLruCache;->valueCount:I

    add-int/lit8 v3, v3, 0x2

    if-ne v0, v3, :cond_3

    .line 365
    invoke-static {v1, v7}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$602(Lcom/sessionm/jakewharton/DiskLruCache$Entry;Z)Z

    .line 366
    invoke-static {v1, v6}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$702(Lcom/sessionm/jakewharton/DiskLruCache$Entry;Lcom/sessionm/jakewharton/DiskLruCache$Editor;)Lcom/sessionm/jakewharton/DiskLruCache$Editor;

    .line 367
    array-length v0, v2

    invoke-static {v2, v4, v0}, Lcom/sessionm/jakewharton/DiskLruCache;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$800(Lcom/sessionm/jakewharton/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_3
    aget-object v0, v2, v5

    const-string v3, "DIRTY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    array-length v0, v2

    if-ne v0, v4, :cond_4

    .line 369
    new-instance v0, Lcom/sessionm/jakewharton/DiskLruCache$Editor;

    invoke-direct {v0, p0, v1, v6}, Lcom/sessionm/jakewharton/DiskLruCache$Editor;-><init>(Lcom/sessionm/jakewharton/DiskLruCache;Lcom/sessionm/jakewharton/DiskLruCache$Entry;Lcom/sessionm/jakewharton/DiskLruCache$1;)V

    invoke-static {v1, v0}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$702(Lcom/sessionm/jakewharton/DiskLruCache$Entry;Lcom/sessionm/jakewharton/DiskLruCache$Editor;)Lcom/sessionm/jakewharton/DiskLruCache$Editor;

    goto :goto_0

    .line 370
    :cond_4
    aget-object v0, v2, v5

    const-string v1, "READ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    array-length v0, v2

    if-eq v0, v4, :cond_1

    .line 373
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 409
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/sessionm/jakewharton/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 410
    const-string v0, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 411
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 412
    const-string v0, "1"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 413
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 414
    iget v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->appVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 415
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 416
    iget v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->valueCount:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 417
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 418
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sessionm/jakewharton/DiskLruCache$Entry;

    .line 421
    invoke-static {v0}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$700(Lcom/sessionm/jakewharton/DiskLruCache$Entry;)Lcom/sessionm/jakewharton/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$1100(Lcom/sessionm/jakewharton/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 424
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$1100(Lcom/sessionm/jakewharton/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 428
    :cond_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 429
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v1, p0, Lcom/sessionm/jakewharton/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 430
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/sessionm/jakewharton/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    monitor-exit p0

    return-void
.end method

.method private trimToSize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 677
    :goto_0
    iget-wide v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->size:J

    iget-wide v2, p0, Lcom/sessionm/jakewharton/DiskLruCache;->maxSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 679
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sessionm/jakewharton/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 681
    :cond_0
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 694
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must not contain spaces or newlines: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 663
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 674
    :goto_0
    monitor-exit p0

    return-void

    .line 666
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sessionm/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sessionm/jakewharton/DiskLruCache$Entry;

    .line 667
    invoke-static {v0}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$700(Lcom/sessionm/jakewharton/DiskLruCache$Entry;)Lcom/sessionm/jakewharton/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 668
    invoke-static {v0}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$700(Lcom/sessionm/jakewharton/DiskLruCache$Entry;)Lcom/sessionm/jakewharton/DiskLruCache$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 663
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 671
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/sessionm/jakewharton/DiskLruCache;->trimToSize()V

    .line 672
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 673
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/sessionm/jakewharton/DiskLruCache;->close()V

    .line 690
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/sessionm/jakewharton/DiskLruCache;->deleteContents(Ljava/io/File;)V

    .line 691
    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/sessionm/jakewharton/DiskLruCache$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 492
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sessionm/jakewharton/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/sessionm/jakewharton/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 654
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sessionm/jakewharton/DiskLruCache;->checkNotClosed()V

    .line 655
    invoke-direct {p0}, Lcom/sessionm/jakewharton/DiskLruCache;->trimToSize()V

    .line 656
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    monitor-exit p0

    return-void

    .line 654
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/sessionm/jakewharton/DiskLruCache$Snapshot;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 452
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sessionm/jakewharton/DiskLruCache;->checkNotClosed()V

    .line 453
    invoke-direct {p0, p1}, Lcom/sessionm/jakewharton/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 454
    iget-object v1, p0, Lcom/sessionm/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sessionm/jakewharton/DiskLruCache$Entry;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    if-nez v2, :cond_0

    move-object v1, v3

    .line 484
    :goto_0
    monitor-exit p0

    return-object v1

    .line 459
    :cond_0
    :try_start_1
    invoke-static {v2}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$600(Lcom/sessionm/jakewharton/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v3

    .line 460
    goto :goto_0

    .line 468
    :cond_1
    iget v1, p0, Lcom/sessionm/jakewharton/DiskLruCache;->valueCount:I

    new-array v6, v1, [Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    const/4 v1, 0x0

    :goto_1
    :try_start_2
    iget v4, p0, Lcom/sessionm/jakewharton/DiskLruCache;->valueCount:I

    if-ge v1, v4, :cond_2

    .line 471
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v2, v1}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v4, v6, v1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 470
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 473
    :catch_0
    move-exception v1

    move-object v1, v3

    .line 475
    goto :goto_0

    .line 478
    :cond_2
    :try_start_3
    iget v1, p0, Lcom/sessionm/jakewharton/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sessionm/jakewharton/DiskLruCache;->redundantOpCount:I

    .line 479
    iget-object v1, p0, Lcom/sessionm/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "READ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 480
    invoke-direct {p0}, Lcom/sessionm/jakewharton/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 481
    iget-object v1, p0, Lcom/sessionm/jakewharton/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/sessionm/jakewharton/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 484
    :cond_3
    new-instance v1, Lcom/sessionm/jakewharton/DiskLruCache$Snapshot;

    invoke-static {v2}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$1200(Lcom/sessionm/jakewharton/DiskLruCache$Entry;)J

    move-result-wide v4

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/sessionm/jakewharton/DiskLruCache$Snapshot;-><init>(Lcom/sessionm/jakewharton/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/sessionm/jakewharton/DiskLruCache$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 452
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maxSize()J
    .locals 2

    .prologue
    .line 531
    iget-wide v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->maxSize:J

    return-wide v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 610
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sessionm/jakewharton/DiskLruCache;->checkNotClosed()V

    .line 611
    invoke-direct {p0, p1}, Lcom/sessionm/jakewharton/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sessionm/jakewharton/DiskLruCache$Entry;

    .line 613
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$700(Lcom/sessionm/jakewharton/DiskLruCache$Entry;)Lcom/sessionm/jakewharton/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 634
    :goto_0
    monitor-exit p0

    return v0

    .line 622
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/sessionm/jakewharton/DiskLruCache;->size:J

    invoke-static {v0}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$1000(Lcom/sessionm/jakewharton/DiskLruCache$Entry;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sessionm/jakewharton/DiskLruCache;->size:J

    .line 623
    invoke-static {v0}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$1000(Lcom/sessionm/jakewharton/DiskLruCache$Entry;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    .line 617
    add-int/lit8 v1, v1, 0x1

    :cond_2
    iget v2, p0, Lcom/sessionm/jakewharton/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_3

    .line 618
    invoke-virtual {v0, v1}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    .line 619
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 620
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to delete "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 626
    :cond_3
    :try_start_2
    iget v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->redundantOpCount:I

    .line 627
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REMOVE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 628
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    invoke-direct {p0}, Lcom/sessionm/jakewharton/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 631
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/sessionm/jakewharton/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 634
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized size()J
    .locals 2

    .prologue
    .line 540
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sessionm/jakewharton/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
