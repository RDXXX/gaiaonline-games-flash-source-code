.class public Lcom/sessionm/net/ListRequestStore;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/sessionm/net/RequestStore;


# instance fields
.field requestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sessionm/net/Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sessionm/net/ListRequestStore;->requestList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/sessionm/net/Request;)V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sessionm/net/ListRequestStore;->requestList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method public insert(Lcom/sessionm/net/Request;I)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sessionm/net/ListRequestStore;->requestList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 32
    return-void
.end method

.method public nextRequest()Lcom/sessionm/net/Request;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sessionm/net/ListRequestStore;->requestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/sessionm/net/ListRequestStore;->requestList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sessionm/net/Request;

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Lcom/sessionm/net/Request;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sessionm/net/ListRequestStore;->requestList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method
