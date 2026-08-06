.class public Lcom/perm/kate/Online;
.super Ljava/lang/Object;
.source "Online.java"


# instance fields
.field callback:Lcom/perm/kate/session/Callback;

.field handler:Landroid/os/Handler;

.field started:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/Online;->started:Z

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/Online;->handler:Landroid/os/Handler;

    .line 66
    new-instance v0, Lcom/perm/kate/Online$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/Online$3;-><init>(Lcom/perm/kate/Online;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/Online;->callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method private setOffline()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/Online;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Lcom/perm/kate/Online$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/Online$2;-><init>(Lcom/perm/kate/Online;)V

    .line 63
    invoke-virtual {v0}, Lcom/perm/kate/Online$2;->start()V

    goto :goto_0
.end method


# virtual methods
.method public isEnabled()Z
    .locals 5

    .prologue
    .line 87
    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 88
    .local v1, "prefs":Landroid/content/SharedPreferences;
    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070546

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    .local v0, "key":Ljava/lang/String;
    const-string v3, "0"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "value":Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public setOnline()V
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/Online;->callback:Lcom/perm/kate/session/Callback;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/session/Session;->setOnline(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 41
    return-void
.end method

.method public setOnlineFlag(Z)V
    .locals 5
    .param p1, "value"    # Z

    .prologue
    .line 94
    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 95
    .local v2, "prefs":Landroid/content/SharedPreferences;
    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070546

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 96
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    const-string v3, "0"

    :goto_0
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    return-void

    .line 97
    :cond_0
    const-string v3, "1"

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/perm/kate/Online;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    :goto_0
    return-void

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/Online;->startUnchecked()V

    goto :goto_0
.end method

.method public startUnchecked()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/perm/kate/Online;->stop(Z)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/Online;->started:Z

    .line 29
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Lcom/perm/kate/OnlineService;->schedule(Landroid/content/Context;)V

    .line 31
    new-instance v0, Lcom/perm/kate/Online$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/Online$1;-><init>(Lcom/perm/kate/Online;)V

    .line 36
    invoke-virtual {v0}, Lcom/perm/kate/Online$1;->start()V

    goto :goto_0
.end method

.method public stop(Z)V
    .locals 1
    .param p1, "set_offline"    # Z

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/Online;->started:Z

    .line 45
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Lcom/perm/kate/OnlineService;->cancel(Landroid/content/Context;)V

    .line 46
    if-eqz p1, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/perm/kate/Online;->setOffline()V

    .line 48
    :cond_0
    return-void
.end method
