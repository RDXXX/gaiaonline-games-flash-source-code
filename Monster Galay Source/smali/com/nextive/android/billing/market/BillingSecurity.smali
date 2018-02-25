.class public Lcom/nextive/android/billing/market/BillingSecurity;
.super Ljava/lang/Object;
.source "BillingSecurity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextive/android/billing/market/BillingSecurity$VerifiedPurchase;
    }
.end annotation


# static fields
.field private static final KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final RANDOM:Ljava/security/SecureRandom;

.field private static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"

.field private static base64EncodedPublicKey:Ljava/lang/String;

.field private static sKnownNonces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/nextive/android/billing/market/BillingSecurity;->RANDOM:Ljava/security/SecureRandom;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/nextive/android/billing/market/BillingSecurity;->sKnownNonces:Ljava/util/HashSet;

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/nextive/android/billing/market/BillingSecurity;->base64EncodedPublicKey:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateNonce()J
    .locals 4

    .prologue
    .line 77
    sget-object v2, Lcom/nextive/android/billing/market/BillingSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 78
    .local v0, "nonce":J
    sget-object v2, Lcom/nextive/android/billing/market/BillingSecurity;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    return-wide v0
.end method

.method public static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 4
    .param p0, "encodedPublicKey"    # Ljava/lang/String;

    .prologue
    .line 211
    :try_start_0
    invoke-static {p0}, Lcom/nextive/android/billing/market/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 213
    .local v0, "decodedKey":[B
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 215
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nextive/android/billing/market/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 214
    return-object v3

    .line 216
    .end local v0    # "decodedKey":[B
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 218
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 219
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string v3, "Invalid key specification."

    invoke-static {v3}, Lcom/nextive/android/billing/market/BillingLogger;->log(Ljava/lang/String;)V

    .line 220
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 221
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_2
    move-exception v1

    .line 222
    .local v1, "e":Lcom/nextive/android/billing/market/Base64DecoderException;
    const-string v3, "Base64 decoding failed."

    invoke-static {v3}, Lcom/nextive/android/billing/market/BillingLogger;->log(Ljava/lang/String;)V

    .line 223
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static isNonceKnown(J)Z
    .locals 2
    .param p0, "nonce"    # J

    .prologue
    .line 87
    sget-object v0, Lcom/nextive/android/billing/market/BillingSecurity;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static removeNonce(J)V
    .locals 2
    .param p0, "nonce"    # J

    .prologue
    .line 83
    sget-object v0, Lcom/nextive/android/billing/market/BillingSecurity;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public static setBase64PublicKey(Ljava/lang/String;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 197
    sput-object p0, Lcom/nextive/android/billing/market/BillingSecurity;->base64EncodedPublicKey:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public static verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "publicKey"    # Ljava/security/PublicKey;
    .param p1, "signedData"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 243
    :try_start_0
    const-string v3, "SHA1withRSA"

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 244
    .local v1, "sig":Ljava/security/Signature;
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 245
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->update([B)V

    .line 246
    invoke-static {p2}, Lcom/nextive/android/billing/market/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 247
    const-string v3, "Signature verification failed."

    invoke-static {v3}, Lcom/nextive/android/billing/market/BillingLogger;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nextive/android/billing/market/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_3

    .line 260
    .end local v1    # "sig":Ljava/security/Signature;
    :goto_0
    return v2

    .line 250
    .restart local v1    # "sig":Ljava/security/Signature;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 251
    .end local v1    # "sig":Ljava/security/Signature;
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "NoSuchAlgorithmException."

    invoke-static {v3}, Lcom/nextive/android/billing/market/BillingLogger;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 254
    .local v0, "e":Ljava/security/InvalidKeyException;
    const-string v3, "Invalid key specification."

    invoke-static {v3}, Lcom/nextive/android/billing/market/BillingLogger;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v0

    .line 256
    .local v0, "e":Ljava/security/SignatureException;
    const-string v3, "Signature exception."

    invoke-static {v3}, Lcom/nextive/android/billing/market/BillingLogger;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    .end local v0    # "e":Ljava/security/SignatureException;
    :catch_3
    move-exception v0

    .line 258
    .local v0, "e":Lcom/nextive/android/billing/market/Base64DecoderException;
    const-string v3, "Base64 decoding failed."

    invoke-static {v3}, Lcom/nextive/android/billing/market/BillingLogger;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static verifyPurchase(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 26
    .param p0, "signedData"    # Ljava/lang/String;
    .param p1, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nextive/android/billing/market/BillingSecurity$VerifiedPurchase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    if-nez p0, :cond_0

    .line 108
    const/16 v22, 0x0

    .line 193
    :goto_0
    return-object v22

    .line 110
    :cond_0
    const/16 v24, 0x0

    .line 112
    .local v24, "verified":Z
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 128
    sget-object v3, Lcom/nextive/android/billing/market/BillingSecurity;->base64EncodedPublicKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/nextive/android/billing/market/BillingSecurity;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v18

    .line 129
    .local v18, "key":Ljava/security/PublicKey;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/nextive/android/billing/market/BillingSecurity;->verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v24

    .line 130
    if-nez v24, :cond_1

    .line 131
    const-string v3, "signature does not match data."

    invoke-static {v3}, Lcom/nextive/android/billing/market/BillingLogger;->log(Ljava/lang/String;)V

    .line 132
    const/16 v22, 0x0

    goto :goto_0

    .line 136
    .end local v18    # "key":Ljava/security/PublicKey;
    :cond_1
    const/4 v15, 0x0

    .line 137
    .local v15, "jObject":Lorg/json/JSONObject;
    const/16 v17, 0x0

    .line 138
    .local v17, "jTransactionsArray":Lorg/json/JSONArray;
    const/16 v21, 0x0

    .line 139
    .local v21, "numTransactions":I
    const-wide/16 v19, 0x0

    .line 141
    .local v19, "nonce":J
    :try_start_0
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v15    # "jObject":Lorg/json/JSONObject;
    .local v16, "jObject":Lorg/json/JSONObject;
    :try_start_1
    const-string v3, "nonce"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v19

    .line 145
    const-string v3, "orders"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 146
    if-eqz v17, :cond_2

    .line 147
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v21

    .line 154
    :cond_2
    invoke-static/range {v19 .. v20}, Lcom/nextive/android/billing/market/BillingSecurity;->isNonceKnown(J)Z

    move-result v3

    if-nez v3, :cond_3

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v25, "Nonce not found: "

    move-object/from16 v0, v25

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nextive/android/billing/market/BillingLogger;->log(Ljava/lang/String;)V

    .line 156
    const/16 v22, 0x0

    goto :goto_0

    .line 149
    .end local v16    # "jObject":Lorg/json/JSONObject;
    .restart local v15    # "jObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v12

    .line 150
    .local v12, "e":Lorg/json/JSONException;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v25, "Parsing Failed! "

    move-object/from16 v0, v25

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nextive/android/billing/market/BillingLogger;->log(Ljava/lang/String;)V

    .line 151
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 159
    .end local v12    # "e":Lorg/json/JSONException;
    .end local v15    # "jObject":Lorg/json/JSONObject;
    .restart local v16    # "jObject":Lorg/json/JSONObject;
    :cond_3
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v22, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nextive/android/billing/market/BillingSecurity$VerifiedPurchase;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    move/from16 v0, v21

    if-lt v13, v0, :cond_4

    .line 192
    invoke-static/range {v19 .. v20}, Lcom/nextive/android/billing/market/BillingSecurity;->removeNonce(J)V

    goto/16 :goto_0

    .line 162
    :cond_4
    :try_start_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 163
    .local v14, "jElement":Lorg/json/JSONObject;
    const-string v3, "purchaseState"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 165
    .local v23, "response":I
    invoke-static/range {v23 .. v23}, Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;->valueOf(I)Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;

    move-result-object v4

    .line 166
    .local v4, "purchaseState":Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;
    const-string v3, "productId"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, "productId":Ljava/lang/String;
    const-string v3, "purchaseTime"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 169
    .local v8, "purchaseTime":J
    const-string v3, "orderId"

    const-string v25, ""

    move-object/from16 v0, v25

    invoke-virtual {v14, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 170
    .local v7, "orderId":Ljava/lang/String;
    const/4 v5, 0x0

    .line 171
    .local v5, "notifyId":Ljava/lang/String;
    const-string v3, "notificationId"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 172
    const-string v3, "notificationId"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 175
    :cond_5
    const-string v3, "developerPayload"

    const/16 v25, 0x0

    .line 174
    move-object/from16 v0, v25

    invoke-virtual {v14, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 179
    .local v10, "developerPayload":Ljava/lang/String;
    sget-boolean v11, Lcom/nextive/android/billing/market/BillingConstants;->USE_MOCK_DATA:Z

    .line 180
    .local v11, "debug":Z
    if-nez v11, :cond_6

    .line 181
    sget-object v3, Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;->PURCHASED:Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;

    if-ne v4, v3, :cond_6

    .line 182
    if-nez v24, :cond_6

    .line 161
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 185
    :cond_6
    new-instance v3, Lcom/nextive/android/billing/market/BillingSecurity$VerifiedPurchase;

    .line 186
    invoke-direct/range {v3 .. v10}, Lcom/nextive/android/billing/market/BillingSecurity$VerifiedPurchase;-><init>(Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 185
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 188
    .end local v4    # "purchaseState":Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;
    .end local v5    # "notifyId":Ljava/lang/String;
    .end local v6    # "productId":Ljava/lang/String;
    .end local v7    # "orderId":Ljava/lang/String;
    .end local v8    # "purchaseTime":J
    .end local v10    # "developerPayload":Ljava/lang/String;
    .end local v11    # "debug":Z
    .end local v14    # "jElement":Lorg/json/JSONObject;
    .end local v23    # "response":I
    :catch_1
    move-exception v12

    .line 189
    .restart local v12    # "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v25, "JSON exception: "

    move-object/from16 v0, v25

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nextive/android/billing/market/BillingLogger;->log(Ljava/lang/String;)V

    .line 190
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 149
    .end local v12    # "e":Lorg/json/JSONException;
    .end local v13    # "i":I
    .end local v22    # "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nextive/android/billing/market/BillingSecurity$VerifiedPurchase;>;"
    :catch_2
    move-exception v12

    move-object/from16 v15, v16

    .end local v16    # "jObject":Lorg/json/JSONObject;
    .restart local v15    # "jObject":Lorg/json/JSONObject;
    goto/16 :goto_1
.end method
