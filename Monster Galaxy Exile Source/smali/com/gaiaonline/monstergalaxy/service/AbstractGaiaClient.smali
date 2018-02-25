.class public abstract Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;
.super Ljava/lang/Object;
.source "AbstractGaiaClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient$GaiaHttpListener;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$platform$PlatformHelper$MGSkin:[I = null

.field protected static final DEVICE_ID_PATH:Ljava/lang/String; = "deviceUniqueId"

.field protected static final PUBLIC_IP_ADDRESS_PROVIDERS:[Ljava/lang/String;

.field protected static final SKIP_ENCODING_STRINGS:Ljava/lang/String; = "!*\'();:@$,/#[]"

.field protected static deviceUniqueId:Ljava/lang/String;

.field protected static guestPass:Ljava/lang/String;

.field protected static ipAddress:Ljava/lang/String;

.field protected static passportId:Ljava/lang/String;

.field protected static passportToken:Ljava/lang/String;

.field protected static sessionStarted:Z


# instance fields
.field protected deviceToServerDeltaSeconds:J

.field private storageFolder:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$platform$PlatformHelper$MGSkin()[I
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$platform$PlatformHelper$MGSkin:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->values()[Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK1:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$platform$PlatformHelper$MGSkin:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 37
    const-string v2, "http://checkip.dyndns.org/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 38
    const-string v2, "http://automation.whatismyip.com/n09230945.asp"

    aput-object v2, v0, v1

    .line 36
    sput-object v0, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->PUBLIC_IP_ADDRESS_PROVIDERS:[Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "storageFolder"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->storageFolder:Ljava/lang/String;

    .line 142
    return-void
.end method

.method protected static buildUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 288
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 289
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 290
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_1
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "utf8"

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "utf8"

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private fetchPublicIpAddress()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 269
    sget-object v3, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->PUBLIC_IP_ADDRESS_PROVIDERS:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 279
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Failed to get public ip address"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    :cond_0
    aget-object v1, v3, v2

    .line 271
    .local v1, "provider":Ljava/lang/String;
    :try_start_0
    sget-object v5, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v6, "MonsterGalaxy"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Fetching public ip address from "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->getPublicIpAddress(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v6, "MonsterGalaxy"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to fetch public ip address from "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 269
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static getDigestHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 434
    if-nez p0, :cond_0

    .line 435
    const-string p0, ""

    .line 437
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->getDigestHex([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDigestHex([BLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 441
    const-string v3, ""

    .line 444
    .local v3, "retValue":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 446
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 447
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 449
    .local v1, "digestBytes":[B
    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->toHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 455
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "digestBytes":[B
    :goto_0
    return-object v3

    .line 451
    :catch_0
    move-exception v2

    .line 452
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "MonsterGalaxy"

    const-string v6, "Could not get message digester."

    invoke-interface {v4, v5, v6}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static getMD5Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 342
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->getDigestHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getMD5Hex([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 346
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->getDigestHex([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getRandomClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getSHA1Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 338
    const-string v0, "SHA"

    invoke-static {p0, v0}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->getDigestHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    const-string v2, "([0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3})"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 307
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 308
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 311
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to parse ip address for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private processPassportInfo(Lorg/codehaus/jackson/JsonNode;)V
    .locals 3
    .param p1, "data"    # Lorg/codehaus/jackson/JsonNode;

    .prologue
    .line 87
    const-string v2, "passport_id"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "guest_pass"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 88
    const-string v2, "passport_id"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "passportId":Ljava/lang/String;
    const-string v2, "guest_pass"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "guestPass":Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->savePassportIdAndGuestPass(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .end local v0    # "guestPass":Ljava/lang/String;
    .end local v1    # "passportId":Ljava/lang/String;
    :cond_0
    const-string v2, "passport_token"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 93
    const-string v2, "passport_token"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->passportToken:Ljava/lang/String;

    .line 95
    :cond_1
    return-void
.end method

.method private static readDeviceUniqueIdFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "idFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 317
    .local v1, "f":Ljava/io/RandomAccessFile;
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v0, v2, [B

    .line 318
    .local v0, "bytes":[B
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 319
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 320
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method protected static readStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 471
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 472
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 476
    .local v1, "line":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    .line 483
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 489
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 477
    :cond_0
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 483
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 484
    :catch_1
    move-exception v0

    .line 485
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 481
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 483
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 487
    :goto_2
    throw v4

    .line 484
    :catch_2
    move-exception v0

    .line 485
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 484
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 485
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static toHexString([B)Ljava/lang/String;
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    .local v0, "hex":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 467
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 463
    :cond_0
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static unencodeSkippedChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 358
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const-string v3, "!*\'();:@$,/#[]"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 367
    const-string v3, "+"

    const-string v4, "%20"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 368
    return-object p0

    .line 359
    :cond_0
    const-string v3, "!*\'();:@$,/#[]"

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "c":Ljava/lang/String;
    :try_start_0
    const-string v3, "utf8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 358
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 362
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 364
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to encode special character: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static writeDeviceUniqueIdFromFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p0, "idFile"    # Ljava/io/File;
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 325
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 326
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 327
    .local v0, "out":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 328
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 329
    return-void
.end method


# virtual methods
.method protected abstract calculateDeviceUniqueId()Ljava/lang/String;
.end method

.method public calculateServerTimestamp()J
    .locals 4

    .prologue
    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->deviceToServerDeltaSeconds:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public abstract claimReimbursement(Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient$GaiaHttpListener;)V
.end method

.method public abstract fetchTimestamp()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract getAndroidId()Ljava/lang/String;
.end method

.method protected abstract getDeviceId()Ljava/lang/String;
.end method

.method public final getDeviceUniqueId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 150
    const-class v3, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;

    monitor-enter v3

    .line 151
    :try_start_0
    sget-object v2, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->deviceUniqueId:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 152
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->storageFolder:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "deviceUniqueId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 153
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .local v1, "idFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->calculateDeviceUniqueId()Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-static {v1, v2}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->writeDeviceUniqueIdFromFile(Ljava/io/File;Ljava/lang/String;)V

    .line 159
    :cond_0
    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->readDeviceUniqueIdFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->deviceUniqueId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .end local v1    # "idFile":Ljava/io/File;
    :cond_1
    :try_start_2
    sget-object v2, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->deviceUniqueId:Ljava/lang/String;

    monitor-exit v3

    return-object v2

    .line 160
    .restart local v1    # "idFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    .line 162
    const-string v4, "Cannot read/write device unique id"

    .line 161
    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 150
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "idFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method protected getFormattedURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 373
    const-string v14, "?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "&"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 374
    .local v10, "parameters":[Ljava/lang/String;
    new-instance v12, Ljava/util/TreeMap;

    invoke-direct {v12}, Ljava/util/TreeMap;-><init>()V

    .line 376
    .local v12, "sortedParameters":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    const-string v15, "?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 378
    .local v8, "newUrl":Ljava/lang/StringBuilder;
    array-length v15, v10

    const/4 v14, 0x0

    :goto_0
    if-lt v14, v15, :cond_0

    .line 390
    const/4 v5, 0x0

    .line 392
    .local v5, "i":I
    invoke-interface {v12}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_2

    .line 405
    :try_start_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-lez v14, :cond_4

    .line 407
    const-string v14, "MD5"

    invoke-static {v14}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 408
    .local v1, "digest":Ljava/security/MessageDigest;
    const/4 v11, 0x0

    .line 409
    .local v11, "salt":Ljava/lang/String;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$platform$PlatformHelper$MGSkin()[I

    move-result-object v14

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v15

    invoke-virtual {v15}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v15

    invoke-virtual {v15}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 418
    :goto_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 420
    .local v4, "hashValue":[B
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "&hash="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->toHexString([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v4    # "hashValue":[B
    .end local v11    # "salt":Ljava/lang/String;
    :goto_3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 378
    .end local v5    # "i":I
    :cond_0
    aget-object v9, v10, v14

    .line 379
    .local v9, "param":Ljava/lang/String;
    const-string v16, "="

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 381
    .local v6, "index":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-le v6, v0, :cond_1

    .line 382
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 383
    .local v7, "key":Ljava/lang/String;
    add-int/lit8 v16, v6, 0x1

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 385
    .local v13, "value":Ljava/lang/String;
    invoke-interface {v12, v7, v13}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .end local v7    # "key":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 392
    .end local v6    # "index":I
    .end local v9    # "param":Ljava/lang/String;
    .restart local v5    # "i":I
    :cond_2
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 393
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-lez v5, :cond_3

    .line 394
    const-string v14, "&"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v14, "="

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->unencodeSkippedChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 411
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "digest":Ljava/security/MessageDigest;
    .restart local v11    # "salt":Ljava/lang/String;
    :pswitch_0
    :try_start_1
    const-string v11, "s89-dsg0*F&G0ksgd9yF9mfgew-9"

    .line 412
    goto/16 :goto_2

    .line 414
    :pswitch_1
    const-string v11, "8vUo-Phi_g!ts7GNF.Soayu4"

    goto/16 :goto_2

    .line 423
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v11    # "salt":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 426
    :catch_0
    move-exception v2

    .line 427
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v14, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v15, "MonsterGalaxy"

    const-string v16, "Could not format URL"

    move-object/from16 v0, v16

    invoke-interface {v14, v15, v0, v2}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    .line 409
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract getInstallParams()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected getPublicIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "providerUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 283
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->getUrlContent(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->parseIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrlContent(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "addHash"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 223
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#.######"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "timestamp":Ljava/lang/String;
    const-string v2, "timestamp"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v2, "udid"

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->getDeviceUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v2, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->ipAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 230
    const-string v2, "ip"

    sget-object v3, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->ipAddress:Ljava/lang/String;

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v2

    sget-object v3, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK1:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v2, v3, :cond_2

    .line 236
    const-string v2, "device_os"

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v3

    .line 237
    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getPlatformVersion()Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v2, "device_type"

    const-string v3, "android"

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v2, "v"

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v2, "app_version"

    .line 241
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getVersionCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 240
    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->buildUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "fullUrl":Ljava/lang/String;
    invoke-virtual {p0, v0, p3}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->getUrlContent(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 243
    .end local v0    # "fullUrl":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v2

    sget-object v3, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v2, v3, :cond_1

    .line 245
    sget-object v2, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->passportId:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 246
    const-string v2, "passport_id"

    sget-object v3, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->passportId:Ljava/lang/String;

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_3
    sget-object v2, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->passportToken:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 249
    const-string v2, "passport_token"

    sget-object v3, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->passportToken:Ljava/lang/String;

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_4
    const-string v2, "device_os"

    const-string v3, "android"

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v2, "device_type"

    const-string v3, "android_phone"

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v2, "os_version"

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v3

    .line 255
    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getPlatformVersion()Ljava/lang/String;

    move-result-object v3

    .line 254
    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v2, "v"

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v2, "app_version"

    .line 258
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getVersionCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected abstract getUrlContent(Ljava/lang/String;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract hasReimbursement()Z
.end method

.method public isSessionStarted()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->sessionStarted:Z

    return v0
.end method

.method public abstract loadPassportIdAndGuestPass()V
.end method

.method public abstract savePassportIdAndGuestPass(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public sendInstallInfo()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 181
    :try_start_0
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->fetchPublicIpAddress()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->ipAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 189
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v8

    sget-object v9, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK1:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v8, v9, :cond_0

    .line 190
    const-string v8, "t"

    const-string v9, "udid"

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_0
    const-string v8, "android_id"

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->getAndroidId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v8, "device_id"

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->getInstallParams()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 199
    :try_start_1
    sget-object v8, Lcom/gaiaonline/monstergalaxy/app/ConfigConstants;->WEBSERVICE_INSTALL_URL:Ljava/lang/String;

    const/4 v9, 0x1

    .line 198
    invoke-virtual {p0, v8, v3, v9}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->getUrlContent(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, "response":Ljava/lang/String;
    new-instance v2, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v2}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    .line 202
    .local v2, "m":Lorg/codehaus/jackson/map/ObjectMapper;
    const-class v8, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v2, v4, v8}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codehaus/jackson/JsonNode;

    .line 203
    .local v5, "rootNode":Lorg/codehaus/jackson/JsonNode;
    const-string v8, "ok"

    const-string v9, "status"

    invoke-virtual {v5, v9}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v9

    invoke-virtual {v9}, Lorg/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 204
    const-string v8, "data"

    invoke-virtual {v5, v8}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 205
    .local v0, "data":Lorg/codehaus/jackson/JsonNode;
    const-string v8, "success"

    const-string v9, "outcome"

    invoke-virtual {v0, v9}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v9

    invoke-virtual {v9}, Lorg/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 206
    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->processPassportInfo(Lorg/codehaus/jackson/JsonNode;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    .end local v0    # "data":Lorg/codehaus/jackson/JsonNode;
    .end local v2    # "m":Lorg/codehaus/jackson/map/ObjectMapper;
    .end local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "response":Ljava/lang/String;
    .end local v5    # "rootNode":Lorg/codehaus/jackson/JsonNode;
    :goto_0
    return v6

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v8, "MonsterGalaxy"

    const-string v9, "Failed to retrieve public ip address. Internet connection is probably unavailable."

    invoke-interface {v6, v8, v9}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 184
    goto :goto_0

    .line 209
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "data":Lorg/codehaus/jackson/JsonNode;
    .restart local v2    # "m":Lorg/codehaus/jackson/map/ObjectMapper;
    .restart local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "response":Ljava/lang/String;
    .restart local v5    # "rootNode":Lorg/codehaus/jackson/JsonNode;
    :cond_1
    :try_start_2
    new-instance v6, Ljava/lang/Exception;

    const-string v8, "Outcome not success"

    invoke-direct {v6, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 214
    .end local v0    # "data":Lorg/codehaus/jackson/JsonNode;
    .end local v2    # "m":Lorg/codehaus/jackson/map/ObjectMapper;
    .end local v4    # "response":Ljava/lang/String;
    .end local v5    # "rootNode":Lorg/codehaus/jackson/JsonNode;
    :catch_1
    move-exception v1

    .line 215
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v6, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v8, "MonsterGalaxy"

    const-string v9, "Failed to send device unique id to gaia server."

    invoke-interface {v6, v8, v9, v1}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move v6, v7

    .line 216
    goto :goto_0

    .line 212
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "m":Lorg/codehaus/jackson/map/ObjectMapper;
    .restart local v4    # "response":Ljava/lang/String;
    .restart local v5    # "rootNode":Lorg/codehaus/jackson/JsonNode;
    :cond_2
    :try_start_3
    new-instance v6, Ljava/lang/Exception;

    const-string v8, "Status not ok"

    invoke-direct {v6, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method public abstract sendPurchaseData(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public startGaiaSession()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 55
    sget-boolean v7, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->sessionStarted:Z

    if-eqz v7, :cond_0

    .line 83
    :goto_0
    return v6

    .line 58
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 59
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "android_id"

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->getAndroidId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v6, "device_id"

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v6, "session_start"

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Clock;->getCurrentTimeSec()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->getInstallParams()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 65
    :try_start_0
    sget-object v6, Lcom/gaiaonline/monstergalaxy/app/ConfigConstants;->WEBSERVICE_SESSION:Ljava/lang/String;

    .line 66
    const/4 v7, 0x1

    .line 65
    invoke-virtual {p0, v6, v3, v7}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->getUrlContent(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "response":Ljava/lang/String;
    new-instance v2, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v2}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    .line 68
    .local v2, "m":Lorg/codehaus/jackson/map/ObjectMapper;
    const-class v6, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v2, v4, v6}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codehaus/jackson/JsonNode;

    .line 69
    .local v5, "rootNode":Lorg/codehaus/jackson/JsonNode;
    const-string v6, "ok"

    const-string v7, "status"

    invoke-virtual {v5, v7}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v7

    invoke-virtual {v7}, Lorg/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 70
    const-string v6, "data"

    invoke-virtual {v5, v6}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 71
    .local v0, "data":Lorg/codehaus/jackson/JsonNode;
    const-string v6, "success"

    const-string v7, "outcome"

    invoke-virtual {v0, v7}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v7

    invoke-virtual {v7}, Lorg/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 72
    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->processPassportInfo(Lorg/codehaus/jackson/JsonNode;)V

    .line 73
    const/4 v6, 0x1

    sput-boolean v6, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->sessionStarted:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v0    # "data":Lorg/codehaus/jackson/JsonNode;
    .end local v2    # "m":Lorg/codehaus/jackson/map/ObjectMapper;
    .end local v4    # "response":Ljava/lang/String;
    .end local v5    # "rootNode":Lorg/codehaus/jackson/JsonNode;
    :goto_1
    sget-boolean v6, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->sessionStarted:Z

    goto :goto_0

    .line 75
    .restart local v0    # "data":Lorg/codehaus/jackson/JsonNode;
    .restart local v2    # "m":Lorg/codehaus/jackson/map/ObjectMapper;
    .restart local v4    # "response":Ljava/lang/String;
    .restart local v5    # "rootNode":Lorg/codehaus/jackson/JsonNode;
    :cond_1
    :try_start_1
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Outcome not success"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    .end local v0    # "data":Lorg/codehaus/jackson/JsonNode;
    .end local v2    # "m":Lorg/codehaus/jackson/map/ObjectMapper;
    .end local v4    # "response":Ljava/lang/String;
    .end local v5    # "rootNode":Lorg/codehaus/jackson/JsonNode;
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v7, "MonsterGalaxy"

    const-string v8, "Failed to start gaia session"

    invoke-interface {v6, v7, v8, v1}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 78
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "m":Lorg/codehaus/jackson/map/ObjectMapper;
    .restart local v4    # "response":Ljava/lang/String;
    .restart local v5    # "rootNode":Lorg/codehaus/jackson/JsonNode;
    :cond_2
    :try_start_2
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Status not ok"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method public toDeviceTime(J)J
    .locals 2
    .param p1, "serverTime"    # J

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->deviceToServerDeltaSeconds:J

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public abstract verifyNewVersionAvailability()Z
.end method

.method public abstract verifyReimbursement()Z
.end method
