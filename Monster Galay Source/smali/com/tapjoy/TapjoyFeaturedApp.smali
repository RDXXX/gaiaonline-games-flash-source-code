.class public Lcom/tapjoy/TapjoyFeaturedApp;
.super Ljava/lang/Object;
.source "TapjoyFeaturedApp.java"


# static fields
.field private static featuredAppNotifier:Lcom/tapjoy/TapjoyFeaturedAppNotifier;

.field public static featuredAppURLParams:Ljava/lang/String;

.field private static tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;


# instance fields
.field final TAPJOY_FEATURED_APP:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private currencyID:Ljava/lang/String;

.field private displayCount:I

.field private featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyFeaturedApp;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    .line 34
    const/4 v0, 0x5

    iput v0, p0, Lcom/tapjoy/TapjoyFeaturedApp;->displayCount:I

    .line 36
    const-string v0, "Featured App"

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedApp;->TAPJOY_FEATURED_APP:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/tapjoy/TapjoyFeaturedApp;->context:Landroid/content/Context;

    .line 45
    new-instance v0, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyFeaturedApp;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    .line 46
    return-void
.end method

.method static synthetic access$0()Lcom/tapjoy/TapjoyURLConnection;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/tapjoy/TapjoyFeaturedApp;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tapjoy/TapjoyFeaturedApp;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyFeaturedApp;->buildResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2()Lcom/tapjoy/TapjoyFeaturedAppNotifier;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppNotifier:Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    return-object v0
.end method

