.class public final Lcom/inmobi/ads/b$f;
.super Ljava/lang/Object;
.source "AdConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    const/16 v0, 0x32

    iput v0, p0, Lcom/inmobi/ads/b$f;->a:I

    .line 528
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/inmobi/ads/b$f;->b:I

    .line 529
    const/16 v0, 0x64

    iput v0, p0, Lcom/inmobi/ads/b$f;->c:I

    .line 530
    const/16 v0, 0xfa

    iput v0, p0, Lcom/inmobi/ads/b$f;->d:I

    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/b$f;I)I
    .locals 0

    .prologue
    .line 521
    iput p1, p0, Lcom/inmobi/ads/b$f;->a:I

    return p1
.end method

.method static synthetic b(Lcom/inmobi/ads/b$f;I)I
    .locals 0

    .prologue
    .line 521
    iput p1, p0, Lcom/inmobi/ads/b$f;->b:I

    return p1
.end method

.method static synthetic c(Lcom/inmobi/ads/b$f;I)I
    .locals 0

    .prologue
    .line 521
    iput p1, p0, Lcom/inmobi/ads/b$f;->c:I

    return p1
.end method

.method static synthetic d(Lcom/inmobi/ads/b$f;I)I
    .locals 0

    .prologue
    .line 521
    iput p1, p0, Lcom/inmobi/ads/b$f;->d:I

    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Lcom/inmobi/ads/b$f;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/inmobi/ads/b$f;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 541
    iget v0, p0, Lcom/inmobi/ads/b$f;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lcom/inmobi/ads/b$f;->d:I

    return v0
.end method
