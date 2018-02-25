.class Ltwitter4j/ResponseListImpl;
.super Ljava/util/ArrayList;
.source "ResponseListImpl.java"

# interfaces
.implements Ltwitter4j/ResponseList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;",
        "Ltwitter4j/ResponseList",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4e5cd1029e2727a0L


# instance fields
.field private transient accessLevel:I

.field private transient featureSpecificRateLimitStatus:Ltwitter4j/RateLimitStatus;

.field private transient rateLimitStatus:Ltwitter4j/RateLimitStatus;


# direct methods
.method constructor <init>(ILtwitter4j/internal/http/HttpResponse;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "res"    # Ltwitter4j/internal/http/HttpResponse;

    .prologue
    .local p0, "this":Ltwitter4j/ResponseListImpl;, "Ltwitter4j/ResponseListImpl<TT;>;"
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    iput-object v0, p0, Ltwitter4j/ResponseListImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 29
    iput-object v0, p0, Ltwitter4j/ResponseListImpl;->featureSpecificRateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 35
    invoke-static {p2}, Ltwitter4j/RateLimitStatusJSONImpl;->createFromResponseHeader(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/RateLimitStatus;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/ResponseListImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 36
    invoke-static {p2}, Ltwitter4j/RateLimitStatusJSONImpl;->createFeatureSpecificRateLimitStatusFromResponseHeader(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/RateLimitStatus;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/ResponseListImpl;->featureSpecificRateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 37
    invoke-static {p2}, Ltwitter4j/TwitterResponseImpl;->toAccessLevel(Ltwitter4j/internal/http/HttpResponse;)I

    move-result v0

    iput v0, p0, Ltwitter4j/ResponseListImpl;->accessLevel:I

    .line 38
    return-void
.end method


# virtual methods
.method public getAccessLevel()I
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Ltwitter4j/ResponseListImpl;, "Ltwitter4j/ResponseListImpl<TT;>;"
    iget v0, p0, Ltwitter4j/ResponseListImpl;->accessLevel:I

    return v0
.end method

.method public getFeatureSpecificRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Ltwitter4j/ResponseListImpl;, "Ltwitter4j/ResponseListImpl<TT;>;"
    iget-object v0, p0, Ltwitter4j/ResponseListImpl;->featureSpecificRateLimitStatus:Ltwitter4j/RateLimitStatus;

    return-object v0
.end method

.method public getRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Ltwitter4j/ResponseListImpl;, "Ltwitter4j/ResponseListImpl<TT;>;"
    iget-object v0, p0, Ltwitter4j/ResponseListImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    return-object v0
.end method
