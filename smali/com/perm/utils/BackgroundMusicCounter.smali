.class public abstract Lcom/perm/utils/BackgroundMusicCounter;
.super Ljava/lang/Object;
.source "BackgroundMusicCounter.java"


# static fields
.field public static DEFAULT_LIMIT:I = 0x708

.field static handler:Landroid/os/Handler;

.field private static start:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static backgroundStart()V
    .locals 1

    .line 33
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->startCounter()V

    :cond_0
    return-void
.end method

.method public static backgroundStop()V
    .locals 0

    .line 44
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->stopCounter()V

    return-void
.end method

.method public static getCounter()J
    .locals 5

    .line 93
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "bgmd"

    const/4 v2, 0x0

    .line 96
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 97
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const-wide/16 v3, 0x0

    if-eq v1, v2, :cond_0

    return-wide v3

    :cond_0
    const-string v1, "bgmc"

    .line 101
    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getLimit()I
    .locals 3

    .line 109
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget v1, Lcom/perm/utils/BackgroundMusicCounter;->DEFAULT_LIMIT:I

    const-string v2, "bgml"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isLimit()Z
    .locals 5

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLimit. total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->getCounter()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackgroundMusicCounter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->getCounter()J

    move-result-wide v0

    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->getLimit()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static musicStart()V
    .locals 1

    .line 27
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->getVisibleCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 28
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->startCounter()V

    :cond_0
    return-void
.end method

.method public static musicStop()V
    .locals 0

    .line 39
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->stopCounter()V

    return-void
.end method

.method static pause()V
    .locals 0

    .line 135
    invoke-static {}, Lcom/perm/kate/PlaybackService;->pauseStatic()V

    return-void
.end method

.method private static setCounter(J)V
    .locals 3

    .line 85
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 87
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const-string v2, "bgmd"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "bgmc"

    .line 88
    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 89
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setLimit(I)V
    .locals 2

    .line 106
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bgml"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static startCounter()V
    .locals 4

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sput-wide v0, Lcom/perm/utils/BackgroundMusicCounter;->start:J

    const-string v0, "BackgroundMusicCounter"

    const-string v1, "startCounter"

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->startTimer()V

    return-void
.end method

.method private static startTimer()V
    .locals 6

    .line 118
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->getLimit()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->getCounter()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 122
    :cond_0
    sget-object v2, Lcom/perm/utils/BackgroundMusicCounter;->handler:Landroid/os/Handler;

    if-nez v2, :cond_1

    .line 123
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    sput-object v2, Lcom/perm/utils/BackgroundMusicCounter;->handler:Landroid/os/Handler;

    .line 124
    :cond_1
    new-instance v2, Lcom/perm/utils/BackgroundMusicCounter$1;

    invoke-direct {v2}, Lcom/perm/utils/BackgroundMusicCounter$1;-><init>()V

    .line 131
    sget-object v3, Lcom/perm/utils/BackgroundMusicCounter;->handler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static stopCounter()V
    .locals 7

    .line 54
    sget-wide v0, Lcom/perm/utils/BackgroundMusicCounter;->start:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    sget-wide v4, Lcom/perm/utils/BackgroundMusicCounter;->start:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1c20

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    .line 61
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "bg play too long"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    .line 65
    :cond_1
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->getCounter()J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-static {v4, v5}, Lcom/perm/utils/BackgroundMusicCounter;->setCounter(J)V

    .line 66
    sput-wide v2, Lcom/perm/utils/BackgroundMusicCounter;->start:J

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopCounter. total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->getCounter()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackgroundMusicCounter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->stopTimer()V

    return-void
.end method

.method private static stopTimer()V
    .locals 2

    .line 139
    sget-object v0, Lcom/perm/utils/BackgroundMusicCounter;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 141
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static toast()V
    .locals 3

    .line 81
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v1, 0x7f0f005e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
