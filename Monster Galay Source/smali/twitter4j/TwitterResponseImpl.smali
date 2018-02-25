.class abstract Ltwitter4j/TwitterResponseImpl;
.super Ljava/lang/Object;
.source "TwitterResponseImpl.java"

# interfaces
.implements Ltwitter4j/TwitterResponse;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x65187b8c49dbba7bL


# instance fields
.field private transient accessLevel:I

.field private transient rateLimitStatus:Ltwitter4j/RateLimitStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterResponseImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Ltwitter4j/TwitterResponseImpl;->accessLevel:I

    .line 38
    return-void
.end method

.method public constructor <init>(Ltwitter4j/internal/http/HttpResponse;)V
    .locals 1
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterResponseImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 41
    invoke-static {p1}, Ltwitter4j/RateLimitStatusJSONImpl;->createFromResponseHeader(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/RateLimitStatus;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TwitterResponseImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 42
    invoke-static {p1}, Ltwitter4j/TwitterResponseImpl;->toAccessLevel(Ltwitter4j/internal/http/HttpResponse;)I

    move-result v0

    iput v0, p0, Ltwitter4j/TwitterResponseImpl;->accessLevel:I

    .line 44
    return-void
.end method

.method static toAccessLevel(Ltwitter4j/internal/http/HttpResponse;)I
    .locals 3
    .param p0, "res"    # Ltwitter4j/internal/http/HttpResponse;

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 49
    const/4 v0, -0x1

    .line 79
    :goto_0
    return v0

    .line 51
    :cond_0
    const-string v2, "X-Access-Level"

    invoke-virtual {p0, v2}, Ltwitter4j/internal/http/HttpResponse;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "xAccessLevel":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 54
    const/4 v0, 0x0

    .local v0, "accessLevel":I
    goto :goto_0

    .line 57
    .end local v0    # "accessLevel":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 75
    const/4 v0, 0x0

    .restart local v0    # "accessLevel":I
    goto :goto_0

    .line 60
    .end local v0    # "accessLevel":I
    :sswitch_0
    const/4 v0, 0x1

    .line 61
    .restart local v0    # "accessLevel":I
    goto :goto_0

    .line 64
    .end local v0    # "accessLevel":I
    :sswitch_1
    const/4 v0, 0x2

    .line 65
    .restart local v0    # "accessLevel":I
    goto :goto_0

    .line 68
    .end local v0    # "accessLevel":I
    :sswitch_2
    const/4 v0, 0x3

    .line 69
    .restart local v0    # "accessLevel":I
    goto :goto_0

    .line 72
    .end local v0    # "accessLevel":I
    :sswitch_3
    const/4 v0, 0x3

    .line 73
    .restart local v0    # "accessLevel":I
    goto :goto_0

    .line 57
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xa -> :sswitch_1
        0x19 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public getAccessLevel()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Ltwitter4j/TwitterResponseImpl;->accessLevel:I

    return v0
.end method

.method public getRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Ltwitter4j/TwitterResponseImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    return-object v0
.end method
