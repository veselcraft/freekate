.class public Lcom/yandex/mobile/ads/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/a$a;
    }
.end annotation


# instance fields
.field a:J

.field b:Lcom/yandex/mobile/ads/a$a;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/a;->c:Ljava/lang/ref/WeakReference;

    .line 36
    return-void
.end method

.method private a(Lcom/yandex/mobile/ads/a$a;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yandex/mobile/ads/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 97
    if-eqz v0, :cond_0

    .line 98
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "type"

    iget-object v3, p1, Lcom/yandex/mobile/ads/a$a;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "interval"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/yandex/mobile/ads/report/b;

    sget-object v3, Lcom/yandex/mobile/ads/report/b$b;->m:Lcom/yandex/mobile/ads/report/b$b;

    invoke-direct {v2, v3, v1}, Lcom/yandex/mobile/ads/report/b;-><init>(Lcom/yandex/mobile/ads/report/b$b;Ljava/util/Map;)V

    .line 99
    invoke-static {v0}, Lcom/yandex/mobile/ads/report/a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/report/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/report/a;->a(Lcom/yandex/mobile/ads/report/b;)V

    .line 102
    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/yandex/mobile/ads/a$a;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 104
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/mobile/ads/a$a;)V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startActivityInteraction, type = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/mobile/ads/a;->a:J

    .line 53
    iput-object p1, p0, Lcom/yandex/mobile/ads/a;->b:Lcom/yandex/mobile/ads/a$a;

    .line 54
    return-void
.end method

.method public b(Lcom/yandex/mobile/ads/a$a;)V
    .locals 14

    .prologue
    const-wide/16 v12, 0x1388

    const-wide/16 v10, 0xbb8

    const-wide/16 v8, 0x7d0

    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "finishActivityInteraction, type = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    iget-wide v0, p0, Lcom/yandex/mobile/ads/a;->a:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/a;->b:Lcom/yandex/mobile/ads/a$a;

    if-ne v0, p1, :cond_0

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 61
    iget-wide v2, p0, Lcom/yandex/mobile/ads/a;->a:J

    sub-long/2addr v0, v2

    .line 62
    cmp-long v2, v0, v6

    if-gez v2, :cond_1

    const-string v0, "<1"

    .line 63
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/a;->a(Lcom/yandex/mobile/ads/a$a;Ljava/lang/String;)V

    .line 64
    iput-wide v4, p0, Lcom/yandex/mobile/ads/a;->a:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/a;->b:Lcom/yandex/mobile/ads/a$a;

    .line 66
    :cond_0
    return-void

    .line 62
    :cond_1
    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    cmp-long v2, v0, v8

    if-gtz v2, :cond_2

    const-string v0, "1-2"

    goto :goto_0

    :cond_2
    cmp-long v2, v0, v8

    if-lez v2, :cond_3

    cmp-long v2, v0, v10

    if-gtz v2, :cond_3

    const-string v0, "2-3"

    goto :goto_0

    :cond_3
    cmp-long v2, v0, v10

    if-lez v2, :cond_4

    cmp-long v2, v0, v12

    if-gtz v2, :cond_4

    const-string v0, "3-5"

    goto :goto_0

    :cond_4
    cmp-long v2, v0, v12

    if-lez v2, :cond_5

    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5

    const-string v0, "5-10"

    goto :goto_0

    :cond_5
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    const-wide/16 v2, 0x3a98

    cmp-long v2, v0, v2

    if-gtz v2, :cond_6

    const-string v0, "10-15"

    goto :goto_0

    :cond_6
    const-wide/16 v2, 0x3a98

    cmp-long v2, v0, v2

    if-lez v2, :cond_7

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-gtz v0, :cond_7

    const-string v0, "15-20"

    goto :goto_0

    :cond_7
    const-string v0, ">20"

    goto :goto_0
.end method

.method public c(Lcom/yandex/mobile/ads/a$a;)V
    .locals 1

    .prologue
    .line 92
    const-string v0, "undefined"

    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/a;->a(Lcom/yandex/mobile/ads/a$a;Ljava/lang/String;)V

    .line 93
    return-void
.end method
