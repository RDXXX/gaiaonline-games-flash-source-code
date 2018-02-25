.class public final Lcom/flurry/android/OfferInSdk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:J

.field b:Lcom/flurry/android/p;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:I

.field f:Lcom/flurry/android/AdImage;


# direct methods
.method constructor <init>(JLcom/flurry/android/p;Lcom/flurry/android/AdImage;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/flurry/android/OfferInSdk;->a:J

    .line 20
    iput-object p3, p0, Lcom/flurry/android/OfferInSdk;->b:Lcom/flurry/android/p;

    .line 21
    iput-object p5, p0, Lcom/flurry/android/OfferInSdk;->c:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/flurry/android/OfferInSdk;->f:Lcom/flurry/android/AdImage;

    .line 23
    iput-object p6, p0, Lcom/flurry/android/OfferInSdk;->d:Ljava/lang/String;

    .line 24
    iput p7, p0, Lcom/flurry/android/OfferInSdk;->e:I

    .line 25
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/flurry/android/OfferInSdk;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/OfferInSdk;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
