.class Lcom/millennialmedia/android/MMJSResponse;
.super Ljava/lang/Object;
.source "MMJSResponse.java"


# static fields
.field static final ERROR:I = 0x0

.field static final SUCCESS:I = 0x1


# instance fields
.field className:Ljava/lang/String;

.field dataResponse:[B

.field methodName:Ljava/lang/String;

.field response:Ljava/lang/Object;

.field result:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static responseWithError()Lcom/millennialmedia/android/MMJSResponse;
    .locals 1

    .prologue
    .line 49
    const-string v0, "An unknown error occured."

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method static responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .param p0, "error"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v0}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 56
    .local v0, "response":Lcom/millennialmedia/android/MMJSResponse;
    const/4 v1, 0x0

    iput v1, v0, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 57
    iput-object p0, v0, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 58
    return-object v0
.end method

.method static responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;
    .locals 1

    .prologue
    .line 34
    const-string v0, "Success."

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method static responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .param p0, "success"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v0, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v0}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 41
    .local v0, "response":Lcom/millennialmedia/android/MMJSResponse;
    const/4 v1, 0x1

    iput v1, v0, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 42
    iput-object p0, v0, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 43
    return-object v0
.end method


# virtual methods
.method toJSONString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 67
    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/android/MMJSResponse;->className:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/millennialmedia/android/MMJSResponse;->methodName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 68
    :cond_0
    const-string v2, ""

    .line 86
    :goto_0
    return-object v2

    .line 69
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 70
    .local v1, "object":Lorg/json/JSONObject;
    const-string v2, "class"

    iget-object v3, p0, Lcom/millennialmedia/android/MMJSResponse;->className:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v2, "call"

    iget-object v3, p0, Lcom/millennialmedia/android/MMJSResponse;->methodName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v2, "result"

    iget v3, p0, Lcom/millennialmedia/android/MMJSResponse;->result:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    iget-object v2, p0, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 74
    const-string v2, "response"

    iget-object v3, p0, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 75
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/millennialmedia/android/MMJSResponse;->dataResponse:[B

    if-eqz v2, :cond_3

    .line 76
    const-string v2, "response"

    iget-object v3, p0, Lcom/millennialmedia/android/MMJSResponse;->dataResponse:[B

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/millennialmedia/android/Base64;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 81
    .end local v1    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "jsonException":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;)V

    .line 84
    const-string v2, ""

    goto :goto_0

    .line 79
    .end local v0    # "jsonException":Lorg/json/JSONException;
    .restart local v1    # "object":Lorg/json/JSONObject;
    :cond_3
    :try_start_2
    const-string v2, ""
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
