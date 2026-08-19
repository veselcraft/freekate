.class public Lcom/perm/kate/BirthdayHelper;
.super Ljava/lang/Object;
.source "BirthdayHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/BirthdayHelper$ExUser;
    }
.end annotation


# static fields
.field static lastRefreshPrefix:Ljava/lang/String; = "last_birthdays_1_"

.field static last_notification_pref:Ljava/lang/String; = "last_birthday_notification"


# instance fields
.field private comparator:Ljava/util/Comparator;

.field private sdf:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d MMMM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perm/kate/BirthdayHelper;->sdf:Ljava/text/SimpleDateFormat;

    .line 60
    new-instance v0, Lcom/perm/kate/BirthdayHelper$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/BirthdayHelper$1;-><init>(Lcom/perm/kate/BirthdayHelper;)V

    iput-object v0, p0, Lcom/perm/kate/BirthdayHelper;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public static checkBirthdaysIfRequired(Landroid/content/Context;)V
    .locals 1

    .line 214
    invoke-static {p0}, Lcom/perm/kate/BirthdayHelper;->isBirthdayNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/perm/kate/BirthdayHelper;->didNotifyToday(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-static {p0}, Lcom/perm/kate/BirthdayService;->startService(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static didNotifyToday(Landroid/content/Context;)Z
    .locals 2

    .line 201
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 202
    invoke-static {p0}, Lcom/perm/kate/BirthdayHelper;->getLastNotificationDay(Landroid/content/Context;)I

    move-result p0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getDayToSelect(Ljava/util/ArrayList;)I
    .locals 6

    const/4 v0, 0x0

    .line 108
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const/4 v2, 0x0

    .line 109
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 110
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    check-cast v3, Ljava/util/Date;

    if-eqz v3, :cond_1

    .line 112
    invoke-virtual {v3}, Ljava/util/Date;->getMonth()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v5

    if-gt v4, v5, :cond_0

    .line 113
    invoke-virtual {v3}, Ljava/util/Date;->getMonth()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Ljava/util/Date;->getDate()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v4

    if-lt v3, v4, :cond_1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p0, p0, -0x1

    return p0

    :catchall_0
    move-exception p0

    .line 118
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 119
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method private static getLastNotificationDay(Landroid/content/Context;)I
    .locals 2

    .line 194
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 195
    sget-object v0, Lcom/perm/kate/BirthdayHelper;->last_notification_pref:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLastRefresh(Landroid/content/Context;J)J
    .locals 2

    .line 167
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 168
    invoke-static {p1, p2}, Lcom/perm/kate/BirthdayHelper;->getLastRefreshPref(J)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getLastRefreshPref(J)Ljava/lang/String;
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/perm/kate/BirthdayHelper;->lastRefreshPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMonth(ILandroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    const v0, 0x7f0f0350

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x7f0f034f

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0f034e

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0f0358

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0f0357

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0f0356

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0f0355

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0f0354

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0f0353

    goto :goto_0

    :pswitch_8
    const v0, 0x7f0f0352

    goto :goto_0

    :pswitch_9
    const v0, 0x7f0f0351

    goto :goto_0

    :pswitch_a
    const v0, 0x7f0f034d

    .line 162
    :goto_0
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method public static getParsedBirthdays(J)Ljava/util/ArrayList;
    .locals 4

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 128
    :try_start_0
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2, p0, p1}, Lcom/perm/kate/db/DataHelper;->fetchFriendBirthdays(J)Landroid/database/Cursor;

    move-result-object v1

    .line 129
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 130
    new-instance p0, Lcom/perm/kate/BirthdayHelper$ExUser;

    invoke-direct {p0}, Lcom/perm/kate/BirthdayHelper$ExUser;-><init>()V

    const-string p1, "_id"

    .line 131
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/api/User;->uid:J

    const-string p1, "birthdate"

    .line 132
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    const-string p1, "first_name"

    .line 133
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    const-string p1, "last_name"

    .line 134
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    const-string p1, "photo_medium_rec"

    .line 135
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 136
    iget-object p1, p0, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    invoke-static {p1}, Lcom/perm/kate/BirthdayHelper;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/BirthdayHelper$ExUser;->date:Ljava/util/Date;

    .line 137
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_1
    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static isBirthdayNotificationEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 181
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f0f016b

    .line 182
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 8

    .line 51
    invoke-static {p0}, Lcom/perm/kate/BirthdayHelper;->parseDateInfo(Ljava/lang/String;)Lcom/perm/kate/BirthdayHelper$DateInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 55
    new-instance v7, Ljava/util/Date;

    const/16 v1, 0x6f

    iget v0, p0, Lcom/perm/kate/BirthdayHelper$DateInfo;->month:I

    add-int/lit8 v2, v0, -0x1

    iget v3, p0, Lcom/perm/kate/BirthdayHelper$DateInfo;->day:I

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    return-object v7
.end method

.method public static parseDateInfo(Ljava/lang/String;)Lcom/perm/kate/BirthdayHelper$DateInfo;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "\\."

    .line 35
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 36
    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 37
    new-instance v1, Lcom/perm/kate/BirthdayHelper$DateInfo;

    invoke-direct {v1}, Lcom/perm/kate/BirthdayHelper$DateInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    .line 38
    :try_start_1
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/perm/kate/BirthdayHelper$DateInfo;->day:I

    .line 39
    aget-object v0, p0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/perm/kate/BirthdayHelper$DateInfo;->month:I

    .line 40
    array-length v0, p0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    .line 41
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v1, Lcom/perm/kate/BirthdayHelper$DateInfo;->year:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 44
    :goto_0
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 45
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static saveLastNotificationDay(ILandroid/content/Context;)V
    .locals 1

    .line 187
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 188
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 189
    sget-object v0, Lcom/perm/kate/BirthdayHelper;->last_notification_pref:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 190
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setNotifiedToday(Landroid/content/Context;)V
    .locals 2

    .line 209
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 210
    invoke-static {v0, p0}, Lcom/perm/kate/BirthdayHelper;->saveLastNotificationDay(ILandroid/content/Context;)V

    return-void
.end method

.method public static updateLastRefresh(Landroid/content/Context;J)V
    .locals 2

    .line 171
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 172
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 173
    invoke-static {p1, p2}, Lcom/perm/kate/BirthdayHelper;->getLastRefreshPref(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public buildBirthdayTree(JLandroid/content/Context;)Ljava/util/ArrayList;
    .locals 11

    .line 73
    invoke-static {p1, p2}, Lcom/perm/kate/BirthdayHelper;->getParsedBirthdays(J)Ljava/util/ArrayList;

    move-result-object p1

    .line 74
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/BirthdayHelper$ExUser;

    .line 76
    iget-object v2, v1, Lcom/perm/kate/BirthdayHelper$ExUser;->date:Ljava/util/Date;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    iget-object v1, v1, Lcom/perm/kate/BirthdayHelper$ExUser;->date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :cond_1
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 84
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 85
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    .line 86
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, p3}, Lcom/perm/kate/BirthdayHelper;->getMonth(ILandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v3, v7

    .line 87
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perm/kate/BirthdayHelper$ExUser;

    .line 90
    iget-object v9, v8, Lcom/perm/kate/BirthdayHelper$ExUser;->date:Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getMonth()I

    move-result v9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v9, v10, :cond_3

    .line 91
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 93
    :cond_4
    iget-object v1, p0, Lcom/perm/kate/BirthdayHelper;->comparator:Ljava/util/Comparator;

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 94
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/BirthdayHelper$ExUser;

    new-array v5, v2, [Ljava/lang/Object;

    .line 96
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v4

    aput-object v3, v5, v6

    .line 98
    iget-object v8, p0, Lcom/perm/kate/BirthdayHelper;->sdf:Ljava/text/SimpleDateFormat;

    iget-object v9, v3, Lcom/perm/kate/BirthdayHelper$ExUser;->date:Ljava/util/Date;

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v8, 0x3

    .line 99
    iget-object v3, v3, Lcom/perm/kate/BirthdayHelper$ExUser;->date:Ljava/util/Date;

    aput-object v3, v5, v8

    .line 100
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-object v0
.end method