.method private buildResponse(Ljava/lang/String;)Z
    .locals 10
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 153
    const/4 v6, 0x0

    .line 155
    .local v6, "retValue":Z
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 161
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    const-string v7, "UTF-8"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 163
    .local v5, "is":Ljava/io/InputStream;
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 164
    .local v2, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v2, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 166
    .local v1, "document":Lorg/w3c/dom/Document;
    iget-object v7, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    const-string v8, "Cost"

    invoke-interface {v1, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-static {v8}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/tapjoy/TapjoyFeaturedAppObject;->cost:Ljava/lang/String;

    .line 168
    const-string v7, "Amount"

    invoke-interface {v1, v7}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-static {v7}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "amount":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 171
    iget-object v7, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/tapjoy/TapjoyFeaturedAppObject;->amount:I

    .line 173
    :cond_0
    iget-object v7, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    const-string v8, "Description"

    invoke-interface {v1, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-static {v8}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/tapjoy/TapjoyFeaturedAppObject;->description:Ljava/lang/String;

    .line 174
    iget-object v7, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    const-string v8, "IconURL"

    invoke-interface {v1, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-static {v8}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/tapjoy/TapjoyFeaturedAppObject;->iconURL:Ljava/lang/String;

    .line 175
    iget-object v7, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    const-string v8, "Name"

    invoke-interface {v1, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-static {v8}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/tapjoy/TapjoyFeaturedAppObject;->name:Ljava/lang/String;

    .line 176
    iget-object v7, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    const-string v8, "RedirectURL"

    invoke-interface {v1, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-static {v8}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/tapjoy/TapjoyFeaturedAppObject;->redirectURL:Ljava/lang/String;

    .line 177
    iget-object v7, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    const-string v8, "StoreID"

    invoke-interface {v1, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-static {v8}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/tapjoy/TapjoyFeaturedAppObject;->storeID:Ljava/lang/String;

    .line 178
    iget-object v7, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    const-string v8, "FullScreenAdURL"

    invoke-interface {v1, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-static {v8}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/tapjoy/TapjoyFeaturedAppObject;->fullScreenAdURL:Ljava/lang/String;

    .line 180
    const-string v7, "Featured App"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "cost: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    iget-object v9, v9, Lcom/tapjoy/TapjoyFeaturedAppObject;->cost:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v7, "Featured App"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "amount: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    iget v9, v9, Lcom/tapjoy/TapjoyFeaturedAppObject;->amount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v7, "Featured App"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "description: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    iget-object v9, v9, Lcom/tapjoy/TapjoyFeaturedAppObject;->description:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v7, "Featured App"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "iconURL: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    iget-object v9, v9, Lcom/tapjoy/TapjoyFeaturedAppObject;->iconURL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v7, "Featured App"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "name: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    iget-object v9, v9, Lcom/tapjoy/TapjoyFeaturedAppObject;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v7, "Featured App"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "redirectURL: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    iget-object v9, v9, Lcom/tapjoy/TapjoyFeaturedAppObject;->redirectURL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v7, "Featured App"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "storeID: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    iget-object v9, v9, Lcom/tapjoy/TapjoyFeaturedAppObject;->storeID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v7, "Featured App"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "fullScreenAdURL: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    iget-object v9, v9, Lcom/tapjoy/TapjoyFeaturedAppObject;->fullScreenAdURL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v7, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    iget-object v7, v7, Lcom/tapjoy/TapjoyFeaturedAppObject;->fullScreenAdURL:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    iget-object v7, v7, Lcom/tapjoy/TapjoyFeaturedAppObject;->fullScreenAdURL:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_3

    .line 191
    :cond_1
    const/4 v6, 0x0

    .line 201
    .end local v0    # "amount":Ljava/lang/String;
    .end local v1    # "document":Lorg/w3c/dom/Document;
    .end local v2    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "is":Ljava/io/InputStream;
    :goto_0
    if-eqz v6, :cond_5

    .line 204
    iget-object v7, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    iget-object v7, v7, Lcom/tapjoy/TapjoyFeaturedAppObject;->storeID:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/tapjoy/TapjoyFeaturedApp;->getDisplayCountForStoreID(Ljava/lang/String;)I

    move-result v7

    iget v8, p0, Lcom/tapjoy/TapjoyFeaturedApp;->displayCount:I

    if-ge v7, v8, :cond_4

    .line 207
    sget-object v7, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppNotifier:Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    iget-object v8, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    invoke-interface {v7, v8}, Lcom/tapjoy/TapjoyFeaturedAppNotifier;->getFeaturedAppResponse(Lcom/tapjoy/TapjoyFeaturedAppObject;)V

    .line 211
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getAppID()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    iget-object v8, v8, Lcom/tapjoy/TapjoyFeaturedAppObject;->storeID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 212
    iget-object v7, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    iget-object v7, v7, Lcom/tapjoy/TapjoyFeaturedAppObject;->storeID:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/tapjoy/TapjoyFeaturedApp;->incrementDisplayCountForStoreID(Ljava/lang/String;)V

    .line 225
    :cond_2
    :goto_1
    return v6

    .line 193
    .restart local v0    # "amount":Ljava/lang/String;
    .restart local v1    # "document":Lorg/w3c/dom/Document;
    .restart local v2    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v5    # "is":Ljava/io/InputStream;
    :cond_3
    const/4 v6, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "amount":Ljava/lang/String;
    .end local v1    # "document":Lorg/w3c/dom/Document;
    .end local v2    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 197
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "Featured App"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Error parsing XML: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    sget-object v7, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppNotifier:Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    const-string v8, "Featured App to display has exceeded display count"

    invoke-interface {v7, v8}, Lcom/tapjoy/TapjoyFeaturedAppNotifier;->getFeaturedAppResponseFailed(Ljava/lang/String;)V

    goto :goto_1

    .line 221
    :cond_5
    sget-object v7, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppNotifier:Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    const-string v8, "Failed to parse XML file from response"

    invoke-interface {v7, v8}, Lcom/tapjoy/TapjoyFeaturedAppNotifier;->getFeaturedAppResponseFailed(Ljava/lang/String;)V

    .line 222
    const/4 v6, 0x1

    goto :goto_1
.end method

.method private getDisplayCountForStoreID(Ljava/lang/String;)I
    .locals 5
    .param p1, "storeID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 237
    iget-object v2, p0, Lcom/tapjoy/TapjoyFeaturedApp;->context:Landroid/content/Context;

    const-string v3, "TapjoyFeaturedAppPrefs"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 238
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1, p1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 240
    .local v0, "count":I
    const-string v2, "Featured App"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getDisplayCount: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", storeID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return v0
.end method

.method private incrementDisplayCountForStoreID(Ljava/lang/String;)V
    .locals 6
    .param p1, "storeID"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 252
    iget-object v3, p0, Lcom/tapjoy/TapjoyFeaturedApp;->context:Landroid/content/Context;

    const-string v4, "TapjoyFeaturedAppPrefs"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 253
    .local v2, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 255
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2, p1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 256
    .local v0, "count":I
    add-int/lit8 v0, v0, 0x1

    .line 258
    const-string v3, "Featured App"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "incrementDisplayCount: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", storeID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 261
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 262
    return-void
.end method


# virtual methods
.method public getFeaturedApp(Lcom/tapjoy/TapjoyFeaturedAppNotifier;)V
    .locals 2
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    .prologue
    .line 55
    const-string v0, "Featured App"

    const-string v1, "Getting Featured App"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/tapjoy/TapjoyFeaturedApp;->getFeaturedApp(Ljava/lang/String;Lcom/tapjoy/TapjoyFeaturedAppNotifier;)V

    .line 58
    return-void
.end method

.method public getFeaturedApp(Ljava/lang/String;Lcom/tapjoy/TapjoyFeaturedAppNotifier;)V
    .locals 3
    .param p1, "theCurrencyID"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/tapjoy/TapjoyFeaturedApp;->currencyID:Ljava/lang/String;

    .line 71
    const-string v0, "Featured App"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Getting Featured App userID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currencyID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyFeaturedApp;->currencyID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sput-object p2, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppNotifier:Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    .line 74
    new-instance v0, Lcom/tapjoy/TapjoyFeaturedAppObject;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyFeaturedAppObject;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    .line 77
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppURLParams:Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppURLParams:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&publisher_user_id="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppURLParams:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/tapjoy/TapjoyFeaturedApp;->currencyID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppURLParams:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&currency_id="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyFeaturedApp;->currencyID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppURLParams:Ljava/lang/String;

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyFeaturedApp$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyFeaturedApp$1;-><init>(Lcom/tapjoy/TapjoyFeaturedApp;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 100
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 101
    return-void
.end method

.method public getFeaturedAppObject()Lcom/tapjoy/TapjoyFeaturedAppObject;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    return-object v0
.end method

.method public setDisplayCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/tapjoy/TapjoyFeaturedApp;->displayCount:I

    .line 142
    return-void
.end method

.method public showFeaturedAppFullScreenAd()V
    .locals 6

    .prologue
    .line 110
    const-string v1, ""

    .line 112
    .local v1, "fullscreenURL":Ljava/lang/String;
    iget-object v3, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    if-eqz v3, :cond_0

    .line 113
    iget-object v3, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    iget-object v1, v3, Lcom/tapjoy/TapjoyFeaturedAppObject;->fullScreenAdURL:Ljava/lang/String;

    .line 115
    :cond_0
    const-string v3, "Featured App"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Displaying Full Screen AD with URL: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 119
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "urlParams":Ljava/lang/String;
    iget-object v3, p0, Lcom/tapjoy/TapjoyFeaturedApp;->currencyID:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tapjoy/TapjoyFeaturedApp;->currencyID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&currency_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TapjoyFeaturedApp;->currencyID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tapjoy/TapjoyFeaturedApp;->context:Landroid/content/Context;

    const-class v4, Lcom/tapjoy/TapjoyFeaturedAppWebView;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .local v0, "featuredAppIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 127
    const-string v3, "USER_ID"

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getUserID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v3, "URL_PARAMS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string v3, "FULLSCREEN_AD_URL"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    iget-object v3, p0, Lcom/tapjoy/TapjoyFeaturedApp;->context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 132
    .end local v0    # "featuredAppIntent":Landroid/content/Intent;
    .end local v2    # "urlParams":Ljava/lang/String;
    :cond_2
    return-void
.end method
