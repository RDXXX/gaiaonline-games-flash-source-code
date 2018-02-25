.class public Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/InetAddress;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final IPV4_PATTERN:Ljava/util/regex/Pattern;

.field private static final IPV6_6HEX4DEC_PATTERN:Ljava/util/regex/Pattern;

.field private static final IPV6_HEX4DECCOMPRESSED_PATTERN:Ljava/util/regex/Pattern;

.field private static final IPV6_HEXCOMPRESSED_PATTERN:Ljava/util/regex/Pattern;

.field private static final IPV6_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "\\A(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}\\z"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/InetAddress;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    .line 7
    const-string v0, "\\A((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?) ::((?:[0-9A-Fa-f]{1,4}:)*)(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}\\z"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/InetAddress;->IPV6_HEX4DECCOMPRESSED_PATTERN:Ljava/util/regex/Pattern;

    .line 8
    const-string v0, "\\A((?:[0-9A-Fa-f]{1,4}:){6,6})(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}\\z"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/InetAddress;->IPV6_6HEX4DEC_PATTERN:Ljava/util/regex/Pattern;

    .line 9
    const-string v0, "\\A((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)\\z"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/InetAddress;->IPV6_HEXCOMPRESSED_PATTERN:Ljava/util/regex/Pattern;

    .line 10
    const-string v0, "\\A(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}\\z"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/InetAddress;->IPV6_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/InetAddress;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/InetAddress;->IPV6_HEX4DECCOMPRESSED_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/InetAddress;->IPV6_6HEX4DEC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/InetAddress;->IPV6_HEXCOMPRESSED_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/InetAddress;->IPV6_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

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
