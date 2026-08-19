.class public Lcom/perm/kate/TimezoneChecker;
.super Ljava/lang/Object;
.source "TimezoneChecker.java"


# instance fields
.field private serverTimeCallback:Lcom/perm/kate/session/Callback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/perm/kate/TimezoneChecker$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/TimezoneChecker$2;-><init>(Lcom/perm/kate/TimezoneChecker;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/TimezoneChecker;->serverTimeCallback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/TimezoneChecker;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/perm/kate/TimezoneChecker;->serverTimeCallback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method


# virtual methods
.method public checkServerTime()V
    .locals 9

    .line 21
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_time_check"

    const-wide/16 v2, 0x0

    .line 22
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v6, 0x2932e00

    cmp-long v8, v2, v6

    if-lez v8, :cond_0

    .line 26
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 27
    new-instance v0, Lcom/perm/kate/TimezoneChecker$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/TimezoneChecker$1;-><init>(Lcom/perm/kate/TimezoneChecker;)V

    .line 34
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
