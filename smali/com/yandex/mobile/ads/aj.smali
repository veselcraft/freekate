.class abstract Lcom/yandex/mobile/ads/aj;
.super Lcom/yandex/mobile/ads/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/aj$a;
    }
.end annotation


# instance fields
.field private final d:Landroid/os/Handler;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final g:Lcom/yandex/mobile/ads/n;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/n;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/x;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/aj;->d:Landroid/os/Handler;

    .line 42
    iput-object p2, p0, Lcom/yandex/mobile/ads/aj;->g:Lcom/yandex/mobile/ads/n;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/aj;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yandex/mobile/ads/aj;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/yandex/mobile/ads/x;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/ay;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/aj;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yandex/mobile/ads/ay;->d:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 99
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "undefined"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/aj;->e:Ljava/util/Map;

    .line 101
    iget-object v0, p0, Lcom/yandex/mobile/ads/aj;->e:Ljava/util/Map;

    const-string v1, "test-tag"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/x;->a(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/aj;->b(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/yandex/mobile/ads/aj;->a:Lcom/yandex/mobile/ads/p;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/p;->a()V

    .line 152
    return-void
.end method

.method abstract b(Landroid/content/Context;)V
.end method

.method protected abstract g()V
.end method

.method public k()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yandex/mobile/ads/aj;->e:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/aj;->e:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method l()V
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/aj;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/aj;->g()V

    .line 71
    :cond_0
    return-void
.end method

.method protected m()Z
    .locals 2

    .prologue
    .line 76
    const-string v0, "partner-code"

    iget-object v1, p0, Lcom/yandex/mobile/ads/aj;->g:Lcom/yandex/mobile/ads/n;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/n;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method n()V
    .locals 1

    .prologue
    .line 88
    const-string v0, "AdPerformActionsJSI"

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/aj;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 82
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/aj;->n()V

    .line 83
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/x;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 84
    return-void
.end method
