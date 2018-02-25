.class public Ltwitter4j/TwitterException;
.super Ljava/lang/Exception;
.source "TwitterException.java"

# interfaces
.implements Ltwitter4j/TwitterResponse;
.implements Ltwitter4j/internal/http/HttpResponseCode;


# static fields
.field private static final FILTER:[Ljava/lang/String;

.field private static final serialVersionUID:J = -0x2467dddfd16c8207L


# instance fields
.field private errorMessage:Ljava/lang/String;

.field private exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

.field nested:Z

.field private requestPath:Ljava/lang/String;

.field private response:Ltwitter4j/internal/http/HttpResponse;

.field private statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 217
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "twitter4j"

    aput-object v2, v0, v1

    sput-object v0, Ltwitter4j/TwitterException;->FILTER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 51
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    instance-of v0, p1, Ltwitter4j/TwitterException;

    if-eqz v0, :cond_0

    .line 53
    check-cast p1, Ltwitter4j/TwitterException;

    .end local p1    # "cause":Ljava/lang/Exception;
    invoke-virtual {p1}, Ltwitter4j/TwitterException;->setNested()V

    .line 55
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, p1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Exception;
    .param p3, "statusCode"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    iput p3, p0, Ltwitter4j/TwitterException;->statusCode:I

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    .line 35
    iput-object v1, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    .line 37
    iput-object v1, p0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Ltwitter4j/TwitterException;->requestPath:Ljava/lang/String;

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/TwitterException;->nested:Z

    .line 42
    invoke-direct {p0, p1}, Ltwitter4j/TwitterException;->decode(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "res"    # Ltwitter4j/internal/http/HttpResponse;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;)V

    .line 59
    iput-object p2, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/internal/http/HttpResponse;

    .line 60
    invoke-virtual {p2}, Ltwitter4j/internal/http/HttpResponse;->getStatusCode()I

    move-result v0

    iput v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    .line 61
    return-void
.end method

.method private decode(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 90
    if-eqz p1, :cond_1

    const-string v1, "{"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    .line 96
    :cond_0
    const-string v1, "request"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    const-string v1, "request"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/TwitterException;->requestPath:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v0    # "json":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getCause(Ltwitter4j/internal/http/HttpResponse;)Ljava/lang/String;
    .locals 4
    .param p0, "res"    # Ltwitter4j/internal/http/HttpResponse;

    .prologue
    .line 323
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->getStatusCode()I

    move-result v1

    .line 326
    .local v1, "statusCode":I
    sparse-switch v1, :sswitch_data_0

    .line 371
    const-string v0, ""

    .line 373
    .local v0, "cause":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 328
    .end local v0    # "cause":Ljava/lang/String;
    :sswitch_0
    const-string v0, "There was no new data to return."

    .line 329
    .restart local v0    # "cause":Ljava/lang/String;
    goto :goto_0

    .line 331
    .end local v0    # "cause":Ljava/lang/String;
    :sswitch_1
    const-string v0, "The request was invalid.  An accompanying error message will explain why. This is the status code will be returned during rate limiting."

    .line 332
    .restart local v0    # "cause":Ljava/lang/String;
    goto :goto_0

    .line 334
    .end local v0    # "cause":Ljava/lang/String;
    :sswitch_2
    const-string v0, "Authentication credentials (http://dev.twitter.com/pages/auth) were missing or incorrect. Ensure that you have set valid conumer key/secret, access token/secret, and the system clock in in sync."

    .line 335
    .restart local v0    # "cause":Ljava/lang/String;
    goto :goto_0

    .line 337
    .end local v0    # "cause":Ljava/lang/String;
    :sswitch_3
    const-string v0, "The request is understood, but it has been refused. An accompanying error message will explain why. This code is used when requests are being denied due to update limits (http://support.twitter.com/forums/10711/entries/15364)."

    .line 338
    .restart local v0    # "cause":Ljava/lang/String;
    goto :goto_0

    .line 340
    .end local v0    # "cause":Ljava/lang/String;
    :sswitch_4
    const-string v0, "The URI requested is invalid or the resource requested, such as a user, does not exist."

    .line 341
    .restart local v0    # "cause":Ljava/lang/String;
    goto :goto_0

    .line 343
    .end local v0    # "cause":Ljava/lang/String;
    :sswitch_5
    const-string v0, "Returned by the Search API when an invalid format is specified in the request.\nReturned by the Streaming API when one or more of the parameters are not suitable for the resource. The track parameter, for example, would throw this error if:\n The track keyword is too long or too short.\n The bounding box specified is invalid.\n No predicates defined for filtered resource, for example, neither track nor follow parameter defined.\n Follow userid cannot be read."

    .line 349
    .restart local v0    # "cause":Ljava/lang/String;
    goto :goto_0

    .line 351
    .end local v0    # "cause":Ljava/lang/String;
    :sswitch_6
    const-string v0, "A parameter list is too long. The track parameter, for example, would throw this error if:\n Too many track tokens specified for role; contact API team for increased access.\n Too many bounding boxes specified for role; contact API team for increased access.\n Too many follow userids specified for role; contact API team for increased access."

    .line 355
    .restart local v0    # "cause":Ljava/lang/String;
    goto :goto_0

    .line 357
    .end local v0    # "cause":Ljava/lang/String;
    :sswitch_7
    const-string v0, "Returned by the Search and Trends API when you are being rate limited (http://dev.twitter.com/pages/rate-limiting).\nReturned by the Streaming API:\n Too many login attempts in a short period of time.\n Running too many copies of the same application authenticating with the same account name."

    .line 360
    .restart local v0    # "cause":Ljava/lang/String;
    goto :goto_0

    .line 362
    .end local v0    # "cause":Ljava/lang/String;
    :sswitch_8
    const-string v0, "Something is broken. Please post to the group (http://dev.twitter.com/pages/support) so the Twitter team can investigate."

    .line 363
    .restart local v0    # "cause":Ljava/lang/String;
    goto :goto_0

    .line 365
    .end local v0    # "cause":Ljava/lang/String;
    :sswitch_9
    const-string v0, "Twitter is down or being upgraded."

    .line 366
    .restart local v0    # "cause":Ljava/lang/String;
    goto :goto_0

    .line 368
    .end local v0    # "cause":Ljava/lang/String;
    :sswitch_a
    const-string v0, "The Twitter servers are up, but overloaded with requests. Try again later."

    .line 369
    .restart local v0    # "cause":Ljava/lang/String;
    goto :goto_0

    .line 326
    :sswitch_data_0
    .sparse-switch
        0x130 -> :sswitch_0
        0x190 -> :sswitch_1
        0x191 -> :sswitch_2
        0x193 -> :sswitch_3
        0x194 -> :sswitch_4
        0x196 -> :sswitch_5
        0x19d -> :sswitch_6
        0x1a4 -> :sswitch_7
        0x1f4 -> :sswitch_8
        0x1f6 -> :sswitch_9
        0x1f7 -> :sswitch_a
    .end sparse-switch
.end method

.method private getExceptionDiagnosis()Ltwitter4j/ExceptionDiagnosis;
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ltwitter4j/ExceptionDiagnosis;

    sget-object v1, Ltwitter4j/TwitterException;->FILTER:[Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ltwitter4j/ExceptionDiagnosis;-><init>(Ljava/lang/Throwable;[Ljava/lang/String;)V

    iput-object v0, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    .line 237
    :cond_0
    iget-object v0, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 278
    if-ne p0, p1, :cond_1

    .line 294
    :cond_0
    :goto_0
    return v1

    .line 279
    :cond_1
    instance-of v3, p1, Ltwitter4j/TwitterException;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 281
    check-cast v0, Ltwitter4j/TwitterException;

    .line 283
    .local v0, "that":Ltwitter4j/TwitterException;
    iget-boolean v3, p0, Ltwitter4j/TwitterException;->nested:Z

    iget-boolean v4, v0, Ltwitter4j/TwitterException;->nested:Z

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    .line 284
    :cond_3
    iget v3, p0, Ltwitter4j/TwitterException;->statusCode:I

    iget v4, v0, Ltwitter4j/TwitterException;->statusCode:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 285
    :cond_4
    iget-object v3, p0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_5
    move v1, v2

    .line 286
    goto :goto_0

    .line 285
    :cond_6
    iget-object v3, v0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 287
    :cond_7
    iget-object v3, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    if-eqz v3, :cond_9

    iget-object v3, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    iget-object v4, v0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    invoke-virtual {v3, v4}, Ltwitter4j/ExceptionDiagnosis;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_8
    move v1, v2

    .line 288
    goto :goto_0

    .line 287
    :cond_9
    iget-object v3, v0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    if-nez v3, :cond_8

    .line 289
    :cond_a
    iget-object v3, p0, Ltwitter4j/TwitterException;->requestPath:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Ltwitter4j/TwitterException;->requestPath:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/TwitterException;->requestPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_b
    move v1, v2

    .line 290
    goto :goto_0

    .line 289
    :cond_c
    iget-object v3, v0, Ltwitter4j/TwitterException;->requestPath:Ljava/lang/String;

    if-nez v3, :cond_b

    .line 291
    :cond_d
    iget-object v3, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/internal/http/HttpResponse;

    if-eqz v3, :cond_e

    iget-object v3, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/internal/http/HttpResponse;

    iget-object v4, v0, Ltwitter4j/TwitterException;->response:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 292
    goto :goto_0

    .line 291
    :cond_e
    iget-object v3, v0, Ltwitter4j/TwitterException;->response:Ltwitter4j/internal/http/HttpResponse;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public exceededRateLimitation()Z
    .locals 2

    .prologue
    .line 203
    iget v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ltwitter4j/TwitterException;->getRateLimitStatus()Ltwitter4j/RateLimitStatus;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    const/16 v1, 0x1a4

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccessLevel()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/internal/http/HttpResponse;

    invoke-static {v0}, Ltwitter4j/TwitterResponseImpl;->toAccessLevel(Ltwitter4j/internal/http/HttpResponse;)I

    move-result v0

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    invoke-direct {p0}, Ltwitter4j/TwitterException;->getExceptionDiagnosis()Ltwitter4j/ExceptionDiagnosis;

    move-result-object v0

    invoke-virtual {v0}, Ltwitter4j/ExceptionDiagnosis;->asHexString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFeatureSpecificRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/internal/http/HttpResponse;

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x0

    .line 150
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/internal/http/HttpResponse;

    invoke-static {v0}, Ltwitter4j/RateLimitStatusJSONImpl;->createFeatureSpecificRateLimitStatusFromResponseHeader(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/RateLimitStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    .local v0, "value":Ljava/lang/StringBuffer;
    iget-object v1, p0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltwitter4j/TwitterException;->requestPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 75
    const-string v1, "error - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v1, "request - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterException;->requestPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    :goto_0
    iget-object v1, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/internal/http/HttpResponse;

    if-eqz v1, :cond_1

    .line 83
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/internal/http/HttpResponse;

    invoke-static {v2}, Ltwitter4j/TwitterException;->getCause(Ltwitter4j/internal/http/HttpResponse;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    :goto_1
    return-object v1

    .line 80
    :cond_0
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/internal/http/HttpResponse;

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/internal/http/HttpResponse;

    invoke-static {v0}, Ltwitter4j/RateLimitStatusJSONImpl;->createFromResponseHeader(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/RateLimitStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequestPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Ltwitter4j/TwitterException;->requestPath:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 110
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/internal/http/HttpResponse;

    if-eqz v2, :cond_0

    .line 111
    iget-object v2, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {v2}, Ltwitter4j/internal/http/HttpResponse;->getResponseHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 112
    .local v0, "header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 113
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "value":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 116
    .end local v0    # "header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "value":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getRetryAfter()I
    .locals 5

    .prologue
    .line 167
    const/4 v1, -0x1

    .line 168
    .local v1, "retryAfter":I
    iget v3, p0, Ltwitter4j/TwitterException;->statusCode:I

    const/16 v4, 0x190

    if-ne v3, v4, :cond_1

    .line 169
    invoke-virtual {p0}, Ltwitter4j/TwitterException;->getRateLimitStatus()Ltwitter4j/RateLimitStatus;

    move-result-object v0

    .line 170
    .local v0, "rateLimitStatus":Ltwitter4j/RateLimitStatus;
    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v0}, Ltwitter4j/RateLimitStatus;->getSecondsUntilReset()I

    move-result v1

    .line 182
    .end local v0    # "rateLimitStatus":Ltwitter4j/RateLimitStatus;
    :cond_0
    :goto_0
    return v1

    .line 173
    :cond_1
    iget v3, p0, Ltwitter4j/TwitterException;->statusCode:I

    const/16 v4, 0x1a4

    if-ne v3, v4, :cond_0

    .line 175
    :try_start_0
    iget-object v3, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/internal/http/HttpResponse;

    const-string v4, "Retry-After"

    invoke-virtual {v3, v4}, Ltwitter4j/internal/http/HttpResponse;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "retryAfterStr":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 177
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 179
    .end local v2    # "retryAfterStr":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 299
    iget v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    .line 300
    .local v0, "result":I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    invoke-virtual {v1}, Ltwitter4j/ExceptionDiagnosis;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 301
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/internal/http/HttpResponse;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 302
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int v0, v3, v1

    .line 303
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/TwitterException;->requestPath:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Ltwitter4j/TwitterException;->requestPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int v0, v3, v1

    .line 304
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v3, p0, Ltwitter4j/TwitterException;->nested:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int v0, v1, v2

    .line 305
    return v0

    :cond_1
    move v1, v2

    .line 300
    goto :goto_0

    :cond_2
    move v1, v2

    .line 301
    goto :goto_1

    :cond_3
    move v1, v2

    .line 302
    goto :goto_2

    :cond_4
    move v1, v2

    .line 303
    goto :goto_3
.end method

.method public isCausedByNetworkIssue()Z
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Ltwitter4j/TwitterException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    return v0
.end method

.method public isErrorMessageAvailable()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resourceNotFound()Z
    .locals 2

    .prologue
    .line 214
    iget v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setNested()V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltwitter4j/TwitterException;->nested:Z

    .line 244
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 310
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v0, p0, Ltwitter4j/TwitterException;->nested:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\nTwitterException{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v0, p0, Ltwitter4j/TwitterException;->nested:Z

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/TwitterException;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", retryAfter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ltwitter4j/TwitterException;->getRetryAfter()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", rateLimitStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ltwitter4j/TwitterException;->getRateLimitStatus()Ltwitter4j/RateLimitStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", featureSpecificRateLimitStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ltwitter4j/TwitterException;->getFeatureSpecificRateLimitStatus()Ltwitter4j/RateLimitStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Ltwitter4j/Version;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Relevant discussions can be on the Internet at:\n\thttp://www.google.co.jp/search?q="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0}, Ltwitter4j/TwitterException;->getExceptionDiagnosis()Ltwitter4j/ExceptionDiagnosis;

    move-result-object v2

    invoke-virtual {v2}, Ltwitter4j/ExceptionDiagnosis;->getStackLineHashAsHex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " or\n\thttp://www.google.co.jp/search?q="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0}, Ltwitter4j/TwitterException;->getExceptionDiagnosis()Ltwitter4j/ExceptionDiagnosis;

    move-result-object v2

    invoke-virtual {v2}, Ltwitter4j/ExceptionDiagnosis;->getLineNumberHashAsHex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "exceptionCode=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ltwitter4j/TwitterException;->getExceptionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "], "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method
