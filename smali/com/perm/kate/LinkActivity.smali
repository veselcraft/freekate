.class public Lcom/perm/kate/LinkActivity;
.super Lcom/perm/kate/BaseActivity;
.source "LinkActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 12
    :try_start_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/perm/kate/LinkActivity;->finish()V

    .line 30
    :goto_0
    return-void

    .line 18
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Lcom/perm/kate/LinkActivity;->blocked:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/perm/kate/LinkActivity;->finish()V

    goto :goto_0

    .line 20
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/perm/kate/LinkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 21
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2, p0}, Lcom/perm/kate/Helper;->openVK_COMlink(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    .line 22
    .local v0, "res":Z
    if-nez v0, :cond_2

    .line 23
    invoke-virtual {p0}, Lcom/perm/kate/LinkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070347

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/perm/kate/LinkActivity;->finish()V

    goto :goto_0

    .line 24
    .end local v0    # "res":Z
    .end local v2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 25
    .local v1, "th":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 28
    invoke-virtual {p0}, Lcom/perm/kate/LinkActivity;->finish()V

    goto :goto_0

    .end local v1    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/perm/kate/LinkActivity;->finish()V

    throw v3
.end method
