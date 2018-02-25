.class public Lcom/sessionm/net/CookieUtils;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sessionm/net/CookieUtils$CookieAttributeAssignor;
    }
.end annotation


# static fields
.field static assignors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sessionm/net/CookieUtils$CookieAttributeAssignor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 113
    const/4 v0, 0x0

    sput-object v0, Lcom/sessionm/net/CookieUtils;->assignors:Ljava/util/Map;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sessionm/net/CookieUtils;->assignors:Ljava/util/Map;

    .line 116
    sget-object v0, Lcom/sessionm/net/CookieUtils;->assignors:Ljava/util/Map;

    const-string v1, "comment"

    new-instance v2, Lcom/sessionm/net/CookieUtils$1;

    invoke-direct {v2}, Lcom/sessionm/net/CookieUtils$1;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/sessionm/net/CookieUtils;->assignors:Ljava/util/Map;

    const-string v1, "domain"

    new-instance v2, Lcom/sessionm/net/CookieUtils$2;

    invoke-direct {v2}, Lcom/sessionm/net/CookieUtils$2;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/sessionm/net/CookieUtils;->assignors:Ljava/util/Map;

    const-string v1, "path"

    new-instance v2, Lcom/sessionm/net/CookieUtils$3;

    invoke-direct {v2}, Lcom/sessionm/net/CookieUtils$3;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/sessionm/net/CookieUtils;->assignors:Ljava/util/Map;

    const-string v1, "secure"

    new-instance v2, Lcom/sessionm/net/CookieUtils$4;

    invoke-direct {v2}, Lcom/sessionm/net/CookieUtils$4;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/sessionm/net/CookieUtils;->assignors:Ljava/util/Map;

    const-string v1, "version"

    new-instance v2, Lcom/sessionm/net/CookieUtils$5;

    invoke-direct {v2}, Lcom/sessionm/net/CookieUtils$5;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/sessionm/net/CookieUtils;->assignors:Ljava/util/Map;

    const-string v1, "expires"

    new-instance v2, Lcom/sessionm/net/CookieUtils$6;

    invoke-direct {v2}, Lcom/sessionm/net/CookieUtils$6;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/sessionm/net/CookieUtils;->assignors:Ljava/util/Map;

    const-string v1, "max-age"

    new-instance v2, Lcom/sessionm/net/CookieUtils$7;

    invoke-direct {v2}, Lcom/sessionm/net/CookieUtils$7;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/sessionm/net/CookieUtils;->assignors:Ljava/util/Map;

    const-string v1, "visitor"

    new-instance v2, Lcom/sessionm/net/CookieUtils$8;

    invoke-direct {v2}, Lcom/sessionm/net/CookieUtils$8;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/sessionm/net/CookieUtils;->assignors:Ljava/util/Map;

    const-string v1, "httponly"

    new-instance v2, Lcom/sessionm/net/CookieUtils$9;

    invoke-direct {v2}, Lcom/sessionm/net/CookieUtils$9;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method

.method private static assignAttribute(Lorg/apache/http/impl/cookie/BasicClientCookie;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 95
    invoke-static {p2}, Lcom/sessionm/net/CookieUtils;->stripOffSurroundingQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    sget-object v0, Lcom/sessionm/net/CookieUtils;->assignors:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sessionm/net/CookieUtils$CookieAttributeAssignor;

    .line 98
    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0, p0, p1, v1}, Lcom/sessionm/net/CookieUtils$CookieAttributeAssignor;->assign(Lorg/apache/http/impl/cookie/BasicClientCookie;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal cookie attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-static {p0}, Lcom/sessionm/net/CookieUtils;->parseInternal(Ljava/lang/String;)Lorg/apache/http/cookie/Cookie;

    move-result-object v1

    move-object v0, v1

    .line 25
    check-cast v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setVersion(I)V

    .line 26
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    return-object v2
.end method

.method private static parseInternal(Ljava/lang/String;)Lorg/apache/http/cookie/Cookie;
    .locals 8

    .prologue
    const/16 v7, 0x3d

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 43
    .line 46
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v0, ";"

    invoke-direct {v2, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :try_start_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 52
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 53
    if-eq v1, v5, :cond_0

    .line 54
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 55
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v4, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-static {v0}, Lcom/sessionm/net/CookieUtils;->stripOffSurroundingQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v3, v0}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 70
    if-eq v3, v5, :cond_1

    .line 71
    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 72
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_1
    invoke-static {v4, v1, v0}, Lcom/sessionm/net/CookieUtils;->assignAttribute(Lorg/apache/http/impl/cookie/BasicClientCookie;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid cookie name-value pair"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty cookie header string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 75
    const/4 v0, 0x0

    goto :goto_1

    .line 81
    :cond_2
    return-object v4
.end method

.method private static stripOffSurroundingQuote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0x22

    .line 85
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_0

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 89
    :cond_0
    return-object p0
.end method
