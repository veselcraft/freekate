.class public Lcom/yandex/mobile/ads/background/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/background/a;


# instance fields
.field final a:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private b:Z

.field private c:Lcom/yandex/mobile/ads/background/d;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/yandex/mobile/ads/background/c$1;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/background/c$1;-><init>(Lcom/yandex/mobile/ads/background/c;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/background/c;->a:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 30
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/background/c;->b(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/background/c;)Lcom/yandex/mobile/ads/background/d;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yandex/mobile/ads/background/c;->c:Lcom/yandex/mobile/ads/background/d;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/background/c;->c(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public a(Lcom/yandex/mobile/ads/background/d;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/yandex/mobile/ads/background/c;->c:Lcom/yandex/mobile/ads/background/d;

    .line 46
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/background/c;->b:Z

    return v0
.end method

.method b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 51
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 52
    iget-object v1, p0, Lcom/yandex/mobile/ads/background/c;->a:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/background/c;->b:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/background/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 65
    iget-object v1, p0, Lcom/yandex/mobile/ads/background/c;->a:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    goto :goto_0
.end method
