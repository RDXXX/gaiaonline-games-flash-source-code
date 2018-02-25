.class public Lcom/sessionm/integralblue/httpresponsecache/compat/java/io/IOException;
.super Ljava/io/IOException;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method
