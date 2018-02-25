.class final Lcom/flurry/android/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static volatile A:J

.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field private static volatile c:Ljava/lang/String;

.field private static volatile d:Ljava/lang/String;

.field private static volatile e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:I


# instance fields
.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:Lcom/flurry/android/z;

.field private p:Z

.field private volatile q:Z

.field private r:Ljava/lang/String;

.field private s:Ljava/util/Map;

.field private t:Landroid/os/Handler;

.field private u:Z

.field private transient v:Ljava/util/Map;

.field private w:Lcom/flurry/android/ag;

.field private x:Ljava/util/List;

.field private y:Ljava/util/Map;

.field private z:Lcom/flurry/android/AppCircleCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const-string v0, "market://"

    sput-object v0, Lcom/flurry/android/u;->c:Ljava/lang/String;

    .line 36
    const-string v0, "market://details?id="

    sput-object v0, Lcom/flurry/android/u;->d:Ljava/lang/String;

    .line 37
    const-string v0, "https://market.android.com/details?id="

    sput-object v0, Lcom/flurry/android/u;->e:Ljava/lang/String;

    .line 38
    const-string v0, "com.flurry.android.ACTION_CATALOG"

    sput-object v0, Lcom/flurry/android/u;->f:Ljava/lang/String;

    .line 43
    const-string v0, "FlurryAgent"

    sput-object v0, Lcom/flurry/android/u;->a:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 45
    const/16 v0, 0x1388

    sput v0, Lcom/flurry/android/u;->g:I

    .line 54
    const-string v0, ""

    sput-object v0, Lcom/flurry/android/u;->b:Ljava/lang/String;

    .line 91
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/flurry/android/u;->A:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/u;->p:Z

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/u;->s:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/u;->v:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/u;->x:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/u;->y:Ljava/util/Map;

    .line 97
    new-instance v0, Lcom/flurry/android/z;

    invoke-direct {v0}, Lcom/flurry/android/z;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/u;->o:Lcom/flurry/android/z;

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/flurry/android/u;)Lcom/flurry/android/AppCircleCallback;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/flurry/android/u;->z:Lcom/flurry/android/AppCircleCallback;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/flurry/android/v;)Lcom/flurry/android/Offer;
    .locals 8

    .prologue
    .line 533
    new-instance v3, Lcom/flurry/android/p;

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/flurry/android/u;->j()J

    move-result-wide v1

    invoke-direct {v3, p1, v0, v1, v2}, Lcom/flurry/android/p;-><init>(Ljava/lang/String;BJ)V

    .line 534
    invoke-direct {p0, v3}, Lcom/flurry/android/u;->c(Lcom/flurry/android/p;)V

    .line 535
    new-instance v0, Lcom/flurry/android/f;

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/flurry/android/u;->j()J

    move-result-wide v4

    invoke-direct {v0, v1, v4, v5}, Lcom/flurry/android/f;-><init>(BJ)V

    invoke-virtual {v3, v0}, Lcom/flurry/android/p;->a(Lcom/flurry/android/f;)V

    .line 537
    iput-object p2, v3, Lcom/flurry/android/p;->b:Lcom/flurry/android/v;

    .line 538
    iget-object v0, p0, Lcom/flurry/android/u;->o:Lcom/flurry/android/z;

    iget-wide v1, p2, Lcom/flurry/android/v;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/z;->a(J)Lcom/flurry/android/al;

    move-result-object v0

    .line 539
    if-nez v0, :cond_0

    const-string v6, ""

    .line 540
    :goto_0
    if-nez v0, :cond_1

    const/4 v7, 0x0

    .line 542
    :goto_1
    new-instance v0, Lcom/flurry/android/OfferInSdk;

    sget-wide v1, Lcom/flurry/android/u;->A:J

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    sput-wide v1, Lcom/flurry/android/u;->A:J

    iget-object v4, p2, Lcom/flurry/android/v;->h:Lcom/flurry/android/AdImage;

    iget-object v5, p2, Lcom/flurry/android/v;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/flurry/android/OfferInSdk;-><init>(JLcom/flurry/android/p;Lcom/flurry/android/AdImage;Ljava/lang/String;Ljava/lang/String;I)V

    .line 543
    iget-object v1, p0, Lcom/flurry/android/u;->y:Ljava/util/Map;

    iget-wide v2, v0, Lcom/flurry/android/OfferInSdk;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    new-instance v7, Lcom/flurry/android/Offer;

    iget-wide v1, v0, Lcom/flurry/android/OfferInSdk;->a:J

    iget-object v3, v0, Lcom/flurry/android/OfferInSdk;->f:Lcom/flurry/android/AdImage;

    iget-object v4, v0, Lcom/flurry/android/OfferInSdk;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/flurry/android/OfferInSdk;->d:Ljava/lang/String;

    iget v6, v0, Lcom/flurry/android/OfferInSdk;->e:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/Offer;-><init>(JLcom/flurry/android/AdImage;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v7

    .line 539
    :cond_0
    iget-object v6, v0, Lcom/flurry/android/al;->a:Ljava/lang/String;

    goto :goto_0

    .line 540
    :cond_1
    iget v7, v0, Lcom/flurry/android/al;->c:I

    goto :goto_1
.end method

.method static synthetic a(Lcom/flurry/android/u;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/flurry/android/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 759
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 761
    aget-byte v2, p0, v0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 762
    if-ge v2, v3, :cond_0

    .line 764
    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 771
    :goto_1
    aget-byte v2, p0, v0

    and-int/lit8 v2, v2, 0xf

    .line 772
    if-ge v2, v3, :cond_1

    .line 774
    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 759
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 768
    :cond_0
    add-int/lit8 v2, v2, 0x41

    add-int/lit8 v2, v2, -0xa

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 778
    :cond_1
    add-int/lit8 v2, v2, 0x41

    add-int/lit8 v2, v2, -0xa

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 781
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/lang/Long;)Ljava/util/List;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 619
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/u;->o:Lcom/flurry/android/z;

    invoke-virtual {v0}, Lcom/flurry/android/z;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 621
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 645
    :goto_0
    return-object v0

    .line 624
    :cond_1
    iget-object v1, p0, Lcom/flurry/android/u;->o:Lcom/flurry/android/z;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/flurry/android/z;->a(Ljava/lang/String;)[Lcom/flurry/android/v;

    move-result-object v0

    .line 626
    if-eqz v0, :cond_4

    array-length v1, v0

    if-lez v1, :cond_4

    .line 628
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 629
    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 630
    if-eqz p2, :cond_3

    .line 632
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 634
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/v;

    .line 635
    iget-wide v3, v0, Lcom/flurry/android/v;->a:J

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 637
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 643
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {v1, v7, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 645
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/android/u;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 32
    sget-object v0, Lcom/flurry/android/u;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/flurry/android/u;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/flurry/android/u;->p:Z

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/flurry/android/u;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching Android Market for app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/flurry/android/u;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot launch Marketplace url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/flurry/android/u;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching Android Market website for app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/flurry/android/u;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/flurry/android/u;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected android market url scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 825
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 826
    return-void
.end method

.method private b(Landroid/content/Context;Lcom/flurry/android/p;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 697
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/flurry/android/u;->o()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 698
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 699
    const-string v1, "u"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    if-eqz p2, :cond_0

    .line 703
    const-string v1, "o"

    invoke-virtual {p2}, Lcom/flurry/android/p;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 705
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 706
    return-void
.end method

.method static synthetic b(Lcom/flurry/android/u;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/flurry/android/u;->e(Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/flurry/android/p;)V
    .locals 3

    .prologue
    .line 607
    iget-object v0, p0, Lcom/flurry/android/u;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x7fff

    if-ge v0, v1, :cond_0

    .line 609
    iget-object v0, p0, Lcom/flurry/android/u;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    iget-object v0, p0, Lcom/flurry/android/u;->v:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/flurry/android/p;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 354
    :try_start_0
    sget-object v1, Lcom/flurry/android/u;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 357
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 358
    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 360
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 362
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 364
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p1

    .line 365
    sget-object v1, Lcom/flurry/android/u;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 367
    invoke-direct {p0, p1}, Lcom/flurry/android/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 392
    :cond_0
    :goto_0
    return-object p1

    .line 372
    :cond_1
    sget-object v1, Lcom/flurry/android/u;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot process with responseCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/flurry/android/ah;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when fetching application\'s android market ID, responseCode "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/flurry/android/u;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 378
    :catch_0
    move-exception v1

    .line 380
    sget-object v2, Lcom/flurry/android/u;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown host: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/flurry/android/ah;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v2, p0, Lcom/flurry/android/u;->z:Lcom/flurry/android/AppCircleCallback;

    if-eqz v2, :cond_2

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 384
    invoke-direct {p0, v1}, Lcom/flurry/android/u;->e(Ljava/lang/String;)V

    :cond_2
    move-object p1, v0

    .line 387
    goto :goto_0

    .line 389
    :catch_1
    move-exception v1

    .line 391
    sget-object v2, Lcom/flurry/android/u;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed on url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/flurry/android/ah;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v0

    .line 392
    goto/16 :goto_0
.end method

.method private e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 398
    new-instance v0, Lcom/flurry/android/ae;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/ae;-><init>(Lcom/flurry/android/u;Ljava/lang/String;)V

    .line 412
    invoke-static {v0}, Lcom/flurry/android/u;->a(Ljava/lang/Runnable;)V

    .line 413
    return-void
.end method

.method private declared-synchronized n()Lcom/flurry/android/AdImage;
    .locals 2

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/android/u;->p()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 239
    const/4 v0, 0x0

    .line 241
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/u;->o:Lcom/flurry/android/z;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flurry/android/z;->a(S)Lcom/flurry/android/AdImage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 717
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/flurry/android/u;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method private p()Z
    .locals 2

    .prologue
    .line 857
    iget-boolean v0, p0, Lcom/flurry/android/u;->q:Z

    if-nez v0, :cond_0

    .line 859
    sget-object v0, Lcom/flurry/android/u;->a:Ljava/lang/String;

    const-string v1, "AppCircle is not initialized"

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/u;->r:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 863
    sget-object v0, Lcom/flurry/android/u;->a:Ljava/lang/String;

    const-string v1, "Cannot identify UDID."

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_1
    iget-boolean v0, p0, Lcom/flurry/android/u;->q:Z

    return v0
.end method


# virtual methods
.method final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;
    .locals 2

    .prologue
    .line 594
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/android/u;->p()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 596
    const/4 v0, 0x0

    .line 602
    :goto_0
    monitor-exit p0

    return-object v0

    .line 599
    :cond_0
    :try_start_1
    new-instance v0, Lcom/flurry/android/o;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/flurry/android/o;-><init>(Lcom/flurry/android/u;Landroid/content/Context;Ljava/lang/String;I)V

    .line 600
    iget-object v1, p0, Lcom/flurry/android/u;->w:Lcom/flurry/android/ag;

    invoke-virtual {v1, v0}, Lcom/flurry/android/ag;->a(Lcom/flurry/android/o;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(J)Lcom/flurry/android/AdImage;
    .locals 1

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/android/u;->p()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 223
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/u;->o:Lcom/flurry/android/z;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/z;->b(J)Lcom/flurry/android/AdImage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Lcom/flurry/android/p;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 723
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/flurry/android/p;->b:Lcom/flurry/android/v;

    .line 724
    invoke-virtual {p1}, Lcom/flurry/android/p;->a()J

    move-result-wide v1

    .line 726
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?apik="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/u;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&cid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/flurry/android/v;->e:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&adid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/flurry/android/v;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/u;->r:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&iid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/flurry/android/u;->k:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&sid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/flurry/android/u;->l:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&its="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&hid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/flurry/android/p;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/flurry/android/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&ac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/flurry/android/v;->g:[B

    invoke-static {v0}, Lcom/flurry/android/u;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 738
    iget-object v0, p0, Lcom/flurry/android/u;->s:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/u;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/flurry/android/u;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "c_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/flurry/android/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 743
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/android/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 744
    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 723
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 751
    :cond_0
    :try_start_1
    const-string v0, "&ats="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 753
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method final declared-synchronized a(Landroid/content/Context;Ljava/util/List;Ljava/lang/Long;IZ)Ljava/util/List;
    .locals 11

    .prologue
    .line 550
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/android/u;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 589
    :goto_0
    monitor-exit p0

    return-object v0

    .line 555
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/u;->o:Lcom/flurry/android/z;

    invoke-virtual {v0}, Lcom/flurry/android/z;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    .line 557
    invoke-direct {p0, p2, p3}, Lcom/flurry/android/u;->a(Ljava/util/List;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v9

    .line 559
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 560
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 561
    const/4 v0, 0x0

    move v8, v0

    :goto_1
    if-ge v8, v10, :cond_3

    .line 563
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 564
    iget-object v1, p0, Lcom/flurry/android/u;->o:Lcom/flurry/android/z;

    invoke-virtual {v1, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;)Lcom/flurry/android/e;

    move-result-object v4

    .line 565
    if-eqz v4, :cond_2

    .line 567
    new-instance v3, Lcom/flurry/android/p;

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/flurry/android/u;->j()J

    move-result-wide v5

    invoke-direct {v3, v0, v1, v5, v6}, Lcom/flurry/android/p;-><init>(Ljava/lang/String;BJ)V

    .line 568
    invoke-direct {p0, v3}, Lcom/flurry/android/u;->c(Lcom/flurry/android/p;)V

    .line 570
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 572
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/v;

    .line 573
    iput-object v0, v3, Lcom/flurry/android/p;->b:Lcom/flurry/android/v;

    .line 574
    new-instance v0, Lcom/flurry/android/f;

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/flurry/android/u;->j()J

    move-result-wide v5

    invoke-direct {v0, v1, v5, v6}, Lcom/flurry/android/f;-><init>(BJ)V

    invoke-virtual {v3, v0}, Lcom/flurry/android/p;->a(Lcom/flurry/android/f;)V

    .line 576
    new-instance v0, Lcom/flurry/android/y;

    move-object v1, p1

    move-object v2, p0

    move v5, p4

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/y;-><init>(Landroid/content/Context;Lcom/flurry/android/u;Lcom/flurry/android/p;Lcom/flurry/android/e;IZ)V

    .line 578
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    :cond_1
    :goto_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    .line 583
    :cond_2
    sget-object v1, Lcom/flurry/android/u;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find hook: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/android/ah;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-object v0, v7

    .line 586
    goto/16 :goto_0

    .line 589
    :cond_4
    :try_start_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto/16 :goto_0
.end method

.method final declared-synchronized a(I)V
    .locals 1

    .prologue
    .line 830
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/u;->z:Lcom/flurry/android/AppCircleCallback;

    if-eqz v0, :cond_0

    .line 832
    new-instance v0, Lcom/flurry/android/ad;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/ad;-><init>(Lcom/flurry/android/u;I)V

    .line 842
    invoke-static {v0}, Lcom/flurry/android/u;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 844
    :cond_0
    monitor-exit p0

    return-void

    .line 830
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(JJ)V
    .locals 2

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/flurry/android/u;->l:J

    .line 132
    iput-wide p3, p0, Lcom/flurry/android/u;->m:J

    .line 133
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/android/u;->n:J

    .line 134
    iget-object v0, p0, Lcom/flurry/android/u;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Landroid/content/Context;J)V
    .locals 7

    .prologue
    .line 470
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/android/u;->p()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 490
    :goto_0
    monitor-exit p0

    return-void

    .line 475
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/u;->y:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/OfferInSdk;

    .line 476
    if-nez v0, :cond_1

    .line 478
    sget-object v0, Lcom/flurry/android/u;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find offer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 481
    :cond_1
    :try_start_2
    iget-object v1, v0, Lcom/flurry/android/OfferInSdk;->b:Lcom/flurry/android/p;

    .line 482
    invoke-virtual {p0, v1}, Lcom/flurry/android/u;->b(Lcom/flurry/android/p;)Lcom/flurry/android/p;

    move-result-object v1

    .line 483
    iput-object v1, v0, Lcom/flurry/android/OfferInSdk;->b:Lcom/flurry/android/p;

    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/flurry/android/u;->a(Lcom/flurry/android/p;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 487
    sget-object v3, Lcom/flurry/android/u;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Offer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/flurry/android/OfferInSdk;->a:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " accepted. Sent with cookies: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/flurry/android/u;->s:Ljava/util/Map;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {p0, p1, v1, v2}, Lcom/flurry/android/u;->a(Landroid/content/Context;Lcom/flurry/android/p;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method final declared-synchronized a(Landroid/content/Context;Lcom/flurry/android/a;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 102
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/flurry/android/u;->q:Z

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p2, Lcom/flurry/android/a;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/flurry/android/u;->h:Ljava/lang/String;

    .line 105
    iget-object v1, p2, Lcom/flurry/android/a;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/flurry/android/u;->i:Ljava/lang/String;

    .line 106
    iget-object v1, p2, Lcom/flurry/android/a;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/flurry/android/u;->j:Ljava/lang/String;

    .line 107
    iget-wide v1, p2, Lcom/flurry/android/a;->b:J

    iput-wide v1, p0, Lcom/flurry/android/u;->k:J

    .line 108
    iget-object v1, p2, Lcom/flurry/android/a;->e:Landroid/os/Handler;

    iput-object v1, p0, Lcom/flurry/android/u;->t:Landroid/os/Handler;

    .line 110
    new-instance v1, Lcom/flurry/android/ag;

    iget-object v2, p0, Lcom/flurry/android/u;->t:Landroid/os/Handler;

    sget v3, Lcom/flurry/android/u;->g:I

    invoke-direct {v1, v2, v3}, Lcom/flurry/android/ag;-><init>(Landroid/os/Handler;I)V

    iput-object v1, p0, Lcom/flurry/android/u;->w:Lcom/flurry/android/ag;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 114
    iget-object v1, p0, Lcom/flurry/android/u;->y:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 115
    iget-object v1, p0, Lcom/flurry/android/u;->v:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 116
    iget-object v1, p0, Lcom/flurry/android/u;->o:Lcom/flurry/android/z;

    invoke-virtual {v1, p1, p0, p2}, Lcom/flurry/android/z;->a(Landroid/content/Context;Lcom/flurry/android/u;Lcom/flurry/android/a;)V

    .line 117
    iget-object v1, p0, Lcom/flurry/android/u;->s:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/flurry/android/u;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/flurry/android/u;->p:Z

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/u;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :cond_0
    monitor-exit p0

    return-void

    .line 119
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Landroid/content/Context;Lcom/flurry/android/p;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/android/u;->p()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 347
    :goto_0
    monitor-exit p0

    return-void

    .line 319
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/u;->t:Landroid/os/Handler;

    new-instance v1, Lcom/flurry/android/ak;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/flurry/android/ak;-><init>(Lcom/flurry/android/u;Ljava/lang/String;Landroid/content/Context;Lcom/flurry/android/p;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/android/u;->p()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 287
    :goto_0
    monitor-exit p0

    return-void

    .line 268
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/u;->a(Ljava/util/List;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 271
    new-instance v1, Lcom/flurry/android/p;

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/flurry/android/u;->j()J

    move-result-wide v3

    invoke-direct {v1, p2, v2, v3, v4}, Lcom/flurry/android/p;-><init>(Ljava/lang/String;BJ)V

    .line 272
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/v;

    iput-object v0, v1, Lcom/flurry/android/p;->b:Lcom/flurry/android/v;

    .line 273
    invoke-direct {p0, v1}, Lcom/flurry/android/u;->c(Lcom/flurry/android/p;)V

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/flurry/android/u;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/flurry/android/u;->a(Lcom/flurry/android/p;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-direct {p0, p1, v1, v0}, Lcom/flurry/android/u;->b(Landroid/content/Context;Lcom/flurry/android/p;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 285
    :try_start_2
    sget-object v1, Lcom/flurry/android/u;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to launch promotional canvas for hook: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 280
    :cond_1
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/flurry/android/u;->o()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method final a(Lcom/flurry/android/AppCircleCallback;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/flurry/android/u;->z:Lcom/flurry/android/AppCircleCallback;

    .line 292
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/flurry/android/u;->r:Ljava/lang/String;

    .line 161
    return-void
.end method

.method final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 680
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/u;->s:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    monitor-exit p0

    return-void

    .line 680
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 521
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/android/u;->p()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 529
    :cond_0
    monitor-exit p0

    return-void

    .line 525
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 527
    iget-object v2, p0, Lcom/flurry/android/u;->y:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 521
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/android/u;->p()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 197
    :goto_0
    monitor-exit p0

    return-void

    .line 194
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/u;->o:Lcom/flurry/android/z;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/z;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 196
    const-string v0, "FlurryAgent"

    iget-object v1, p0, Lcom/flurry/android/u;->o:Lcom/flurry/android/z;

    invoke-virtual {v1}, Lcom/flurry/android/z;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Z)V
    .locals 0

    .prologue
    .line 296
    iput-boolean p1, p0, Lcom/flurry/android/u;->u:Z

    .line 297
    return-void
.end method

.method final a()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/flurry/android/u;->q:Z

    return v0
.end method

.method final declared-synchronized b(Ljava/lang/String;)Lcom/flurry/android/Offer;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 450
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/android/u;->p()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 465
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 455
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/flurry/android/u;->a(Ljava/util/List;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v1

    .line 456
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 460
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/v;

    .line 461
    invoke-direct {p0, p1, v0}, Lcom/flurry/android/u;->a(Ljava/lang/String;Lcom/flurry/android/v;)Lcom/flurry/android/Offer;

    move-result-object v0

    .line 463
    sget-object v1, Lcom/flurry/android/u;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Impression for offer with ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/flurry/android/Offer;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(J)Lcom/flurry/android/p;
    .locals 2

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/u;->v:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Lcom/flurry/android/p;)Lcom/flurry/android/p;
    .locals 4

    .prologue
    .line 813
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/u;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 816
    new-instance v0, Lcom/flurry/android/p;

    invoke-virtual {p0}, Lcom/flurry/android/u;->j()J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lcom/flurry/android/p;-><init>(Lcom/flurry/android/p;J)V

    .line 817
    iget-object v1, p0, Lcom/flurry/android/u;->x:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p1, v0

    .line 819
    :cond_0
    new-instance v0, Lcom/flurry/android/f;

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/flurry/android/u;->j()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/android/f;-><init>(BJ)V

    invoke-virtual {p1, v0}, Lcom/flurry/android/p;->a(Lcom/flurry/android/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    monitor-exit p0

    return-object p1

    .line 813
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b()V
    .locals 1

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/android/u;->p()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 171
    :goto_0
    monitor-exit p0

    return-void

    .line 170
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/u;->o:Lcom/flurry/android/z;

    invoke-virtual {v0}, Lcom/flurry/android/z;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .prologue
    .line 494
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/android/u;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 516
    :goto_0
    monitor-exit p0

    return-object v0

    .line 499
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/u;->o:Lcom/flurry/android/z;

    invoke-virtual {v0}, Lcom/flurry/android/z;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 501
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/u;->o:Lcom/flurry/android/z;

    invoke-virtual {v0, p1}, Lcom/flurry/android/z;->a(Ljava/lang/String;)[Lcom/flurry/android/v;

    move-result-object v2

    .line 506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 507
    if-eqz v2, :cond_2

    array-length v1, v2

    if-lez v1, :cond_2

    .line 509
    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 511
    invoke-direct {p0, p1, v4}, Lcom/flurry/android/u;->a(Ljava/lang/String;Lcom/flurry/android/v;)Lcom/flurry/android/Offer;

    move-result-object v4

    .line 512
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 515
    :cond_2
    sget-object v1, Lcom/flurry/android/u;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Impressions for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " offers."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 494
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c()V
    .locals 1

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/android/u;->p()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 181
    :goto_0
    monitor-exit p0

    return-void

    .line 180
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/u;->o:Lcom/flurry/android/z;

    invoke-virtual {v0}, Lcom/flurry/android/z;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized d()J
    .locals 2

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/android/u;->p()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 203
    const-wide/16 v0, 0x0

    .line 205
    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/u;->o:Lcom/flurry/android/z;

    invoke-virtual {v0}, Lcom/flurry/android/z;->c()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized e()Ljava/util/Set;
    .locals 1

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/android/u;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 214
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/u;->o:Lcom/flurry/android/z;

    invoke-virtual {v0}, Lcom/flurry/android/z;->a()Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized f()Ljava/util/List;
    .locals 1

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/u;->x:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized g()V
    .locals 1

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/u;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final h()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/flurry/android/u;->u:Z

    return v0
.end method

.method final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/flurry/android/u;->h:Ljava/lang/String;

    return-object v0
.end method

.method final declared-synchronized j()J
    .locals 4

    .prologue
    .line 651
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/android/u;->m:J

    sub-long/2addr v0, v2

    .line 652
    iget-wide v2, p0, Lcom/flurry/android/u;->n:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    :goto_0
    iput-wide v0, p0, Lcom/flurry/android/u;->n:J

    .line 654
    iget-wide v0, p0, Lcom/flurry/android/u;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 652
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/flurry/android/u;->n:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/android/u;->n:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 651
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized k()V
    .locals 1

    .prologue
    .line 685
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/u;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    monitor-exit p0

    return-void

    .line 685
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized l()Lcom/flurry/android/AdImage;
    .locals 1

    .prologue
    .line 801
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/android/u;->p()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 803
    const/4 v0, 0x0

    .line 805
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/flurry/android/u;->n()Lcom/flurry/android/AdImage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 801
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized m()Z
    .locals 1

    .prologue
    .line 848
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/android/u;->p()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 850
    const/4 v0, 0x0

    .line 852
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/u;->o:Lcom/flurry/android/z;

    invoke-virtual {v0}, Lcom/flurry/android/z;->b()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 848
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 660
    monitor-enter p0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/flurry/android/y;

    move-object v1, v0

    .line 661
    invoke-virtual {v1}, Lcom/flurry/android/y;->a()Lcom/flurry/android/p;

    move-result-object v2

    .line 663
    invoke-virtual {p0, v2}, Lcom/flurry/android/u;->b(Lcom/flurry/android/p;)Lcom/flurry/android/p;

    move-result-object v2

    .line 664
    invoke-virtual {v1, v2}, Lcom/flurry/android/y;->a(Lcom/flurry/android/p;)V

    .line 667
    invoke-virtual {p0, v2}, Lcom/flurry/android/u;->a(Lcom/flurry/android/p;)Ljava/lang/String;

    move-result-object v1

    .line 668
    iget-boolean v3, p0, Lcom/flurry/android/u;->u:Z

    if-eqz v3, :cond_0

    .line 670
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/flurry/android/u;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v2, v1}, Lcom/flurry/android/u;->b(Landroid/content/Context;Lcom/flurry/android/p;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    :goto_0
    monitor-exit p0

    return-void

    .line 674
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/flurry/android/u;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v2, v1}, Lcom/flurry/android/u;->a(Landroid/content/Context;Lcom/flurry/android/p;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 660
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 788
    const-string v1, "[adLogs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/u;->x:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
