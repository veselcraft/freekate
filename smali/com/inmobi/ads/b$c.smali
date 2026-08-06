.class public final Lcom/inmobi/ads/b$c;
.super Ljava/lang/Object;
.source "AdConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private a:J

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    const-wide/32 v0, 0x69780

    iput-wide v0, p0, Lcom/inmobi/ads/b$c;->a:J

    .line 500
    const/4 v0, 0x3

    iput v0, p0, Lcom/inmobi/ads/b$c;->b:I

    .line 501
    const/16 v0, 0x3c

    iput v0, p0, Lcom/inmobi/ads/b$c;->c:I

    .line 502
    const-string v0, "https://i.l.inmobicdn.net/sdk/sdk/500/android/mraid.js"

    iput-object v0, p0, Lcom/inmobi/ads/b$c;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/b$c;I)I
    .locals 0

    .prologue
    .line 498
    iput p1, p0, Lcom/inmobi/ads/b$c;->b:I

    return p1
.end method

.method static synthetic a(Lcom/inmobi/ads/b$c;J)J
    .locals 1

    .prologue
    .line 498
    iput-wide p1, p0, Lcom/inmobi/ads/b$c;->a:J

    return-wide p1
.end method

.method static synthetic a(Lcom/inmobi/ads/b$c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/inmobi/ads/b$c;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/inmobi/ads/b$c;I)I
    .locals 0

    .prologue
    .line 498
    iput p1, p0, Lcom/inmobi/ads/b$c;->c:I

    return p1
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 505
    iget-wide v0, p0, Lcom/inmobi/ads/b$c;->a:J

    return-wide v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 509
    iget v0, p0, Lcom/inmobi/ads/b$c;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lcom/inmobi/ads/b$c;->c:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/inmobi/ads/b$c;->d:Ljava/lang/String;

    return-object v0
.end method
