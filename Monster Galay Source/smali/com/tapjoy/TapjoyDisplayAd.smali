.class public Lcom/tapjoy/TapjoyDisplayAd;
.super Ljava/lang/Object;
.source "TapjoyDisplayAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TapjoyDisplayAd$RefreshTimer;
    }
.end annotation


# static fields
.field private static final DECODE_TABLE:[B

.field private static final MASK_8BITS:I = 0xff

.field private static final PAD:B = 0x3dt

.field private static adClickURL:Ljava/lang/String;

.field private static displayAdNotifier:Lcom/tapjoy/TapjoyDisplayAdNotifier;

.field private static displayAdSize:Ljava/lang/String;

.field public static displayAdURLParams:Ljava/lang/String;

.field private static tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;


# instance fields
.field final TAPJOY_DISPLAY_AD:Ljava/lang/String;

.field adView:Landroid/view/View;

.field private autoRefresh:Z

.field bitmapImage:Landroid/graphics/Bitmap;

.field private buffer:[B

.field private context:Landroid/content/Context;

.field private eof:Z

.field private modulus:I

.field private pos:I

.field timer:Ljava/util/Timer;

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x3f

    const/16 v4, 0x3e

    const/4 v3, -0x1

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyDisplayAd;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    .line 287
    const/16 v0, 0x7b

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 288
    aput-byte v3, v0, v1

    aput-byte v3, v0, v6

    aput-byte v3, v0, v7

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    aput-byte v3, v0, v1

    const/16 v1, 0xa

    aput-byte v3, v0, v1

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    aput-byte v3, v0, v1

    const/16 v1, 0xe

    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    .line 289
    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    aput-byte v3, v0, v1

    const/16 v1, 0x21

    aput-byte v3, v0, v1

    const/16 v1, 0x22

    .line 290
    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v3, v0, v1

    const/16 v1, 0x29

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v3, v0, v1

    const/16 v1, 0x2b

    aput-byte v4, v0, v1

    const/16 v1, 0x2c

    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    aput-byte v4, v0, v1

    const/16 v1, 0x2e

    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    aput-byte v5, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    .line 291
    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    aput-byte v3, v0, v1

    aput-byte v3, v0, v4

    aput-byte v3, v0, v5

    const/16 v1, 0x40

    aput-byte v3, v0, v1

    const/16 v1, 0x42

    aput-byte v6, v0, v1

    const/16 v1, 0x43

    aput-byte v7, v0, v1

    const/16 v1, 0x44

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    .line 292
    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    .line 293
    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    aput-byte v3, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    aput-byte v3, v0, v1

    const/16 v1, 0x5f

    aput-byte v5, v0, v1

    const/16 v1, 0x60

    aput-byte v3, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    .line 294
    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    .line 287
    sput-object v0, Lcom/tapjoy/TapjoyDisplayAd;->DECODE_TABLE:[B

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "Display Ad"

    iput-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd;->TAPJOY_DISPLAY_AD:Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/tapjoy/TapjoyDisplayAdSize;->TJC_AD_BANNERSIZE_320X50:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyDisplayAd;->displayAdSize:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/tapjoy/TapjoyDisplayAd;->context:Landroid/content/Context;

    .line 57
    new-instance v0, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyDisplayAd;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    .line 58
    return-void
.end method

.method static synthetic access$0()Lcom/tapjoy/TapjoyDisplayAdNotifier;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/tapjoy/TapjoyDisplayAd;->displayAdNotifier:Lcom/tapjoy/TapjoyDisplayAdNotifier;

    return-object v0
.end method

.method static synthetic access$1()Lcom/tapjoy/TapjoyURLConnection;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/tapjoy/TapjoyDisplayAd;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    return-object v0
.end method

.method static synthetic access$2(Lcom/tapjoy/TapjoyDisplayAd;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyDisplayAd;->buildResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/tapjoy/TapjoyDisplayAd;->adClickURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/tapjoy/TapjoyDisplayAd;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd;->context:Landroid/content/Context;

    return-object v0
.end method

.method private buildResponse(Ljava/lang/String;)Z
    .locals 12
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 160
    const/4 v7, 0x0

    .line 162
    .local v7, "retValue":Z
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 168
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 170
    .local v5, "is":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 171
    .local v1, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 173
    .local v0, "document":Lorg/w3c/dom/Document;
    const-string v8, "ClickURL"

    invoke-interface {v0, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-static {v8}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/tapjoy/TapjoyDisplayAd;->adClickURL:Ljava/lang/String;

    .line 174
    const-string v8, "Image"

    invoke-interface {v0, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-static {v8}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "image_data":Ljava/lang/String;
    const-string v8, "Display Ad"

    const-string v9, "decoding..."

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/tapjoy/TapjoyDisplayAd;->decodeBase64([BII)V

    .line 187
    const-string v8, "Display Ad"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "pos: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/tapjoy/TapjoyDisplayAd;->pos:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v8, "Display Ad"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "buffer_size: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/tapjoy/TapjoyDisplayAd;->buffer:[B

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v8, p0, Lcom/tapjoy/TapjoyDisplayAd;->buffer:[B

    const/4 v9, 0x0

    iget v10, p0, Lcom/tapjoy/TapjoyDisplayAd;->pos:I

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/tapjoy/TapjoyDisplayAd;->bitmapImage:Landroid/graphics/Bitmap;

    .line 196
    const-string v8, "Display Ad"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "image: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/tapjoy/TapjoyDisplayAd;->bitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/tapjoy/TapjoyDisplayAd;->bitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v8, Landroid/view/View;

    iget-object v9, p0, Lcom/tapjoy/TapjoyDisplayAd;->context:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/tapjoy/TapjoyDisplayAd;->adView:Landroid/view/View;

    .line 202
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    iget-object v8, p0, Lcom/tapjoy/TapjoyDisplayAd;->bitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/tapjoy/TapjoyDisplayAd;->bitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v6, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 203
    .local v6, "layout":Landroid/view/ViewGroup$LayoutParams;
    iget-object v8, p0, Lcom/tapjoy/TapjoyDisplayAd;->adView:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object v8, p0, Lcom/tapjoy/TapjoyDisplayAd;->adView:Landroid/view/View;

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v10, p0, Lcom/tapjoy/TapjoyDisplayAd;->bitmapImage:Landroid/graphics/Bitmap;

    invoke-direct {v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    iget-object v8, p0, Lcom/tapjoy/TapjoyDisplayAd;->adView:Landroid/view/View;

    new-instance v9, Lcom/tapjoy/TapjoyDisplayAd$2;

    invoke-direct {v9, p0}, Lcom/tapjoy/TapjoyDisplayAd$2;-><init>(Lcom/tapjoy/TapjoyDisplayAd;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    const-string v8, "Display Ad"

    const-string v9, "notify displayAdNotifier"

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object v8, Lcom/tapjoy/TapjoyDisplayAd;->displayAdNotifier:Lcom/tapjoy/TapjoyDisplayAdNotifier;

    iget-object v9, p0, Lcom/tapjoy/TapjoyDisplayAd;->adView:Landroid/view/View;

    invoke-interface {v8, v9}, Lcom/tapjoy/TapjoyDisplayAdNotifier;->getDisplayAdResponse(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    const/4 v7, 0x1

    .line 233
    .end local v0    # "document":Lorg/w3c/dom/Document;
    .end local v1    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "image_data":Ljava/lang/String;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "layout":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    iget-object v8, p0, Lcom/tapjoy/TapjoyDisplayAd;->timer:Ljava/util/Timer;

    if-eqz v8, :cond_0

    .line 235
    iget-object v8, p0, Lcom/tapjoy/TapjoyDisplayAd;->timer:Ljava/util/Timer;

    invoke-virtual {v8}, Ljava/util/Timer;->cancel()V

    .line 236
    iput-object v11, p0, Lcom/tapjoy/TapjoyDisplayAd;->timer:Ljava/util/Timer;

    .line 240
    :cond_0
    iget-boolean v8, p0, Lcom/tapjoy/TapjoyDisplayAd;->autoRefresh:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/tapjoy/TapjoyDisplayAd;->timer:Ljava/util/Timer;

    if-nez v8, :cond_1

    .line 242
    const-string v8, "Display Ad"

    const-string v9, "will refresh banner ad in 15s..."

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v8, Ljava/util/Timer;

    invoke-direct {v8}, Ljava/util/Timer;-><init>()V

    iput-object v8, p0, Lcom/tapjoy/TapjoyDisplayAd;->timer:Ljava/util/Timer;

    .line 244
    iget-object v8, p0, Lcom/tapjoy/TapjoyDisplayAd;->timer:Ljava/util/Timer;

    new-instance v9, Lcom/tapjoy/TapjoyDisplayAd$RefreshTimer;

    invoke-direct {v9, p0, v11}, Lcom/tapjoy/TapjoyDisplayAd$RefreshTimer;-><init>(Lcom/tapjoy/TapjoyDisplayAd;Lcom/tapjoy/TapjoyDisplayAd$RefreshTimer;)V

    const-wide/16 v10, 0x3a98

    invoke-virtual {v8, v9, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 247
    :cond_1
    const-string v8, "Display Ad"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "return: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return v7

    .line 227
    :catch_0
    move-exception v2

    .line 229
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "Display Ad"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Error parsing XML: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method decodeBase64([BII)V
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 360
    array-length v4, p1

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->buffer:[B

    .line 361
    iput v5, p0, Lcom/tapjoy/TapjoyDisplayAd;->pos:I

    .line 362
    iput-boolean v5, p0, Lcom/tapjoy/TapjoyDisplayAd;->eof:Z

    .line 363
    iput v5, p0, Lcom/tapjoy/TapjoyDisplayAd;->modulus:I

    .line 365
    if-gez p3, :cond_0

    .line 367
    iput-boolean v7, p0, Lcom/tapjoy/TapjoyDisplayAd;->eof:Z

    .line 370
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, p2

    .end local p2    # "inPos":I
    .local v2, "inPos":I
    :goto_0
    if-lt v1, p3, :cond_2

    move p2, v2

    .line 405
    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    :goto_1
    iget-boolean v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->eof:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->modulus:I

    if-eqz v4, :cond_1

    .line 407
    iget v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->x:I

    shl-int/lit8 v4, v4, 0x6

    iput v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->x:I

    .line 408
    iget v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->modulus:I

    packed-switch v4, :pswitch_data_0

    .line 420
    :cond_1
    :goto_2
    return-void

    .line 372
    .end local p2    # "inPos":I
    .restart local v2    # "inPos":I
    :cond_2
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    aget-byte v0, p1, v2

    .line 374
    .local v0, "b":B
    const/16 v4, 0x3d

    if-ne v0, v4, :cond_3

    .line 377
    iput-boolean v7, p0, Lcom/tapjoy/TapjoyDisplayAd;->eof:Z

    goto :goto_1

    .line 382
    :cond_3
    if-ltz v0, :cond_4

    sget-object v4, Lcom/tapjoy/TapjoyDisplayAd;->DECODE_TABLE:[B

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 384
    sget-object v4, Lcom/tapjoy/TapjoyDisplayAd;->DECODE_TABLE:[B

    aget-byte v3, v4, v0

    .line 385
    .local v3, "result":I
    if-ltz v3, :cond_4

    .line 387
    iget v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->modulus:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->modulus:I

    rem-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->modulus:I

    .line 388
    iget v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->x:I

    shl-int/lit8 v4, v4, 0x6

    add-int/2addr v4, v3

    iput v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->x:I

    .line 389
    iget v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->modulus:I

    if-nez v4, :cond_4

    .line 391
    iget-object v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->buffer:[B

    iget v5, p0, Lcom/tapjoy/TapjoyDisplayAd;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/tapjoy/TapjoyDisplayAd;->pos:I

    iget v6, p0, Lcom/tapjoy/TapjoyDisplayAd;->x:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 392
    iget-object v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->buffer:[B

    iget v5, p0, Lcom/tapjoy/TapjoyDisplayAd;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/tapjoy/TapjoyDisplayAd;->pos:I

    iget v6, p0, Lcom/tapjoy/TapjoyDisplayAd;->x:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 393
    iget-object v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->buffer:[B

    iget v5, p0, Lcom/tapjoy/TapjoyDisplayAd;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/tapjoy/TapjoyDisplayAd;->pos:I

    iget v6, p0, Lcom/tapjoy/TapjoyDisplayAd;->x:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 370
    .end local v3    # "result":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    move v2, p2

    .end local p2    # "inPos":I
    .restart local v2    # "inPos":I
    goto :goto_0

    .line 411
    .end local v0    # "b":B
    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    :pswitch_0
    iget v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->x:I

    shl-int/lit8 v4, v4, 0x6

    iput v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->x:I

    .line 412
    iget-object v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->buffer:[B

    iget v5, p0, Lcom/tapjoy/TapjoyDisplayAd;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/tapjoy/TapjoyDisplayAd;->pos:I

    iget v6, p0, Lcom/tapjoy/TapjoyDisplayAd;->x:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_2

    .line 415
    :pswitch_1
    iget-object v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->buffer:[B

    iget v5, p0, Lcom/tapjoy/TapjoyDisplayAd;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/tapjoy/TapjoyDisplayAd;->pos:I

    iget v6, p0, Lcom/tapjoy/TapjoyDisplayAd;->x:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 416
    iget-object v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->buffer:[B

    iget v5, p0, Lcom/tapjoy/TapjoyDisplayAd;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/tapjoy/TapjoyDisplayAd;->pos:I

    iget v6, p0, Lcom/tapjoy/TapjoyDisplayAd;->x:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto/16 :goto_2

    .line 408
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public enableAutoRefresh(Z)V
    .locals 0
    .param p1, "shouldAutoRefresh"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/tapjoy/TapjoyDisplayAd;->autoRefresh:Z

    .line 92
    return-void
.end method

.method public getBannerAdSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/tapjoy/TapjoyDisplayAd;->displayAdSize:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayAd(Lcom/tapjoy/TapjoyDisplayAdNotifier;)V
    .locals 2
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyDisplayAdNotifier;

    .prologue
    .line 101
    const-string v0, "Display Ad"

    const-string v1, "Get display ad"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/tapjoy/TapjoyDisplayAd;->getDisplayAd(Ljava/lang/String;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V

    .line 103
    return-void
.end method

.method public getDisplayAd(Ljava/lang/String;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V
    .locals 3
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyDisplayAdNotifier;

    .prologue
    .line 113
    const-string v0, "Display Ad"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get display ad, currencyID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sput-object p2, Lcom/tapjoy/TapjoyDisplayAd;->displayAdNotifier:Lcom/tapjoy/TapjoyDisplayAdNotifier;

    .line 118
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyDisplayAd;->displayAdURLParams:Ljava/lang/String;

    .line 119
    sget-object v0, Lcom/tapjoy/TapjoyDisplayAd;->displayAdURLParams:Ljava/lang/String;

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

    sput-object v0, Lcom/tapjoy/TapjoyDisplayAd;->displayAdURLParams:Ljava/lang/String;

    .line 120
    sget-object v0, Lcom/tapjoy/TapjoyDisplayAd;->displayAdURLParams:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&size="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TapjoyDisplayAd;->displayAdSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyDisplayAd;->displayAdURLParams:Ljava/lang/String;

    .line 123
    if-eqz p1, :cond_0

    .line 124
    sget-object v0, Lcom/tapjoy/TapjoyDisplayAd;->displayAdURLParams:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&currency_id="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyDisplayAd;->displayAdURLParams:Ljava/lang/String;

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyDisplayAd$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyDisplayAd$1;-><init>(Lcom/tapjoy/TapjoyDisplayAd;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 149
    return-void
.end method

.method public setBannerAdSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "dimensions"    # Ljava/lang/String;

    .prologue
    .line 71
    sput-object p1, Lcom/tapjoy/TapjoyDisplayAd;->displayAdSize:Ljava/lang/String;

    .line 72
    return-void
.end method
