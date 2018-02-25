.class public final Lcom/inmobi/androidsdk/impl/XMLParser;
.super Ljava/lang/Object;
.source "XMLParser.java"


# instance fields
.field private ad:Lcom/inmobi/androidsdk/impl/AdUnit;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAdUnitFromResponseData(Ljava/io/Reader;)Lcom/inmobi/androidsdk/impl/AdUnit;
    .locals 11
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/inmobi/androidsdk/impl/AdConstructionException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 25
    new-instance v7, Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-direct {v7}, Lcom/inmobi/androidsdk/impl/AdUnit;-><init>()V

    iput-object v7, p0, Lcom/inmobi/androidsdk/impl/XMLParser;->ad:Lcom/inmobi/androidsdk/impl/AdUnit;

    .line 27
    const/4 v3, 0x0

    .line 30
    .local v3, "isAdPresent":Z
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 32
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 34
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 35
    .local v6, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v6, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 36
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 37
    .local v1, "eventType":I
    const/4 v5, 0x0

    .line 38
    .local v5, "startName":Ljava/lang/String;
    :goto_0
    if-ne v1, v10, :cond_1

    .line 90
    if-nez v3, :cond_0

    .line 91
    const-string v7, "InmobiAndroidSDK2.3"

    .line 92
    const-string v8, "No Fill. Please try again after sometime."

    .line 91
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    iget-object v7, p0, Lcom/inmobi/androidsdk/impl/XMLParser;->ad:Lcom/inmobi/androidsdk/impl/AdUnit;

    return-object v7

    .line 40
    :cond_1
    if-eqz v1, :cond_2

    .line 44
    const/4 v7, 0x2

    if-ne v1, v7, :cond_3

    .line 45
    :try_start_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 47
    if-eqz v5, :cond_2

    const-string v7, "Ad"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 49
    const/4 v3, 0x1

    .line 50
    iget-object v7, p0, Lcom/inmobi/androidsdk/impl/XMLParser;->ad:Lcom/inmobi/androidsdk/impl/AdUnit;

    .line 51
    const/4 v8, 0x0

    const-string v9, "width"

    .line 50
    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/inmobi/androidsdk/impl/AdUnit;->setWidth(I)V

    .line 52
    iget-object v7, p0, Lcom/inmobi/androidsdk/impl/XMLParser;->ad:Lcom/inmobi/androidsdk/impl/AdUnit;

    .line 53
    const/4 v8, 0x0

    const-string v9, "height"

    .line 52
    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/inmobi/androidsdk/impl/AdUnit;->setHeight(I)V

    .line 54
    iget-object v7, p0, Lcom/inmobi/androidsdk/impl/XMLParser;->ad:Lcom/inmobi/androidsdk/impl/AdUnit;

    .line 55
    const/4 v8, 0x0

    const-string v9, "actionName"

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 54
    invoke-static {v8}, Lcom/inmobi/androidsdk/impl/AdUnit;->adActionTypefromString(Ljava/lang/String;)Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/inmobi/androidsdk/impl/AdUnit;->setAdActionType(Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;)V

    .line 56
    iget-object v7, p0, Lcom/inmobi/androidsdk/impl/XMLParser;->ad:Lcom/inmobi/androidsdk/impl/AdUnit;

    .line 57
    const/4 v8, 0x0

    const-string v9, "type"

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 56
    invoke-static {v8}, Lcom/inmobi/androidsdk/impl/AdUnit;->adTypefromString(Ljava/lang/String;)Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/inmobi/androidsdk/impl/AdUnit;->setAdType(Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    :cond_2
    :goto_1
    :try_start_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    goto :goto_0

    .line 59
    :cond_3
    const/4 v7, 0x3

    if-ne v1, v7, :cond_4

    .line 62
    const/4 v5, 0x0

    goto :goto_1

    .line 63
    :cond_4
    const/4 v7, 0x5

    if-ne v1, v7, :cond_5

    .line 67
    :try_start_3
    iget-object v7, p0, Lcom/inmobi/androidsdk/impl/XMLParser;->ad:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/inmobi/androidsdk/impl/AdUnit;->setCDATABlock(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 95
    .end local v1    # "eventType":I
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "startName":Ljava/lang/String;
    .end local v6    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v4

    .line 96
    .local v4, "parseException":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v7, Lcom/inmobi/androidsdk/impl/AdConstructionException;

    const-string v8, "Exception constructing Ad"

    invoke-direct {v7, v8, v4}, Lcom/inmobi/androidsdk/impl/AdConstructionException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParserException;)V

    throw v7

    .line 68
    .end local v4    # "parseException":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "eventType":I
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5    # "startName":Ljava/lang/String;
    .restart local v6    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    const/4 v7, 0x4

    if-ne v1, v7, :cond_2

    .line 71
    if-eqz v5, :cond_2

    .line 72
    :try_start_4
    const-string v7, "AdURL"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 73
    iget-object v7, p0, Lcom/inmobi/androidsdk/impl/XMLParser;->ad:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/inmobi/androidsdk/impl/AdUnit;->setTargetUrl(Ljava/lang/String;)V

    .line 74
    iget-object v7, p0, Lcom/inmobi/androidsdk/impl/XMLParser;->ad:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/inmobi/androidsdk/impl/AdUnit;->setDefaultTargetUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 82
    :catch_1
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "InmobiAndroidSDK2.3"

    .line 85
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Exception occured while parsing"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 84
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method
