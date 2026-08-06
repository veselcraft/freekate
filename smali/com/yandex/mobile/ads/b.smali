.class final Lcom/yandex/mobile/ads/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/b$a;
    }
.end annotation


# direct methods
.method private static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 3

    .prologue
    .line 78
    if-eqz p0, :cond_0

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yandex/mobile/ads/AdActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "window_type"

    const-string v2, "window_type_browser"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_receiver"

    invoke-static {p2}, Lcom/yandex/mobile/ads/s;->a(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "extra_browser_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 82
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to show Browser. Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/ResultReceiver;)V
    .locals 2

    .prologue
    .line 49
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/yandex/mobile/ads/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/yandex/mobile/ads/utils/j;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    invoke-static {p0, p1, p3}, Lcom/yandex/mobile/ads/b;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/yandex/mobile/ads/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_0

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, p3}, Lcom/yandex/mobile/ads/b;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    goto :goto_0
.end method
