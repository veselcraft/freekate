.class Lcom/yandex/metrica/impl/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Z


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x1e8480

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yandex/metrica/impl/r;->a:J

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/r;->b:Z

    return-void
.end method


# virtual methods
.method a()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 29
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/r;->b:Z

    .line 30
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/r;->b:Z

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/yandex/metrica/impl/r;->a:J

    sub-long/2addr v2, v4

    if-eqz v1, :cond_0

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method b()V
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/r;->b:Z

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/r;->a:J

    .line 38
    return-void
.end method

.method c()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/r;->b:Z

    return v0
.end method
