.class final Lcom/inmobi/ads/b$a;
.super Ljava/lang/Object;
.source "AdConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/b$a;)I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/inmobi/ads/b$a;->a:I

    return v0
.end method

.method static synthetic a(Lcom/inmobi/ads/b$a;I)I
    .locals 0

    .prologue
    .line 383
    iput p1, p0, Lcom/inmobi/ads/b$a;->a:I

    return p1
.end method

.method static synthetic a(Lcom/inmobi/ads/b$a;J)J
    .locals 1

    .prologue
    .line 383
    iput-wide p1, p0, Lcom/inmobi/ads/b$a;->d:J

    return-wide p1
.end method

.method static synthetic b(Lcom/inmobi/ads/b$a;)I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/inmobi/ads/b$a;->b:I

    return v0
.end method

.method static synthetic b(Lcom/inmobi/ads/b$a;I)I
    .locals 0

    .prologue
    .line 383
    iput p1, p0, Lcom/inmobi/ads/b$a;->b:I

    return p1
.end method

.method static synthetic c(Lcom/inmobi/ads/b$a;)I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/inmobi/ads/b$a;->c:I

    return v0
.end method

.method static synthetic c(Lcom/inmobi/ads/b$a;I)I
    .locals 0

    .prologue
    .line 383
    iput p1, p0, Lcom/inmobi/ads/b$a;->c:I

    return p1
.end method

.method static synthetic d(Lcom/inmobi/ads/b$a;)J
    .locals 2

    .prologue
    .line 383
    iget-wide v0, p0, Lcom/inmobi/ads/b$a;->d:J

    return-wide v0
.end method


# virtual methods
.method public a()Z
    .locals 4

    .prologue
    .line 390
    iget v0, p0, Lcom/inmobi/ads/b$a;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/inmobi/ads/b$a;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/inmobi/ads/b$a;->c:I

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/inmobi/ads/b$a;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 391
    :cond_0
    const/4 v0, 0x0

    .line 394
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/inmobi/ads/b$a;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/inmobi/ads/b$a;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/inmobi/ads/b$a;->c:I

    return v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 410
    iget-wide v0, p0, Lcom/inmobi/ads/b$a;->d:J

    return-wide v0
.end method
