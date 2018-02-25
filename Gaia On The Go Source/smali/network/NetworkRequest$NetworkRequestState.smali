.class Lnetwork/NetworkRequest$NetworkRequestState;
.super Ljava/lang/Object;
.source "NetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnetwork/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkRequestState"
.end annotation


# instance fields
.field public bytesEstimated:J

.field public bytesTransferred:J

.field public debugValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isError:Ljava/lang/Boolean;

.field public isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public name:Ljava/lang/String;

.field public phase:Ljava/lang/String;

.field public response:Ljava/lang/Object;

.field public responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public responseType:Ljava/lang/String;

.field public status:I

.field final synthetic this$0:Lnetwork/NetworkRequest;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnetwork/NetworkRequest;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 5
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isDebug"    # Ljava/lang/Boolean;

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 351
    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->this$0:Lnetwork/NetworkRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->isError:Ljava/lang/Boolean;

    .line 338
    const-string v0, "networkRequest"

    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->name:Ljava/lang/String;

    .line 339
    const-string v0, "began"

    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->phase:Ljava/lang/String;

    .line 340
    const/4 v0, -0x1

    iput v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->status:I

    .line 341
    iput-object v1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->url:Ljava/lang/String;

    .line 342
    iput-object v1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->responseHeaders:Ljava/util/Map;

    .line 343
    const-string v0, "text"

    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->responseType:Ljava/lang/String;

    .line 344
    iput-object v1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->response:Ljava/lang/Object;

    .line 345
    iput-object v1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 346
    iput-wide v3, p0, Lnetwork/NetworkRequest$NetworkRequestState;->bytesTransferred:J

    .line 347
    iput-wide v3, p0, Lnetwork/NetworkRequest$NetworkRequestState;->bytesEstimated:J

    .line 348
    iput-object v1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->debugValues:Ljava/util/Map;

    .line 352
    iput-object p2, p0, Lnetwork/NetworkRequest$NetworkRequestState;->url:Ljava/lang/String;

    .line 353
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 355
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->debugValues:Ljava/util/Map;

    .line 358
    iget-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->debugValues:Ljava/util/Map;

    const-string v1, "isDebug"

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_0
    return-void
.end method

.method public constructor <init>(Lnetwork/NetworkRequest;Lnetwork/NetworkRequest$NetworkRequestState;)V
    .locals 4
    .param p2, "baseRequest"    # Lnetwork/NetworkRequest$NetworkRequestState;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 363
    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->this$0:Lnetwork/NetworkRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->isError:Ljava/lang/Boolean;

    .line 338
    const-string v0, "networkRequest"

    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->name:Ljava/lang/String;

    .line 339
    const-string v0, "began"

    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->phase:Ljava/lang/String;

    .line 340
    const/4 v0, -0x1

    iput v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->status:I

    .line 341
    iput-object v1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->url:Ljava/lang/String;

    .line 342
    iput-object v1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->responseHeaders:Ljava/util/Map;

    .line 343
    const-string v0, "text"

    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->responseType:Ljava/lang/String;

    .line 344
    iput-object v1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->response:Ljava/lang/Object;

    .line 345
    iput-object v1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 346
    iput-wide v2, p0, Lnetwork/NetworkRequest$NetworkRequestState;->bytesTransferred:J

    .line 347
    iput-wide v2, p0, Lnetwork/NetworkRequest$NetworkRequestState;->bytesEstimated:J

    .line 348
    iput-object v1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->debugValues:Ljava/util/Map;

    .line 364
    iget-object v0, p2, Lnetwork/NetworkRequest$NetworkRequestState;->isError:Ljava/lang/Boolean;

    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->isError:Ljava/lang/Boolean;

    .line 365
    iget-object v0, p2, Lnetwork/NetworkRequest$NetworkRequestState;->name:Ljava/lang/String;

    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->name:Ljava/lang/String;

    .line 366
    iget-object v0, p2, Lnetwork/NetworkRequest$NetworkRequestState;->phase:Ljava/lang/String;

    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->phase:Ljava/lang/String;

    .line 367
    iget v0, p2, Lnetwork/NetworkRequest$NetworkRequestState;->status:I

    iput v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->status:I

    .line 368
    iget-object v0, p2, Lnetwork/NetworkRequest$NetworkRequestState;->url:Ljava/lang/String;

    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->url:Ljava/lang/String;

    .line 369
    iget-object v0, p2, Lnetwork/NetworkRequest$NetworkRequestState;->responseHeaders:Ljava/util/Map;

    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->responseHeaders:Ljava/util/Map;

    .line 370
    iget-object v0, p2, Lnetwork/NetworkRequest$NetworkRequestState;->responseType:Ljava/lang/String;

    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->responseType:Ljava/lang/String;

    .line 371
    iget-object v0, p2, Lnetwork/NetworkRequest$NetworkRequestState;->response:Ljava/lang/Object;

    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->response:Ljava/lang/Object;

    .line 372
    iget-object v0, p2, Lnetwork/NetworkRequest$NetworkRequestState;->isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 373
    iget-wide v0, p2, Lnetwork/NetworkRequest$NetworkRequestState;->bytesTransferred:J

    iput-wide v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->bytesTransferred:J

    .line 374
    iget-wide v0, p2, Lnetwork/NetworkRequest$NetworkRequestState;->bytesEstimated:J

    iput-wide v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->bytesEstimated:J

    .line 375
    iget-object v0, p2, Lnetwork/NetworkRequest$NetworkRequestState;->debugValues:Ljava/util/Map;

    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->debugValues:Ljava/util/Map;

    .line 376
    return-void
