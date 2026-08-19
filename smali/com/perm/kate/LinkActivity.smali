.class public Lcom/perm/kate/LinkActivity;
.super Lcom/perm/kate/BaseActivity;
.source "LinkActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 12
    :try_start_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 18
    :cond_0
    :try_start_1
    iget-boolean p1, p0, Lcom/perm/kate/BaseActivity;->blocked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 20
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1, p0}, Lcom/perm/kate/Helper;->openVK_COMlink(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f03ac

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 25
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 28
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 29
    throw p1
.end method
