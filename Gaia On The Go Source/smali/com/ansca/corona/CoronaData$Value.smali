.class public abstract Lcom/ansca/corona/CoronaData$Value;
.super Lcom/ansca/corona/CoronaData;
.source "CoronaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Value"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/ansca/corona/CoronaData;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-super {p0}, Lcom/ansca/corona/CoronaData;->clone()Lcom/ansca/corona/CoronaData;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 321
    instance-of v3, p1, Lcom/ansca/corona/CoronaData$Value;

    if-nez v3, :cond_1

    .line 332
    .end local p1    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 324
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaData$Value;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    .line 325
    .local v0, "objectValue1":Ljava/lang/Object;
    check-cast p1, Lcom/ansca/corona/CoronaData$Value;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaData$Value;->getValueAsObject()Ljava/lang/Object;

    move-result-object v1

    .line 326
    .local v1, "objectValue2":Ljava/lang/Object;
    if-ne v0, v1, :cond_2

    .line 327
    const/4 v2, 0x1

    goto :goto_0

    .line 329
    :cond_2
    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public abstract getValueAsObject()Ljava/lang/Object;
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaData$Value;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    .line 342
    .local v0, "objectValue":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 343
    const/4 v1, 0x0

    .line 345
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method
