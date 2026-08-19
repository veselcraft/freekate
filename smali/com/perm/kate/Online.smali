.class public Lcom/perm/kate/Online;
.super Ljava/lang/Object;
.source "Online.java"


# instance fields
.field callback:Lcom/perm/kate/session/Callback;

.field started:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/perm/kate/Online;->started:Z

    .line 63
    new-instance v0, Lcom/perm/kate/Online$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/Online$3;-><init>(Lcom/perm/kate/Online;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/Online;->callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method private setOffline()V
    .locals 1

    .line 51
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    new-instance v0, Lcom/perm/kate/Online$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/Online$2;-><init>(Lcom/perm/kate/Online;)V

    .line 60
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 3

    .line 84
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 85
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0171

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "0"

    .line 86
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setOnline()V
    .locals 3

    .line 40
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/Online;->callback:Lcom/perm/kate/session/Callback;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/session/Session;->setOnline(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

.method public setOnlineFlag(Z)V
    .locals 3

    .line 91
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 92
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0171

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "0"

    goto :goto_0

    :cond_0
    const-string p1, "1"

    .line 94
    :goto_0
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public start()V
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/perm/kate/Online;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/Online;->startUnchecked()V

    return-void
.end method

.method public startUnchecked()V
    .locals 1

    .line 25
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lcom/perm/kate/Online;->stop(Z)V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/perm/kate/Online;->started:Z

    .line 29
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Lcom/perm/kate/OnlineService;->schedule(Landroid/content/Context;)V

    .line 31
    new-instance v0, Lcom/perm/kate/Online$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/Online$1;-><init>(Lcom/perm/kate/Online;)V

    .line 36
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/perm/kate/Online;->started:Z

    .line 45
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Lcom/perm/kate/OnlineService;->cancel(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/perm/kate/Online;->setOffline()V

    :cond_0
    return-void
.end method