.end method


# virtual methods
.method public push(Lcom/naef/jnlua/LuaState;)I
    .locals 13
    .param p1, "luaState"    # Lcom/naef/jnlua/LuaState;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 388
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v7

    .line 390
    .local v7, "luaTableStackIndex":I
    iget-object v9, p0, Lnetwork/NetworkRequest$NetworkRequestState;->isError:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {p1, v9}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    .line 391
    const-string v9, "isError"

    invoke-virtual {p1, v7, v9}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 393
    iget-object v9, p0, Lnetwork/NetworkRequest$NetworkRequestState;->name:Ljava/lang/String;

    invoke-virtual {p1, v9}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 394
    const-string v9, "name"

    invoke-virtual {p1, v7, v9}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 396
    iget-object v9, p0, Lnetwork/NetworkRequest$NetworkRequestState;->phase:Ljava/lang/String;

    invoke-virtual {p1, v9}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 397
    const-string v9, "phase"

    invoke-virtual {p1, v7, v9}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 399
    iget-object v9, p0, Lnetwork/NetworkRequest$NetworkRequestState;->isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v9}, Lcom/naef/jnlua/LuaState;->pushJavaObjectRaw(Ljava/lang/Object;)V

    .line 400
    const-string v9, "requestId"

    invoke-virtual {p1, v7, v9}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 402
    iget v9, p0, Lnetwork/NetworkRequest$NetworkRequestState;->status:I

    int-to-double v9, v9

    invoke-virtual {p1, v9, v10}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    .line 403
    const-string v9, "status"

    invoke-virtual {p1, v7, v9}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 405
    iget-object v9, p0, Lnetwork/NetworkRequest$NetworkRequestState;->url:Ljava/lang/String;

    invoke-virtual {p1, v9}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 406
    const-string v9, "url"

    invoke-virtual {p1, v7, v9}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 408
    iget-object v9, p0, Lnetwork/NetworkRequest$NetworkRequestState;->responseHeaders:Ljava/util/Map;

    if-eqz v9, :cond_2

    .line 410
    iget-object v9, p0, Lnetwork/NetworkRequest$NetworkRequestState;->responseHeaders:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    invoke-virtual {p1, v11, v9}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 411
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v5

    .line 415
    .local v5, "luaHeaderTableStackIndex":I
    iget-object v9, p0, Lnetwork/NetworkRequest$NetworkRequestState;->responseHeaders:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 417
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 418
    .local v3, "header":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 421
    const-string v3, "HTTP-STATUS-LINE"

    .line 423
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lnetwork/NetworkRequest;->access$000(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 425
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {p1, v8}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p1, v5, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    goto :goto_0

    .line 429
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "header":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_1
    const-string v9, "responseHeaders"

    invoke-virtual {p1, v7, v9}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 432
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "luaHeaderTableStackIndex":I
    :cond_2
    iget-object v9, p0, Lnetwork/NetworkRequest$NetworkRequestState;->response:Ljava/lang/Object;

    if-eqz v9, :cond_4

    .line 434
    iget-object v9, p0, Lnetwork/NetworkRequest$NetworkRequestState;->responseType:Ljava/lang/String;

    invoke-virtual {p1, v9}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 435
    const-string v9, "responseType"

    invoke-virtual {p1, v7, v9}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 439
    iget-object v9, p0, Lnetwork/NetworkRequest$NetworkRequestState;->response:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 441
    iget-object v9, p0, Lnetwork/NetworkRequest$NetworkRequestState;->response:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p1, v9}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 464
    :cond_3
    :goto_1
    const-string v9, "response"

    invoke-virtual {p1, v7, v9}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 467
    :cond_4
    iget-wide v9, p0, Lnetwork/NetworkRequest$NetworkRequestState;->bytesTransferred:J

    long-to-double v9, v9

    invoke-virtual {p1, v9, v10}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    .line 468
    const-string v9, "bytesTransferred"

    invoke-virtual {p1, v7, v9}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 470
    iget-wide v9, p0, Lnetwork/NetworkRequest$NetworkRequestState;->bytesEstimated:J

    long-to-double v9, v9

    invoke-virtual {p1, v9, v10}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    .line 471
    const-string v9, "bytesEstimated"

    invoke-virtual {p1, v7, v9}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 473
    iget-object v9, p0, Lnetwork/NetworkRequest$NetworkRequestState;->debugValues:Ljava/util/Map;

    if-eqz v9, :cond_8

    .line 475
    iget-object v9, p0, Lnetwork/NetworkRequest$NetworkRequestState;->debugValues:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    invoke-virtual {p1, v11, v9}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 476
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v5

    .line 480
    .restart local v5    # "luaHeaderTableStackIndex":I
    iget-object v9, p0, Lnetwork/NetworkRequest$NetworkRequestState;->debugValues:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 482
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 483
    .restart local v3    # "header":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 485
    .restart local v8    # "value":Ljava/lang/String;
    const-string v9, "Writing debug value - %s: %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v3, v10, v11

    aput-object v8, v10, v12

    invoke-static {v9, v10}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    invoke-virtual {p1, v8}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p1, v5, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    goto :goto_2

    .line 443
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "header":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "luaHeaderTableStackIndex":I
    .end local v8    # "value":Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lnetwork/NetworkRequest$NetworkRequestState;->response:Ljava/lang/Object;

    instance-of v9, v9, [B

    if-eqz v9, :cond_6

    .line 445
    iget-object v9, p0, Lnetwork/NetworkRequest$NetworkRequestState;->response:Ljava/lang/Object;

    check-cast v9, [B

    check-cast v9, [B

    invoke-virtual {p1, v9}, Lcom/naef/jnlua/LuaState;->pushString([B)V

    goto :goto_1

    .line 447
    :cond_6
    iget-object v9, p0, Lnetwork/NetworkRequest$NetworkRequestState;->response:Ljava/lang/Object;

    instance-of v9, v9, Lnetwork/NetworkRequest$CoronaFileSpec;

    if-eqz v9, :cond_3

    .line 449
    iget-object v2, p0, Lnetwork/NetworkRequest$NetworkRequestState;->response:Ljava/lang/Object;

    check-cast v2, Lnetwork/NetworkRequest$CoronaFileSpec;

    .line 451
    .local v2, "fileSpec":Lnetwork/NetworkRequest$CoronaFileSpec;
    const/4 v9, 0x3

    invoke-virtual {p1, v11, v9}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 452
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v6

    .line 454
    .local v6, "luaResponseTableStackIndex":I
    iget-object v9, v2, Lnetwork/NetworkRequest$CoronaFileSpec;->filename:Ljava/lang/String;

    invoke-virtual {p1, v9}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 455
    const-string v9, "filename"

    invoke-virtual {p1, v6, v9}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 457
    iget-object v9, v2, Lnetwork/NetworkRequest$CoronaFileSpec;->baseDirectory:Ljava/lang/Object;

    invoke-virtual {p1, v9}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    .line 458
    const-string v9, "baseDirectory"

    invoke-virtual {p1, v6, v9}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 460
    iget-object v9, v2, Lnetwork/NetworkRequest$CoronaFileSpec;->fullPath:Ljava/lang/String;

    invoke-virtual {p1, v9}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 461
    const-string v9, "fullPath"

    invoke-virtual {p1, v6, v9}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 491
    .end local v2    # "fileSpec":Lnetwork/NetworkRequest$CoronaFileSpec;
    .end local v6    # "luaResponseTableStackIndex":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "luaHeaderTableStackIndex":I
    :cond_7
    const-string v9, "debug"

    invoke-virtual {p1, v7, v9}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 494
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "luaHeaderTableStackIndex":I
    :cond_8
    return v12
.end method

.method public setDebugValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 380
    iget-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->debugValues:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->debugValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    :cond_0
    return-void
.end method
