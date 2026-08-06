.class public final Lcom/inmobi/ads/b$d;
.super Ljava/lang/Object;
.source "AdConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private a:Z

.field private b:J

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/b$d;->a:Z

    .line 551
    const-wide/32 v0, 0x3f480

    iput-wide v0, p0, Lcom/inmobi/ads/b$d;->b:J

    .line 552
    const/4 v0, 0x5

    iput v0, p0, Lcom/inmobi/ads/b$d;->c:I

    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/b$d;I)I
    .locals 0

    .prologue
    .line 549
    iput p1, p0, Lcom/inmobi/ads/b$d;->c:I

    return p1
.end method

.method static synthetic a(Lcom/inmobi/ads/b$d;)J
    .locals 2

    .prologue
    .line 549
    iget-wide v0, p0, Lcom/inmobi/ads/b$d;->b:J

    return-wide v0
.end method

.method static synthetic a(Lcom/inmobi/ads/b$d;J)J
    .locals 1

    .prologue
    .line 549
    iput-wide p1, p0, Lcom/inmobi/ads/b$d;->b:J

    return-wide p1
.end method

.method static synthetic a(Lcom/inmobi/ads/b$d;Z)Z
    .locals 0

    .prologue
    .line 549
    iput-boolean p1, p0, Lcom/inmobi/ads/b$d;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/inmobi/ads/b$d;)I
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Lcom/inmobi/ads/b$d;->c:I

    return v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 555
    iget-wide v0, p0, Lcom/inmobi/ads/b$d;->b:J

    return-wide v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/inmobi/ads/b$d;->a:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 563
    iget v0, p0, Lcom/inmobi/ads/b$d;->c:I

    return v0
.end method
