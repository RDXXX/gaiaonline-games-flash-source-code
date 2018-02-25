.class Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HeaderParser$CacheControlHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;-><init>(Ljava/net/URI;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;


# direct methods
.method constructor <init>(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders$1;->this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 70
    const-string v0, "no-cache"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders$1;->this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-static {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->access$002(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;Z)Z

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const-string v0, "max-age"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders$1;->this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-static {p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->access$102(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;I)I

    goto :goto_0

    .line 74
    :cond_2
    const-string v0, "max-stale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders$1;->this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-static {p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->access$202(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;I)I

    goto :goto_0

    .line 76
    :cond_3
    const-string v0, "min-fresh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders$1;->this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-static {p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->access$302(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;I)I

    goto :goto_0

    .line 78
    :cond_4
    const-string v0, "only-if-cached"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders$1;->this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-static {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->access$402(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;Z)Z

    goto :goto_0
.end method
