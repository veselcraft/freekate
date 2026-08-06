.class public final Lcom/inmobi/ads/b$b;
.super Ljava/lang/Object;
.source "AdConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    const/4 v0, 0x3

    iput v0, p0, Lcom/inmobi/ads/b$b;->a:I

    .line 416
    const/16 v0, 0x3c

    iput v0, p0, Lcom/inmobi/ads/b$b;->b:I

    .line 417
    const/16 v0, 0x78

    iput v0, p0, Lcom/inmobi/ads/b$b;->c:I

    .line 418
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/inmobi/ads/b$b;->d:I

    .line 419
    const/16 v0, 0xa

    iput v0, p0, Lcom/inmobi/ads/b$b;->e:I

    .line 420
    const-wide/16 v0, 0x2a30

    iput-wide v0, p0, Lcom/inmobi/ads/b$b;->f:J

    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/b$b;I)I
    .locals 0

    .prologue
    .line 414
    iput p1, p0, Lcom/inmobi/ads/b$b;->a:I

    return p1
.end method

.method static synthetic a(Lcom/inmobi/ads/b$b;J)J
    .locals 1

    .prologue
    .line 414
    iput-wide p1, p0, Lcom/inmobi/ads/b$b;->f:J

    return-wide p1
.end method

.method static synthetic b(Lcom/inmobi/ads/b$b;I)I
    .locals 0

    .prologue
    .line 414
    iput p1, p0, Lcom/inmobi/ads/b$b;->b:I

    return p1
.end method

.method static synthetic c(Lcom/inmobi/ads/b$b;I)I
    .locals 0

    .prologue
    .line 414
    iput p1, p0, Lcom/inmobi/ads/b$b;->c:I

    return p1
.end method

.method static synthetic d(Lcom/inmobi/ads/b$b;I)I
    .locals 0

    .prologue
    .line 414
    iput p1, p0, Lcom/inmobi/ads/b$b;->d:I

    return p1
.end method

.method static synthetic e(Lcom/inmobi/ads/b$b;I)I
    .locals 0

    .prologue
    .line 414
    iput p1, p0, Lcom/inmobi/ads/b$b;->e:I

    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/inmobi/ads/b$b;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/inmobi/ads/b$b;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lcom/inmobi/ads/b$b;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lcom/inmobi/ads/b$b;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 439
    iget v0, p0, Lcom/inmobi/ads/b$b;->e:I

    return v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 443
    iget-wide v0, p0, Lcom/inmobi/ads/b$b;->f:J

    return-wide v0
.end method
