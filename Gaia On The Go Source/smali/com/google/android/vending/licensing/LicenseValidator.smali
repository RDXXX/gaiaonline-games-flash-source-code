.class Lcom/google/android/vending/licensing/LicenseValidator;
.super Ljava/lang/Object;
.source "LicenseValidator.java"


# static fields
.field private static final ERROR_CONTACTING_SERVER:I = 0x101

.field private static final ERROR_INVALID_PACKAGE_NAME:I = 0x102

.field private static final ERROR_NON_MATCHING_UID:I = 0x103

.field private static final ERROR_NOT_MARKET_MANAGED:I = 0x3

.field private static final ERROR_OVER_QUOTA:I = 0x5

.field private static final ERROR_SERVER_FAILURE:I = 0x4

.field private static final LICENSED:I = 0x0

.field private static final LICENSED_OLD_KEY:I = 0x2

.field private static final NOT_LICENSED:I = 0x1

.field private static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"

.field private static final TAG:Ljava/lang/String; = "LicenseValidator"


# instance fields
.field private final mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

.field private final mNonce:I

.field private final mPackageName:Ljava/lang/String;

.field private final mPolicy:Lcom/google/android/vending/licensing/Policy;

.field private final mVersionCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/vending/licensing/Policy;Lcom/google/android/vending/licensing/LicenseCheckerCallback;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "policy"    # Lcom/google/android/vending/licensing/Policy;
    .param p2, "callback"    # Lcom/google/android/vending/licensing/LicenseCheckerCallback;
    .param p3, "nonce"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "versionCode"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    .line 59
    iput-object p2, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    .line 60
    iput p3, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mNonce:I

    .line 61
    iput-object p4, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPackageName:Ljava/lang/String;

    .line 62
    iput-object p5, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mVersionCode:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private handleApplicationError(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    invoke-interface {v0, p1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->applicationError(I)V

    .line 216
    return-void
.end method

.method private handleInvalidResponse()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    const/16 v1, 0x231

    invoke-interface {v0, v1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->dontAllow(I)V

    .line 220
    return-void
.end method

.method private handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V
    .locals 1
    .param p1, "response"    # I
    .param p2, "rawData"    # Lcom/google/android/vending/licensing/ResponseData;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    invoke-interface {v0, p1, p2}, Lcom/google/android/vending/licensing/Policy;->processServerResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    .line 207
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    invoke-interface {v0}, Lcom/google/android/vending/licensing/Policy;->allowAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    invoke-interface {v0, p1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->allow(I)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    invoke-interface {v0, p1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->dontAllow(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCallback()Lcom/google/android/vending/licensing/LicenseCheckerCallback;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    return-object v0
.end method

.method public getNonce()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mNonce:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "responseCode"    # I
    .param p3, "signedData"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0x123

    .line 88
    const/4 v3, 0x0

    .line 90
    .local v3, "userId":Ljava/lang/String;
    const/4 v0, 0x0

    .line 91
    .local v0, "data":Lcom/google/android/vending/licensing/ResponseData;
    if-eqz p2, :cond_0

    if-eq p2, v7, :cond_0

    if-ne p2, v8, :cond_6

    .line 95
    :cond_0
    :try_start_0
    const-string v4, "SHA1withRSA"

    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 96
    .local v2, "sig":Ljava/security/Signature;
    invoke-virtual {v2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 97
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/Signature;->update([B)V

    .line 99
    invoke-static {p4}, Lcom/google/android/vending/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/Signature;->verify([B)Z

    move-result v4

    if-nez v4, :cond_1

    .line 100
    const-string v4, "LicenseValidator"

    const-string v5, "Signature verification failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/vending/licensing/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_3

    .line 193
    .end local v2    # "sig":Ljava/security/Signature;
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 107
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 108
    .local v1, "e":Ljava/security/InvalidKeyException;
    const/4 v4, 0x5

    invoke-direct {p0, v4}, Lcom/google/android/vending/licensing/LicenseValidator;->handleApplicationError(I)V

    goto :goto_0

    .line 110
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v1

    .line 111
    .local v1, "e":Ljava/security/SignatureException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 112
    .end local v1    # "e":Ljava/security/SignatureException;
    :catch_3
    move-exception v1

    .line 113
    .local v1, "e":Lcom/google/android/vending/licensing/util/Base64DecoderException;
    const-string v4, "LicenseValidator"

    const-string v5, "Could not Base64-decode signature."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    goto :goto_0

    .line 120
    .end local v1    # "e":Lcom/google/android/vending/licensing/util/Base64DecoderException;
    .restart local v2    # "sig":Ljava/security/Signature;
    :cond_1
    :try_start_1
    invoke-static {p3}, Lcom/google/android/vending/licensing/ResponseData;->parse(Ljava/lang/String;)Lcom/google/android/vending/licensing/ResponseData;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    .line 127
    iget v4, v0, Lcom/google/android/vending/licensing/ResponseData;->responseCode:I

    if-eq v4, p2, :cond_2

    .line 128
    const-string v4, "LicenseValidator"

    const-string v5, "Response codes don\'t match."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    goto :goto_0

    .line 121
    :catch_4
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "LicenseValidator"

    const-string v5, "Could not parse response."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    goto :goto_0

    .line 133
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    iget v4, v0, Lcom/google/android/vending/licensing/ResponseData;->nonce:I

    iget v5, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mNonce:I

    if-eq v4, v5, :cond_3

    .line 134
    const-string v4, "LicenseValidator"

    const-string v5, "Nonce doesn\'t match."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    goto :goto_0

    .line 139
    :cond_3
    iget-object v4, v0, Lcom/google/android/vending/licensing/ResponseData;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 140
    const-string v4, "LicenseValidator"

    const-string v5, "Package name doesn\'t match."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    goto :goto_0

    .line 145
    :cond_4
    iget-object v4, v0, Lcom/google/android/vending/licensing/ResponseData;->versionCode:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mVersionCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 146
    const-string v4, "LicenseValidator"

    const-string v5, "Version codes don\'t match."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    goto :goto_0

    .line 152
    :cond_5
    iget-object v3, v0, Lcom/google/android/vending/licensing/ResponseData;->userId:Ljava/lang/String;

    .line 153
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 154
    const-string v4, "LicenseValidator"

    const-string v5, "User identifier is empty."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    goto/16 :goto_0

    .line 160
    .end local v2    # "sig":Ljava/security/Signature;
    :cond_6
    sparse-switch p2, :sswitch_data_0

    .line 190
    const-string v4, "LicenseValidator"

    const-string v5, "Unknown response code for license check."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    goto/16 :goto_0

    .line 163
    :sswitch_0
    const/16 v4, 0x100

    invoke-direct {p0, v4, v0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    goto/16 :goto_0

    .line 166
    :sswitch_1
    const/16 v4, 0x231

    invoke-direct {p0, v4, v0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    goto/16 :goto_0

    .line 169
    :sswitch_2
    const-string v4, "LicenseValidator"

    const-string v5, "Error contacting licensing server."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-direct {p0, v6, v0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    goto/16 :goto_0

    .line 173
    :sswitch_3
    const-string v4, "LicenseValidator"

    const-string v5, "An error has occurred on the licensing server."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-direct {p0, v6, v0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    goto/16 :goto_0

    .line 177
    :sswitch_4
    const-string v4, "LicenseValidator"

    const-string v5, "Licensing server is refusing to talk to this device, over quota."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-direct {p0, v6, v0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    goto/16 :goto_0

    .line 181
    :sswitch_5
    invoke-direct {p0, v7}, Lcom/google/android/vending/licensing/LicenseValidator;->handleApplicationError(I)V

    goto/16 :goto_0

    .line 184
    :sswitch_6
    invoke-direct {p0, v8}, Lcom/google/android/vending/licensing/LicenseValidator;->handleApplicationError(I)V

    goto/16 :goto_0

    .line 187
    :sswitch_7
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/google/android/vending/licensing/LicenseValidator;->handleApplicationError(I)V

    goto/16 :goto_0

    .line 160
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_7
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x101 -> :sswitch_2
        0x102 -> :sswitch_5
        0x103 -> :sswitch_6
    .end sparse-switch
.end method
