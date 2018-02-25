.class public Lnetwork/NetworkRequest;
.super Ljava/lang/Object;
.source "NetworkRequest.java"

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnetwork/NetworkRequest$1;,
        Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;,
        Lnetwork/NetworkRequest$NetworkRequestParameters;,
        Lnetwork/NetworkRequest$LuaCallback;,
        Lnetwork/NetworkRequest$NetworkRequestState;,
        Lnetwork/NetworkRequest$CoronaFileSpec;,
        Lnetwork/NetworkRequest$ProgressDirection;
    }
.end annotation


# static fields
.field private static final EVENT_NAME:Ljava/lang/String; = "networkRequest"


# instance fields
.field private fLoader:Lnetwork/LuaLoader;

.field private fOpenRequests:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnetwork/LuaLoader;)V
    .locals 1
    .param p1, "loader"    # Lnetwork/LuaLoader;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lnetwork/NetworkRequest;->fOpenRequests:Ljava/util/Vector;

    .line 42
    iput-object p1, p0, Lnetwork/NetworkRequest;->fLoader:Lnetwork/LuaLoader;

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnetwork/NetworkRequest;->fOpenRequests:Ljava/util/Vector;

    .line 44
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;

    .prologue
    .line 32
    invoke-static {p0}, Lnetwork/NetworkRequest;->concatHeaderValues(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lnetwork/NetworkRequest;)Lnetwork/LuaLoader;
    .locals 1
    .param p0, "x0"    # Lnetwork/NetworkRequest;

    .prologue
    .line 32
    iget-object v0, p0, Lnetwork/NetworkRequest;->fLoader:Lnetwork/LuaLoader;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p0}, Lnetwork/NetworkRequest;->getContentTypeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p0}, Lnetwork/NetworkRequest;->isContentTypeText(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p0, p1}, Lnetwork/NetworkRequest;->getEncodingFromContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static concatHeaderValues(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, ""

    .line 91
    .local v3, "sep":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v3, ","

    goto :goto_0

    .line 96
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "vargs"    # [Ljava/lang/Object;

    .prologue
    .line 59
    return-void
.end method

.method public static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "vargs"    # [Ljava/lang/Object;

    .prologue
    .line 63
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method private static getContentTypeEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "contentTypeHeader"    # Ljava/lang/String;

    .prologue
    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, "charset":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 106
    const-string v6, ";"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, "values":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 110
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "charset="

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 114
    const-string v6, "charset="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 115
    const-string v6, "Explicit charset was found in content type, was: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private static getEncodingFromContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "contentType"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 171
    .local v0, "charset":Ljava/lang/String;
    const-string v10, "Looking for embedded encoding in content: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    invoke-static {v10, v11}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    invoke-static {p0}, Lnetwork/NetworkRequest;->isContentTypeXML(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 179
    const-string v10, "<?xml\\b[^>]*\\bencoding=[\'\"]([a-zA-Z0-9_\\-]+)[\'\"].*[^>]*?>"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 180
    .local v9, "xmlMetaPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v9, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 181
    .local v8, "xmlMetaMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 183
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    const-string v10, "Found charset in XML meta header encoding attribute: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    invoke-static {v10, v11}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    .end local v8    # "xmlMetaMatcher":Ljava/util/regex/Matcher;
    .end local v9    # "xmlMetaPattern":Ljava/util/regex/Pattern;
    :cond_0
    if-nez v0, :cond_2

    invoke-static {p0}, Lnetwork/NetworkRequest;->isContentTypeHTML(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 194
    const-string v10, "<meta\\b[^>]*\\bcharset=[\'\"]([a-zA-Z0-9_\\-]+)[\'\"][^>]*>"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 195
    .local v3, "metaCharsetPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 196
    .local v2, "metaCharsetMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 198
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    const-string v10, "Found charset in HTML meta charset header: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    invoke-static {v10, v11}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    :cond_1
    if-nez v0, :cond_2

    .line 211
    const-string v10, "<meta\\b[^>]*\\bhttp-equiv=[\'\"](?:Content-Type)[\'\"][^>]*>"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 212
    .local v7, "metaHttpCtHeaderPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 213
    .local v6, "metaHttpCtHeaderMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 215
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "httpMetaCtHeader":Ljava/lang/String;
    const-string v10, "Found httpMetaCtHeader: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-static {v10, v11}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    const-string v10, "\\bcharset=([a-zA-Z0-9_\\-]+)\\b"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 219
    .local v5, "metaHttpCtCharsetPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 220
    .local v4, "metaHttpCtCharsetMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 222
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    const-string v10, "Found charset in meta Content-Type header: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    invoke-static {v10, v11}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    .end local v1    # "httpMetaCtHeader":Ljava/lang/String;
    .end local v2    # "metaCharsetMatcher":Ljava/util/regex/Matcher;
    .end local v3    # "metaCharsetPattern":Ljava/util/regex/Pattern;
    .end local v4    # "metaHttpCtCharsetMatcher":Ljava/util/regex/Matcher;
    .end local v5    # "metaHttpCtCharsetPattern":Ljava/util/regex/Pattern;
    .end local v6    # "metaHttpCtHeaderMatcher":Ljava/util/regex/Matcher;
    .end local v7    # "metaHttpCtHeaderPattern":Ljava/util/regex/Pattern;
    :cond_2
    return-object v0
.end method

.method private static isContentTypeHTML(Ljava/lang/String;)Z
    .locals 1
    .param p0, "contentType"    # Ljava/lang/String;

    .prologue
    .line 137
    const-string v0, "text/html"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/xhtml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isContentTypeText(Ljava/lang/String;)Z
    .locals 1
    .param p0, "contentType"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-static {p0}, Lnetwork/NetworkRequest;->isContentTypeXML(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lnetwork/NetworkRequest;->isContentTypeHTML(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/json"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/javascript"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/x-javascript"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/ecmascript"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isContentTypeXML(Ljava/lang/String;)Z
    .locals 3
    .param p0, "contentType"    # Ljava/lang/String;

    .prologue
    .line 124
    const-string v2, "^application/(?:\\w+)[+]xml"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 125
    .local v1, "regex":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 127
    .local v0, "applicationPlusXmlPatthernMatcher":Ljava/util/regex/Matcher;
    const-string v2, "text/xml"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "application/xml"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "application/xhtml"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static varargs paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "luaState"    # Lcom/naef/jnlua/LuaState;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "vargs"    # [Ljava/lang/Object;

    .prologue
    .line 71
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method public abortOpenConnections(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 4
    .param p1, "runtime"    # Lcom/ansca/corona/CoronaRuntime;

    .prologue
    .line 48
    iget-object v2, p0, Lnetwork/NetworkRequest;->fOpenRequests:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;

    .line 50
    .local v0, "connection":Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;
    const-string v2, "Aborting connection"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-virtual {v0, p1}, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->abort(Lcom/ansca/corona/CoronaRuntime;)Z

    goto :goto_0

    .line 53
    .end local v0    # "connection":Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;
    :cond_0
    iget-object v2, p0, Lnetwork/NetworkRequest;->fOpenRequests:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    .line 54
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1810
    const-string v0, "request"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 12
    .param p1, "luaState"    # Lcom/naef/jnlua/LuaState;

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1825
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1826
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 1827
    const-string v7, "android.permission.INTERNET"

    invoke-virtual {v0, v7, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    :cond_0
    const-string v7, "network.request() - thread: %d"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v7, v8}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1831
    const-string v7, "network.request() - luaState %s"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v7, v8}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1856
    new-instance v3, Lnetwork/NetworkRequest$NetworkRequestParameters;

    invoke-direct {v3, p0, v11}, Lnetwork/NetworkRequest$NetworkRequestParameters;-><init>(Lnetwork/NetworkRequest;Lnetwork/NetworkRequest$1;)V

    .line 1857
    .local v3, "requestParameters":Lnetwork/NetworkRequest$NetworkRequestParameters;
    invoke-virtual {v3, p1}, Lnetwork/NetworkRequest$NetworkRequestParameters;->extractRequestParameters(Lcom/naef/jnlua/LuaState;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1859
    new-instance v2, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;

    iget-object v6, p0, Lnetwork/NetworkRequest;->fOpenRequests:Ljava/util/Vector;

    invoke-direct {v2, p0, v3, v6}, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;-><init>(Lnetwork/NetworkRequest;Lnetwork/NetworkRequest$NetworkRequestParameters;Ljava/util/Vector;)V

    .line 1860
    .local v2, "request":Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;
    iget-object v6, v2, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    iget-object v1, v6, Lnetwork/NetworkRequest$NetworkRequestState;->isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1862
    .local v1, "isCancelled":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1863
    .local v4, "t":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 1867
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushJavaObjectRaw(Ljava/lang/Object;)V

    .line 1875
    .end local v1    # "isCancelled":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v2    # "request":Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;
    .end local v4    # "t":Ljava/lang/Thread;
    :goto_0
    return v5

    :cond_1
    move v5, v6

    goto :goto_0
.end method
