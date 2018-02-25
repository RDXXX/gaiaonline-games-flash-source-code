.class Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "TJCOffersWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCOffersWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TapjoyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJCOffersWebView;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TJCOffersWebView;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TJCOffersWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TJCOffersWebView;Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;-><init>(Lcom/tapjoy/TJCOffersWebView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TJCOffersWebView;

    invoke-static {v0}, Lcom/tapjoy/TJCOffersWebView;->access$0(Lcom/tapjoy/TJCOffersWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 198
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TJCOffersWebView;

    invoke-static {v0}, Lcom/tapjoy/TJCOffersWebView;->access$0(Lcom/tapjoy/TJCOffersWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TJCOffersWebView;

    invoke-static {v0}, Lcom/tapjoy/TJCOffersWebView;->access$0(Lcom/tapjoy/TJCOffersWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 190
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 21
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 205
    const-string v17, "Offers"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "URL = ["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v17, "tjvideo://"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 211
    const/4 v9, 0x0

    .line 218
    .local v9, "index":I
    new-instance v13, Ljava/util/Hashtable;

    invoke-direct {v13}, Ljava/util/Hashtable;-><init>()V

    .line 220
    .local v13, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v17, "://"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const-string v18, "://"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v9, v17, v18

    .line 222
    const/4 v2, 0x0

    .line 223
    .local v2, "KEY":I
    const/4 v3, 0x1

    .line 224
    .local v3, "VALUE":I
    const/4 v12, 0x0

    .line 226
    .local v12, "mode":I
    const-string v16, ""

    .line 227
    .local v16, "word":Ljava/lang/String;
    const-string v11, ""

    .line 228
    .local v11, "key":Ljava/lang/String;
    const-string v14, ""

    .line 230
    .local v14, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_0

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v9, v0, :cond_3

    .line 267
    :cond_0
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_1

    .line 269
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 270
    const-string v17, "Offers"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "k:v: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v13, v11, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_1
    const-string v17, "video_id"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 275
    .local v15, "videoID":Ljava/lang/String;
    const-string v17, "amount"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 276
    .local v6, "currencyAmount":Ljava/lang/String;
    const-string v17, "currency_name"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 277
    .local v7, "currencyName":Ljava/lang/String;
    const-string v17, "click_url"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 279
    .local v5, "clickURL":Ljava/lang/String;
    const-string v17, "Offers"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "videoID: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v17, "Offers"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "currencyAmount: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v17, "Offers"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "currencyName: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v17, "Offers"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "clickURL: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcom/tapjoy/TapjoyVideo;->getInstance()Lcom/tapjoy/TapjoyVideo;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v7, v6, v5}, Lcom/tapjoy/TapjoyVideo;->startVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 286
    const-string v17, "Offers"

    const-string v18, "VIDEO"

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .end local v2    # "KEY":I
    .end local v3    # "VALUE":I
    .end local v5    # "clickURL":Ljava/lang/String;
    .end local v6    # "currencyAmount":Ljava/lang/String;
    .end local v7    # "currencyName":Ljava/lang/String;
    .end local v9    # "index":I
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "mode":I
    .end local v13    # "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "value":Ljava/lang/String;
    .end local v15    # "videoID":Ljava/lang/String;
    .end local v16    # "word":Ljava/lang/String;
    :cond_2
    :goto_1
    const/16 v17, 0x1

    return v17

    .line 232
    .restart local v2    # "KEY":I
    .restart local v3    # "VALUE":I
    .restart local v9    # "index":I
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v12    # "mode":I
    .restart local v13    # "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14    # "value":Ljava/lang/String;
    .restart local v16    # "word":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 233
    .local v4, "c":C
    if-nez v12, :cond_6

    .line 235
    const/16 v17, 0x3d

    move/from16 v0, v17

    if-ne v4, v0, :cond_5

    .line 237
    const/4 v12, 0x1

    .line 238
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 239
    const-string v16, ""

    .line 264
    :cond_4
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 243
    :cond_5
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_2

    .line 247
    :cond_6
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_4

    .line 249
    const/16 v17, 0x26

    move/from16 v0, v17

    if-ne v4, v0, :cond_7

    .line 251
    const/4 v12, 0x0

    .line 252
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 253
    const-string v16, ""

    .line 255
    const-string v17, "Offers"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "k:v: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v13, v11, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 260
    :cond_7
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_2

    .line 291
    .end local v4    # "c":C
    .restart local v5    # "clickURL":Ljava/lang/String;
    .restart local v6    # "currencyAmount":Ljava/lang/String;
    .restart local v7    # "currencyName":Ljava/lang/String;
    .restart local v15    # "videoID":Ljava/lang/String;
    :cond_8
    const-string v17, "Offers"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Unable to play video: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TJCOffersWebView;

    move-object/from16 v17, v0

    new-instance v18, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TJCOffersWebView;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const-string v19, "Unable to play video."

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const-string v19, "OK"

    new-instance v20, Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient$1;

    invoke-direct/range {v20 .. v21}, Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient$1;-><init>(Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 298
    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    .line 292
    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TJCOffersWebView;->access$1(Lcom/tapjoy/TJCOffersWebView;Landroid/app/Dialog;)V

    .line 302
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TJCOffersWebView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/tapjoy/TJCOffersWebView;->access$2(Lcom/tapjoy/TJCOffersWebView;)Landroid/app/Dialog;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 304
    :catch_0
    move-exception v8

    .line 306
    .local v8, "e":Ljava/lang/Exception;
    const-string v17, "Offers"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "e: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 312
    .end local v2    # "KEY":I
    .end local v3    # "VALUE":I
    .end local v5    # "clickURL":Ljava/lang/String;
    .end local v6    # "currencyAmount":Ljava/lang/String;
    .end local v7    # "currencyName":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "index":I
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "mode":I
    .end local v13    # "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "value":Ljava/lang/String;
    .end local v15    # "videoID":Ljava/lang/String;
    .end local v16    # "word":Ljava/lang/String;
    :cond_9
    const-string v17, "ws.tapjoyads.com"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 314
    const-string v17, "Offers"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Open redirecting URL = ["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {p1 .. p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 320
    :cond_a
    const-string v17, "Offers"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Opening URL in new browser = ["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    new-instance v10, Landroid/content/Intent;

    const-string v17, "android.intent.action.VIEW"

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 322
    .local v10, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TJCOffersWebView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/tapjoy/TJCOffersWebView;->startActivity(Landroid/content/Intent;)V

    .line 324
    const-string v17, "Offers"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "skipOfferWall: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TJCOffersWebView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/tapjoy/TJCOffersWebView;->access$3(Lcom/tapjoy/TJCOffersWebView;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TJCOffersWebView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/tapjoy/TJCOffersWebView;->access$3(Lcom/tapjoy/TJCOffersWebView;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TJCOffersWebView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tapjoy/TJCOffersWebView;->finish()V

    goto/16 :goto_1
.end method
