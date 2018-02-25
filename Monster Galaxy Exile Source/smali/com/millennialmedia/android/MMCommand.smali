.class Lcom/millennialmedia/android/MMCommand;
.super Ljava/lang/Object;
.source "MMCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private arguments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private callback:Ljava/lang/String;

.field private cls:Ljava/lang/Class;

.field private method:Ljava/lang/reflect/Method;

.field settings:Lcom/millennialmedia/android/OverlaySettings;

.field private webViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 16
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "uriString"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v12, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/millennialmedia/android/MMCommand;->webViewRef:Ljava/lang/ref/WeakReference;

    .line 42
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 43
    .local v11, "uri":Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v12

    const-string v13, "\\."

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "components":[Ljava/lang/String;
    array-length v12, v3

    const/4 v13, 0x2

    if-ge v12, v13, :cond_0

    .line 73
    .end local v3    # "components":[Ljava/lang/String;
    .end local v11    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 46
    .restart local v3    # "components":[Ljava/lang/String;
    .restart local v11    # "uri":Landroid/net/Uri;
    :cond_0
    array-length v12, v3

    add-int/lit8 v12, v12, -0x2

    aget-object v2, v3, v12

    .line 47
    .local v2, "className":Ljava/lang/String;
    array-length v12, v3

    add-int/lit8 v12, v12, -0x1

    aget-object v7, v3, v12

    .line 50
    .local v7, "methodName":Ljava/lang/String;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/millennialmedia/android/MMCommand;->arguments:Ljava/util/HashMap;

    .line 51
    const/16 v12, 0x3f

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 52
    .local v9, "queryString":Ljava/lang/String;
    const-string v12, "&"

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 53
    move-object v1, v3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v8, v1, v5

    .line 55
    .local v8, "param":Ljava/lang/String;
    const-string v12, "="

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 56
    .local v10, "subComponents":[Ljava/lang/String;
    array-length v12, v10

    const/4 v13, 0x2

    if-lt v12, v13, :cond_1

    .line 58
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/MMCommand;->arguments:Ljava/util/HashMap;

    const/4 v13, 0x0

    aget-object v13, v10, v13

    invoke-static {v13}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v14, v10, v14

    invoke-static {v14}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const/4 v12, 0x0

    aget-object v12, v10, v12

    const-string v13, "callback"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 60
    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-static {v12}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/millennialmedia/android/MMCommand;->callback:Ljava/lang/String;

    .line 53
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 65
    .end local v8    # "param":Ljava/lang/String;
    .end local v10    # "subComponents":[Ljava/lang/String;
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "com.millennialmedia.android."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/millennialmedia/android/MMCommand;->cls:Ljava/lang/Class;

    .line 66
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/MMCommand;->cls:Ljava/lang/Class;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/millennialmedia/android/MMCommand;->arguments:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v12, v7, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 68
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "className":Ljava/lang/String;
    .end local v3    # "components":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "methodName":Ljava/lang/String;
    .end local v9    # "queryString":Ljava/lang/String;
    .end local v11    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 70
    .local v4, "e":Ljava/lang/Exception;
    const-string v12, "Exception while executing javascript call %s %s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p2, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 78
    iget-object v8, p0, Lcom/millennialmedia/android/MMCommand;->cls:Ljava/lang/Class;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;

    if-eqz v8, :cond_4

    .line 86
    :try_start_0
    iget-object v8, p0, Lcom/millennialmedia/android/MMCommand;->webViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/webkit/WebView;

    .line 87
    .local v6, "webView":Landroid/webkit/WebView;
    if-eqz v6, :cond_4

    .line 89
    iget-object v8, p0, Lcom/millennialmedia/android/MMCommand;->cls:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/android/MMJSObject;

    .line 90
    .local v3, "receiver":Lcom/millennialmedia/android/MMJSObject;
    invoke-virtual {v6}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/millennialmedia/android/MMJSObject;->setContext(Landroid/content/Context;)V

    .line 92
    const/4 v6, 0x0

    .line 93
    iget-object v8, p0, Lcom/millennialmedia/android/MMCommand;->settings:Lcom/millennialmedia/android/OverlaySettings;

    if-eqz v8, :cond_0

    .line 95
    iget-object v9, p0, Lcom/millennialmedia/android/MMCommand;->arguments:Ljava/util/HashMap;

    const-string v10, "OVERLAY_type"

    iget-object v8, p0, Lcom/millennialmedia/android/MMCommand;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-boolean v8, v8, Lcom/millennialmedia/android/OverlaySettings;->isBannerAd:Z

    if-eqz v8, :cond_5

    const-string v8, "true"

    :goto_0
    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v8, p0, Lcom/millennialmedia/android/MMCommand;->arguments:Ljava/util/HashMap;

    const-string v9, "OVERLAY_state"

    iget-object v10, p0, Lcom/millennialmedia/android/MMCommand;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-object v10, v10, Lcom/millennialmedia/android/OverlaySettings;->state:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v8, p0, Lcom/millennialmedia/android/MMCommand;->arguments:Ljava/util/HashMap;

    const-string v9, "OVERLAY_adurl"

    iget-object v10, p0, Lcom/millennialmedia/android/MMCommand;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-object v10, v10, Lcom/millennialmedia/android/OverlaySettings;->adUrl:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    :cond_0
    :try_start_1
    iget-object v8, p0, Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/millennialmedia/android/MMCommand;->arguments:Ljava/util/HashMap;

    aput-object v11, v9, v10

    invoke-virtual {v8, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/millennialmedia/android/MMJSResponse;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    .local v4, "response":Lcom/millennialmedia/android/MMJSResponse;
    :goto_1
    :try_start_2
    iget-object v8, p0, Lcom/millennialmedia/android/MMCommand;->callback:Ljava/lang/String;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/millennialmedia/android/MMCommand;->callback:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 113
    iget-object v8, p0, Lcom/millennialmedia/android/MMCommand;->webViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/webkit/WebView;

    .line 114
    .local v7, "webViewCallback":Landroid/webkit/WebView;
    if-eqz v7, :cond_4

    .line 117
    if-nez v4, :cond_1

    .line 118
    iget-object v8, p0, Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v4

    .line 120
    :cond_1
    iget-object v8, v4, Lcom/millennialmedia/android/MMJSResponse;->methodName:Ljava/lang/String;

    if-nez v8, :cond_2

    .line 121
    iget-object v8, p0, Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/millennialmedia/android/MMJSResponse;->methodName:Ljava/lang/String;

    .line 122
    :cond_2
    iget-object v8, v4, Lcom/millennialmedia/android/MMJSResponse;->className:Ljava/lang/String;

    if-nez v8, :cond_3

    .line 123
    iget-object v8, p0, Lcom/millennialmedia/android/MMCommand;->cls:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/millennialmedia/android/MMJSResponse;->className:Ljava/lang/String;

    .line 126
    :cond_3
    const-string v8, "javascript:%s(%s);"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/millennialmedia/android/MMCommand;->callback:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v4}, Lcom/millennialmedia/android/MMJSResponse;->toJSONString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "call":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Executing JS bridge callback: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 128
    new-instance v8, Lcom/millennialmedia/android/MMCommand$1;

    invoke-direct {v8, p0, v7, v0}, Lcom/millennialmedia/android/MMCommand$1;-><init>(Lcom/millennialmedia/android/MMCommand;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/millennialmedia/android/MMAdViewSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 146
    .end local v0    # "call":Ljava/lang/String;
    .end local v3    # "receiver":Lcom/millennialmedia/android/MMJSObject;
    .end local v4    # "response":Lcom/millennialmedia/android/MMJSResponse;
    .end local v6    # "webView":Landroid/webkit/WebView;
    .end local v7    # "webViewCallback":Landroid/webkit/WebView;
    :cond_4
    :goto_2
    return-void

    .line 95
    .restart local v3    # "receiver":Lcom/millennialmedia/android/MMJSObject;
    .restart local v6    # "webView":Landroid/webkit/WebView;
    :cond_5
    const-string v8, "false"

    goto/16 :goto_0

    .line 103
    :catch_0
    move-exception v2

    .line 105
    .local v2, "ite":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    .line 106
    .local v5, "t":Ljava/lang/Throwable;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Landroid/content/ActivityNotFoundException;

    if-ne v8, v9, :cond_6

    .line 107
    const-string v8, "Activity not found"

    invoke-static {v8}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v4

    .restart local v4    # "response":Lcom/millennialmedia/android/MMJSResponse;
    goto/16 :goto_1

    .line 109
    .end local v4    # "response":Lcom/millennialmedia/android/MMJSResponse;
    :cond_6
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError()Lcom/millennialmedia/android/MMJSResponse;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    .restart local v4    # "response":Lcom/millennialmedia/android/MMJSResponse;
    goto/16 :goto_1

    .line 140
    .end local v2    # "ite":Ljava/lang/reflect/InvocationTargetException;
    .end local v3    # "receiver":Lcom/millennialmedia/android/MMJSObject;
    .end local v4    # "response":Lcom/millennialmedia/android/MMJSResponse;
    .end local v5    # "t":Ljava/lang/Throwable;
    .end local v6    # "webView":Landroid/webkit/WebView;
    :catch_1
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "Exception while executing javascript call %s %s"

    new-array v9, v14, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
