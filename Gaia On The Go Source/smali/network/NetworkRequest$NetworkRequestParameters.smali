.class Lnetwork/NetworkRequest$NetworkRequestParameters;
.super Ljava/lang/Object;
.source "NetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnetwork/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkRequestParameters"
.end annotation


# instance fields
.field public bBodyIsText:Ljava/lang/Boolean;

.field public callback:Lnetwork/NetworkRequest$LuaCallback;

.field public isDebug:Ljava/lang/Boolean;

.field public method:Ljava/lang/String;

.field public progressDirection:Lnetwork/NetworkRequest$ProgressDirection;

.field public requestBody:Ljava/lang/Object;

.field public requestHeaders:Ljava/util/Map;
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

.field public requestURL:Ljava/net/URL;

.field public response:Lnetwork/NetworkRequest$CoronaFileSpec;

.field final synthetic this$0:Lnetwork/NetworkRequest;

.field public timeout:I


# direct methods
.method private constructor <init>(Lnetwork/NetworkRequest;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 668
    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestParameters;->this$0:Lnetwork/NetworkRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 670
    iput-object v1, p0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestURL:Ljava/net/URL;

    .line 671
    iput-object v1, p0, Lnetwork/NetworkRequest$NetworkRequestParameters;->method:Ljava/lang/String;

    .line 672
    iput-object v1, p0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestHeaders:Ljava/util/Map;

    .line 673
    iput-object v1, p0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestBody:Ljava/lang/Object;

    .line 674
    sget-object v0, Lnetwork/NetworkRequest$ProgressDirection;->NONE:Lnetwork/NetworkRequest$ProgressDirection;

    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestParameters;->progressDirection:Lnetwork/NetworkRequest$ProgressDirection;

    .line 675
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestParameters;->bBodyIsText:Ljava/lang/Boolean;

    .line 676
    iput-object v1, p0, Lnetwork/NetworkRequest$NetworkRequestParameters;->response:Lnetwork/NetworkRequest$CoronaFileSpec;

    .line 677
    const/16 v0, 0x1e

    iput v0, p0, Lnetwork/NetworkRequest$NetworkRequestParameters;->timeout:I

    .line 678
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestParameters;->isDebug:Ljava/lang/Boolean;

    .line 679
    iput-object v1, p0, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    return-void
.end method

.method synthetic constructor <init>(Lnetwork/NetworkRequest;Lnetwork/NetworkRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lnetwork/NetworkRequest;
    .param p2, "x1"    # Lnetwork/NetworkRequest$1;

    .prologue
    .line 668
    invoke-direct {p0, p1}, Lnetwork/NetworkRequest$NetworkRequestParameters;-><init>(Lnetwork/NetworkRequest;)V

    return-void
.end method


# virtual methods
.method public extractRequestParameters(Lcom/naef/jnlua/LuaState;)Z
    .locals 31
    .param p1, "luaState"    # Lcom/naef/jnlua/LuaState;

    .prologue
    .line 683
    const/4 v8, 0x1

    .line 685
    .local v8, "arg":I
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 689
    .local v17, "isInvalid":Ljava/lang/Boolean;
    sget-object v2, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 691
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v26

    .line 695
    .local v26, "urlString":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    move-object/from16 v0, v26

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestURL:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 709
    .end local v26    # "urlString":Ljava/lang/String;
    :goto_0
    add-int/lit8 v8, v8, 0x1

    .line 713
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 715
    sget-object v2, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v3

    if-ne v2, v3, :cond_5

    .line 717
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->method:Ljava/lang/String;

    .line 718
    move-object/from16 v0, p0

    iget-object v2, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->method:Ljava/lang/String;

    const-string v3, "\\b(GET)|(PUT)|(POST)|(HEAD)|(DELETE)\\b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 720
    const-string v2, "Method argument was invalid, must be one of GET, PUT, POST, HEAD, or DELETE, but was: %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->method:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v3, v29

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 721
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 723
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 733
    :cond_1
    :goto_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 735
    const-string v2, "networkRequest"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v2}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 737
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result v19

    .line 738
    .local v19, "luaFunctionReferenceKey":I
    new-instance v2, Lnetwork/NetworkRequest$LuaCallback;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->this$0:Lnetwork/NetworkRequest;

    move/from16 v0, v19

    invoke-direct {v2, v3, v0}, Lnetwork/NetworkRequest$LuaCallback;-><init>(Lnetwork/NetworkRequest;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    .line 740
    add-int/lit8 v8, v8, 0x1

    .line 746
    .end local v19    # "luaFunctionReferenceKey":I
    :cond_2
    move/from16 v23, v8

    .line 748
    .local v23, "paramsTableStackIndex":I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_18

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/naef/jnlua/LuaState;->isNoneOrNil(I)Z

    move-result v2

    if-nez v2, :cond_18

    .line 750
    sget-object v2, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v3

    if-ne v2, v3, :cond_23

    .line 752
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    .line 754
    .local v28, "wasRequestContentTypePresent":Ljava/lang/Boolean;
    const-string v2, "headers"

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 755
    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->isNil(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 758
    sget-object v2, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v3

    if-ne v2, v3, :cond_a

    .line 760
    invoke-virtual/range {p1 .. p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    :goto_2
    const/4 v2, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->next(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 764
    const/4 v2, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 765
    .local v18, "keyName":Ljava/lang/String;
    if-nez v18, :cond_6

    .line 760
    :cond_3
    :goto_3
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    goto :goto_2

    .line 705
    .end local v18    # "keyName":Ljava/lang/String;
    .end local v23    # "paramsTableStackIndex":I
    .end local v28    # "wasRequestContentTypePresent":Ljava/lang/Boolean;
    :cond_4
    const-string v2, "First argument to network.request() should be a URL string."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 706
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto/16 :goto_0

    .line 727
    :cond_5
    const-string v2, "GET"

    move-object/from16 v0, p0

    iput-object v2, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->method:Ljava/lang/String;

    goto/16 :goto_1

    .line 771
    .restart local v18    # "keyName":Ljava/lang/String;
    .restart local v23    # "paramsTableStackIndex":I
    .restart local v28    # "wasRequestContentTypePresent":Ljava/lang/Boolean;
    :cond_6
    const-string v2, "Content-Length"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 779
    const/16 v27, 0x0

    .line 780
    .local v27, "valueString":Ljava/lang/String;
    sget-object v2, Lnetwork/NetworkRequest$1;->$SwitchMap$com$naef$jnlua$LuaType:[I

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/naef/jnlua/LuaType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 801
    :goto_4
    if-eqz v27, :cond_3

    .line 803
    move-object/from16 v0, p0

    iget-object v2, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestHeaders:Ljava/util/Map;

    if-nez v2, :cond_7

    .line 805
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestHeaders:Ljava/util/Map;

    .line 808
    :cond_7
    const-string v2, "Content-Type"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 810
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    .line 812
    invoke-static/range {v27 .. v27}, Lnetwork/NetworkRequest;->access$300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 813
    .local v13, "ctCharset":Ljava/lang/String;
    if-eqz v13, :cond_8

    .line 817
    :try_start_1
    invoke-static {v13}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 827
    .end local v13    # "ctCharset":Ljava/lang/String;
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestHeaders:Ljava/util/Map;

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    const-string v2, "Header - %s: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v29, 0x0

    aput-object v18, v3, v29

    const/16 v29, 0x1

    aput-object v27, v3, v29

    invoke-static {v2, v3}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 783
    :pswitch_0
    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v27

    .line 784
    goto :goto_4

    .line 786
    :pswitch_1
    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->toNumber(I)D

    move-result-wide v21

    .line 787
    .local v21, "numericValue":D
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    cmpl-double v2, v2, v21

    if-nez v2, :cond_9

    .line 789
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v27

    goto :goto_4

    .line 793
    :cond_9
    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v27

    .line 795
    goto :goto_4

    .line 797
    .end local v21    # "numericValue":D
    :pswitch_2
    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->toBoolean(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v27

    goto :goto_4

    .line 819
    .restart local v13    # "ctCharset":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 821
    .local v14, "e":Ljava/lang/Exception;
    const-string v2, "\'header\' value for Content-Type header contained an unsupported character encoding: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v29, 0x0

    aput-object v13, v3, v29

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 822
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto :goto_5

    .line 834
    .end local v13    # "ctCharset":Ljava/lang/String;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v18    # "keyName":Ljava/lang/String;
    .end local v27    # "valueString":Ljava/lang/String;
    :cond_a
    const-string v2, "\'headers\' value of params table, if provided, should be a table."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 835
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 838
    :cond_b
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestHeaders:Ljava/util/Map;

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->method:Ljava/lang/String;

    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_c

    .line 846
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestHeaders:Ljava/util/Map;

    .line 847
    move-object/from16 v0, p0

    iget-object v2, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestHeaders:Ljava/util/Map;

    const-string v3, "Content-Type"

    const-string v29, "application/x-www-form-urlencoded; charset=UTF-8"

    move-object/from16 v0, v29

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    .line 852
    :cond_c
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->bBodyIsText:Ljava/lang/Boolean;

    .line 853
    const-string v2, "bodyType"

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 854
    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->isNil(I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 857
    sget-object v2, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v3

    if-ne v2, v3, :cond_1a

    .line 859
    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 860
    .local v9, "bodyType":Ljava/lang/String;
    const-string v2, "\\b(text)|(binary)\\b"

    invoke-virtual {v9, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 862
    const-string v2, "\\b(text)\\b"

    invoke-virtual {v9, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->bBodyIsText:Ljava/lang/Boolean;

    .line 863
    const-string v2, "Request body is text: %b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->bBodyIsText:Ljava/lang/Boolean;

    move-object/from16 v30, v0

    aput-object v30, v3, v29

    invoke-static {v2, v3}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 877
    .end local v9    # "bodyType":Ljava/lang/String;
    :cond_d
    :goto_6
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 879
    const-string v2, "body"

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 880
    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->isNil(I)Z

    move-result v2

    if-nez v2, :cond_f

    .line 885
    sget-object v2, Lnetwork/NetworkRequest$1;->$SwitchMap$com$naef$jnlua$LuaType:[I

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/naef/jnlua/LuaType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 966
    :pswitch_3
    const-string v2, "Either body string or table specifying body file is required if \'body\' is specified"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 967
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 971
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestBody:Ljava/lang/Object;

    if-eqz v2, :cond_f

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_f

    .line 973
    const-string v2, "Request Content-Type header is required when request \'body\' is specified"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 974
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 977
    :cond_f
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 979
    const-string v2, "progress"

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 980
    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->isNil(I)Z

    move-result v2

    if-nez v2, :cond_10

    .line 982
    sget-object v2, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v3

    if-ne v2, v3, :cond_1f

    .line 984
    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v25

    .line 986
    .local v25, "progress":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lnetwork/NetworkRequest$ProgressDirection;->fromString(Ljava/lang/String;)Lnetwork/NetworkRequest$ProgressDirection;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->progressDirection:Lnetwork/NetworkRequest$ProgressDirection;

    .line 987
    const-string v2, "Progress was: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->progressDirection:Lnetwork/NetworkRequest$ProgressDirection;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lnetwork/NetworkRequest$ProgressDirection;->toString(Lnetwork/NetworkRequest$ProgressDirection;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v3, v29

    invoke-static {v2, v3}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 989
    move-object/from16 v0, p0

    iget-object v2, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->progressDirection:Lnetwork/NetworkRequest$ProgressDirection;

    if-nez v2, :cond_10

    .line 993
    const-string v2, "\'progress\' value of params table was invalid, if provided, must be either \"upload\" or \"download\", but was: \"%s\""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v29, 0x0

    aput-object v25, v3, v29

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 994
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 1003
    .end local v25    # "progress":Ljava/lang/String;
    :cond_10
    :goto_8
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 1005
    const-string v2, "response"

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 1006
    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->isNil(I)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1009
    sget-object v2, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v3

    if-ne v2, v3, :cond_21

    .line 1013
    const/4 v2, -0x1

    const-string v3, "filename"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 1014
    sget-object v2, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v3

    if-ne v2, v3, :cond_20

    .line 1016
    const/16 v20, 0x1

    .line 1017
    .local v20, "numParams":I
    const/4 v4, 0x0

    .line 1018
    .local v4, "filename":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1021
    .local v5, "baseDirectory":Ljava/lang/Object;
    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1022
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 1024
    const/4 v2, -0x1

    const-string v3, "baseDirectory"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 1025
    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->isNoneOrNil(I)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1027
    const/4 v2, -0x1

    const-class v3, Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 1029
    .end local v5    # "baseDirectory":Ljava/lang/Object;
    :cond_11
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 1032
    const-string v2, "_network_pathForFile"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->getGlobal(Ljava/lang/String;)V

    .line 1033
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 1034
    if-eqz v5, :cond_12

    .line 1036
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    .line 1037
    add-int/lit8 v20, v20, 0x1

    .line 1040
    :cond_12
    const/4 v2, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/naef/jnlua/LuaState;->call(II)V

    .line 1041
    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->toBoolean(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 1042
    .local v7, "isResourceFile":Ljava/lang/Boolean;
    const/4 v2, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 1043
    .local v6, "path":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 1044
    const-string v2, "response filename: %s, baseDirectory: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v29, 0x0

    aput-object v4, v3, v29

    const/16 v29, 0x1

    aput-object v5, v3, v29

    invoke-static {v2, v3}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1045
    const-string v2, "pathForFile from LUA: %s - isResourceFile: %b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v29, 0x0

    aput-object v6, v3, v29

    const/16 v29, 0x1

    aput-object v7, v3, v29

    invoke-static {v2, v3}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1048
    const/16 v16, 0x0

    .line 1050
    .local v16, "isDownloadingToExternalStorage":Z
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    .line 1052
    .local v15, "externalStorageDirectory":Ljava/io/File;
    if-eqz v15, :cond_13

    if-eqz v6, :cond_13

    .line 1053
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v16

    .line 1058
    .end local v15    # "externalStorageDirectory":Ljava/io/File;
    :cond_13
    :goto_9
    if-eqz v16, :cond_14

    .line 1061
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    .line 1062
    .local v12, "context":Landroid/content/Context;
    if-eqz v12, :cond_14

    .line 1063
    const-string v24, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1064
    .local v24, "permissionName":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v12, v0, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    .end local v12    # "context":Landroid/content/Context;
    .end local v24    # "permissionName":Ljava/lang/String;
    :cond_14
    new-instance v2, Lnetwork/NetworkRequest$CoronaFileSpec;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->this$0:Lnetwork/NetworkRequest;

    invoke-direct/range {v2 .. v7}, Lnetwork/NetworkRequest$CoronaFileSpec;-><init>(Lnetwork/NetworkRequest;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Boolean;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->response:Lnetwork/NetworkRequest$CoronaFileSpec;

    .line 1082
    .end local v4    # "filename":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "isResourceFile":Ljava/lang/Boolean;
    .end local v16    # "isDownloadingToExternalStorage":Z
    .end local v20    # "numParams":I
    :cond_15
    :goto_a
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 1084
    const-string v2, "timeout"

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 1085
    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->isNil(I)Z

    move-result v2

    if-nez v2, :cond_16

    .line 1087
    sget-object v2, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v3

    if-ne v2, v3, :cond_22

    .line 1089
    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->toInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->timeout:I

    .line 1090
    const-string v2, "Request timeout provided, was: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->timeout:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v3, v29

    invoke-static {v2, v3}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1098
    :cond_16
    :goto_b
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 1100
    const-string v2, "debug"

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 1101
    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->isNil(I)Z

    move-result v2

    if-nez v2, :cond_17

    .line 1103
    sget-object v2, Lcom/naef/jnlua/LuaType;->BOOLEAN:Lcom/naef/jnlua/LuaType;

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v3

    if-ne v2, v3, :cond_17

    .line 1105
    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->toBoolean(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->isDebug:Ljava/lang/Boolean;

    .line 1106
    const-string v2, "debug setting provided, was: %b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->isDebug:Ljava/lang/Boolean;

    move-object/from16 v30, v0

    aput-object v30, v3, v29

    invoke-static {v2, v3}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1109
    :cond_17
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 1118
    .end local v28    # "wasRequestContentTypePresent":Ljava/lang/Boolean;
    :cond_18
    :goto_c
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_24

    const/4 v2, 0x1

    :goto_d
    return v2

    .line 867
    .restart local v9    # "bodyType":Ljava/lang/String;
    .restart local v28    # "wasRequestContentTypePresent":Ljava/lang/Boolean;
    :cond_19
    const-string v2, "\'bodyType\' value of params table was invalid, must be either \"text\" or \"binary\", but was: \"%s\""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v29, 0x0

    aput-object v9, v3, v29

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 868
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto/16 :goto_6

    .line 873
    .end local v9    # "bodyType":Ljava/lang/String;
    :cond_1a
    const-string v2, "\'bodyType\' value of params table, if provided, should be a string value."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 874
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto/16 :goto_6

    .line 888
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->bBodyIsText:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 890
    const-string v2, "Request body from String (text)"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 891
    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestBody:Ljava/lang/Object;

    .line 893
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_e

    .line 895
    const-string v10, "Content-Type"

    .line 896
    .local v10, "contentKey":Ljava/lang/String;
    const-string v11, "text/plain; charset=UTF-8"

    .line 897
    .local v11, "contentType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestHeaders:Ljava/util/Map;

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    .line 899
    goto/16 :goto_7

    .line 903
    .end local v10    # "contentKey":Ljava/lang/String;
    .end local v11    # "contentType":Ljava/lang/String;
    :cond_1b
    const-string v2, "Request body from String (binary)"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 904
    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->toByteArray(I)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestBody:Ljava/lang/Object;

    .line 906
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_e

    .line 908
    const-string v10, "Content-Type"

    .line 909
    .restart local v10    # "contentKey":Ljava/lang/String;
    const-string v11, "application/octet-stream"

    .line 910
    .restart local v11    # "contentType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestHeaders:Ljava/util/Map;

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    .line 912
    goto/16 :goto_7

    .line 919
    .end local v10    # "contentKey":Ljava/lang/String;
    .end local v11    # "contentType":Ljava/lang/String;
    :pswitch_5
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->bBodyIsText:Ljava/lang/Boolean;

    .line 923
    const/4 v2, -0x1

    const-string v3, "filename"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 924
    sget-object v2, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v3

    if-ne v2, v3, :cond_1e

    .line 926
    const/16 v20, 0x1

    .line 927
    .restart local v20    # "numParams":I
    const/4 v4, 0x0

    .line 928
    .restart local v4    # "filename":Ljava/lang/String;
    const/4 v5, 0x0

    .line 930
    .restart local v5    # "baseDirectory":Ljava/lang/Object;
    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 931
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 933
    const/4 v2, -0x1

    const-string v3, "baseDirectory"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 934
    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->isNoneOrNil(I)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 936
    const/4 v2, -0x1

    const-class v3, Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 938
    .end local v5    # "baseDirectory":Ljava/lang/Object;
    :cond_1c
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 941
    const-string v2, "_network_pathForFile"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->getGlobal(Ljava/lang/String;)V

    .line 942
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 943
    if-eqz v5, :cond_1d

    .line 945
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    .line 946
    add-int/lit8 v20, v20, 0x1

    .line 949
    :cond_1d
    const/4 v2, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/naef/jnlua/LuaState;->call(II)V

    .line 950
    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->toBoolean(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 951
    .restart local v7    # "isResourceFile":Ljava/lang/Boolean;
    const/4 v2, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 952
    .restart local v6    # "path":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 954
    const-string v2, "body filename: %s, baseDirectory: "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v29, 0x0

    aput-object v4, v3, v29

    const/16 v29, 0x1

    aput-object v5, v3, v29

    invoke-static {v2, v3}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 955
    const-string v2, "pathForFile from LUA: %s - isResourceFile: %b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v29, 0x0

    aput-object v6, v3, v29

    const/16 v29, 0x1

    aput-object v7, v3, v29

    invoke-static {v2, v3}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 956
    new-instance v2, Lnetwork/NetworkRequest$CoronaFileSpec;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->this$0:Lnetwork/NetworkRequest;

    invoke-direct/range {v2 .. v7}, Lnetwork/NetworkRequest$CoronaFileSpec;-><init>(Lnetwork/NetworkRequest;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Boolean;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestBody:Ljava/lang/Object;

    goto/16 :goto_7

    .line 960
    .end local v4    # "filename":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "isResourceFile":Ljava/lang/Boolean;
    .end local v20    # "numParams":I
    :cond_1e
    const-string v2, "body \'filename\' value is required and must be a string value."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 961
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 963
    goto/16 :goto_7

    .line 999
    :cond_1f
    const-string v2, "\'progress\' value of params table, if provided, should be a string value."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1000
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto/16 :goto_8

    .line 1072
    :cond_20
    const-string v2, "response \'filename\' value is required and must be a string value."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1073
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto/16 :goto_a

    .line 1078
    :cond_21
    const-string v2, "\'response\' value of params table, if provided, should be a table specifying response location values."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1079
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto/16 :goto_a

    .line 1094
    :cond_22
    const-string v2, "\'timeout\' value of params table, if provided, should be a numeric value."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1095
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto/16 :goto_b

    .line 1113
    .end local v28    # "wasRequestContentTypePresent":Ljava/lang/Boolean;
    :cond_23
    const-string v2, "Fourth argument to network.request(), if provided, should be a params table."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1114
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto/16 :goto_c

    .line 1118
    :cond_24
    const/4 v2, 0x0

    goto/16 :goto_d

    .line 1057
    .restart local v4    # "filename":Ljava/lang/String;
    .restart local v6    # "path":Ljava/lang/String;
    .restart local v7    # "isResourceFile":Ljava/lang/Boolean;
    .restart local v16    # "isDownloadingToExternalStorage":Z
    .restart local v20    # "numParams":I
    .restart local v28    # "wasRequestContentTypePresent":Ljava/lang/Boolean;
    :catch_1
    move-exception v2

    goto/16 :goto_9

    .line 697
    .end local v4    # "filename":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "isResourceFile":Ljava/lang/Boolean;
    .end local v16    # "isDownloadingToExternalStorage":Z
    .end local v20    # "numParams":I
    .end local v23    # "paramsTableStackIndex":I
    .end local v28    # "wasRequestContentTypePresent":Ljava/lang/Boolean;
    .restart local v26    # "urlString":Ljava/lang/String;
    :catch_2
    move-exception v2

    goto/16 :goto_0

    .line 780
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 885
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
