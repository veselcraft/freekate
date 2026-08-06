.class Lcom/inmobi/ads/n$b;
.super Ljava/lang/Object;
.source "ImpressionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field c:I

.field d:J


# direct methods
.method constructor <init>(Ljava/lang/Object;II)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/inmobi/ads/n$b;->d:J

    .line 61
    iput-object p1, p0, Lcom/inmobi/ads/n$b;->a:Ljava/lang/Object;

    .line 62
    iput p2, p0, Lcom/inmobi/ads/n$b;->b:I

    .line 63
    iput p3, p0, Lcom/inmobi/ads/n$b;->c:I

    .line 64
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/n$b;->d:J

    .line 68
    return-void
.end method
