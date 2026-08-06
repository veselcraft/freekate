.class Lcom/inmobi/ads/w$a;
.super Lcom/inmobi/ads/ah$a;
.source "NativeStrandCtaAsset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(IIIILcom/inmobi/ads/t$b;Lcom/inmobi/ads/t$a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Lcom/inmobi/ads/ah$a$a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct/range {p0 .. p8}, Lcom/inmobi/ads/ah$a;-><init>(IIIILcom/inmobi/ads/t$b;Lcom/inmobi/ads/t$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iput p9, p0, Lcom/inmobi/ads/w$a;->f:I

    .line 52
    const v0, 0x7fffffff

    iput v0, p0, Lcom/inmobi/ads/w$a;->h:I

    .line 53
    invoke-virtual {p10}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p10, "#ff000000"

    :cond_0
    iput-object p10, p0, Lcom/inmobi/ads/w$a;->g:Ljava/lang/String;

    .line 54
    array-length v0, p11

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 55
    new-array v1, v0, [Lcom/inmobi/ads/ah$a$a;

    iput-object v1, p0, Lcom/inmobi/ads/w$a;->i:[Lcom/inmobi/ads/ah$a$a;

    .line 56
    iget-object v1, p0, Lcom/inmobi/ads/w$a;->i:[Lcom/inmobi/ads/ah$a$a;

    invoke-static {p11, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    return-void
.end method
