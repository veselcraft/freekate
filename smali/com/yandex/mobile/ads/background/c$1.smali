.class Lcom/yandex/mobile/ads/background/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/background/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/background/c;


# direct methods
.method constructor <init>(Lcom/yandex/mobile/ads/background/c;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/yandex/mobile/ads/background/c$1;->a:Lcom/yandex/mobile/ads/background/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 97
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 88
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yandex/mobile/ads/background/c$1;->a:Lcom/yandex/mobile/ads/background/c;

    invoke-static {v0}, Lcom/yandex/mobile/ads/background/c;->a(Lcom/yandex/mobile/ads/background/c;)Lcom/yandex/mobile/ads/background/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/yandex/mobile/ads/background/c$1;->a:Lcom/yandex/mobile/ads/background/c;

    invoke-static {v0}, Lcom/yandex/mobile/ads/background/c;->a(Lcom/yandex/mobile/ads/background/c;)Lcom/yandex/mobile/ads/background/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/background/d;->a()V

    .line 85
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 78
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 91
    return-void
.end method
