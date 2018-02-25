.class public Lcom/ansca/corona/Crypto;
.super Ljava/lang/Object;
.source "Crypto.java"


# static fields
.field public static final ALGORITHM_HMAC_MD4:Ljava/lang/String; = "HmacMD4"

.field public static final ALGORITHM_HMAC_MD5:Ljava/lang/String; = "HmacMD5"

.field public static final ALGORITHM_HMAC_SHA1A:Ljava/lang/String; = "HmacSHA1A"

.field public static final ALGORITHM_HMAC_SHA224A:Ljava/lang/String; = "HmacSHA224A"

.field public static final ALGORITHM_HMAC_SHA256A:Ljava/lang/String; = "HmacSHA256A"

.field public static final ALGORITHM_HMAC_SHA384:Ljava/lang/String; = "HmacSHA384"

.field public static final ALGORITHM_HMAC_SHA512:Ljava/lang/String; = "HmacSHA512"

.field public static final ALGORITHM_MD4:Ljava/lang/String; = "MD4"

.field public static final ALGORITHM_MD5:Ljava/lang/String; = "MD5"

.field public static final ALGORITHM_SHA1A:Ljava/lang/String; = "SHA1A"

.field public static final ALGORITHM_SHA224A:Ljava/lang/String; = "SHA224A"

.field public static final ALGORITHM_SHA256A:Ljava/lang/String; = "SHA256A"

.field public static final ALGORITHM_SHA384:Ljava/lang/String; = "SHA384"

.field public static final ALGORITHM_SHA512:Ljava/lang/String; = "SHA512"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CalculateDigest(Ljava/lang/String;[B)[B
    .locals 3
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    .line 42
    const/4 v2, 0x0

    .line 44
    .local v2, "result":[B
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 46
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 51
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 47
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public static CalculateHMAC(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 55
    const/4 v2, 0x0

    .line 57
    .local v2, "result":[B
    :try_start_0
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 59
    .local v1, "hmac":Ljavax/crypto/Mac;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "RAW"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 61
    invoke-virtual {v1, p2}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 72
    .end local v1    # "hmac":Ljavax/crypto/Mac;
    :goto_0
    return-object v2

    .line 62
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 65
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 67
    .local v0, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    .line 68
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v0

    .line 70
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static GetDigestLength(Ljava/lang/String;)I
    .locals 3
    .param p0, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 29
    const/4 v2, 0x0

    .line 31
    .local v2, "length":I
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 33
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 38
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :goto_0
    return v2

    .line 34
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method
