.class public Lcom/perm/kate/BirthdayHelper;
.super Ljava/lang/Object;
.source "BirthdayHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/BirthdayHelper$DateInfo;,
        Lcom/perm/kate/BirthdayHelper$ExUser;
    }
.end annotation


# static fields
.field static lastRefreshPrefix:Ljava/lang/String;

.field static last_notification_pref:Ljava/lang/String;


# instance fields
.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/perm/kate/BirthdayHelper$ExUser;",
            ">;"
        }
    .end annotation
.end field

.field private sdf:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    const-string v0, "last_birthdays_1_"

    sput-object v0, Lcom/perm/kate/BirthdayHelper;->lastRefreshPrefix:Ljava/lang/String;

    .line 183
    const-string v0, "last_birthday_notification"

    sput-object v0, Lcom/perm/kate/BirthdayHelper;->last_notification_pref:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d MMMM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perm/kate/BirthdayHelper;->sdf:Ljava/text/SimpleDateFormat;

    .line 58
    new-instance v0, Lcom/perm/kate/BirthdayHelper$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/BirthdayHelper$1;-><init>(Lcom/perm/kate/BirthdayHelper;)V

    iput-object v0, p0, Lcom/perm/kate/BirthdayHelper;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public static checkBirthdaysIfRequired(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    invoke-static {p0}, Lcom/perm/kate/BirthdayHelper;->isBirthdayNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/perm/kate/BirthdayHelper;->didNotifyToday(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    invoke-static {p0}, Lcom/perm/kate/BirthdayService;->startService(Landroid/content/Context;)V

    .line 214
    :cond_0
    return-void
.end method

.method public static didNotifyToday(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 200
    .local v0, "day_of_year":I
    invoke-static {p0}, Lcom/perm/kate/BirthdayHelper;->getLastNotificationDay(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 201
    const/4 v1, 0x1

    .line 202
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDayToSelect(Ljava/util/ArrayList;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "days":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    :try_start_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 107
    .local v2, "now":Ljava/util/Date;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 108
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    const/4 v5, 0x3

    aget-object v0, v4, v5

    check-cast v0, Ljava/util/Date;

    .line 109
    .local v0, "date":Ljava/util/Date;
    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v4

    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v5

    if-gt v4, v5, :cond_0

    .line 111
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v4

    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v4

    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 118
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "i":I
    .end local v2    # "now":Ljava/util/Date;
    :cond_0
    :goto_1
    return v1

    .line 107
    .restart local v0    # "date":Ljava/util/Date;
    .restart local v1    # "i":I
    .restart local v2    # "now":Ljava/util/Date;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "date":Ljava/util/Date;
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-int/lit8 v1, v4, -0x1

    goto :goto_1

    .line 115
    .end local v1    # "i":I
    .end local v2    # "now":Ljava/util/Date;
    :catch_0
    move-exception v3

    .line 116
    .local v3, "th":Ljava/lang/Throwable;
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 117
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static getLastNotificationDay(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 193
    .local v1, "prefs1":Landroid/content/SharedPreferences;
    sget-object v2, Lcom/perm/kate/BirthdayHelper;->last_notification_pref:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 194
    .local v0, "last_day":I
    return v0
.end method

.method public static getLastRefresh(Landroid/content/Context;J)J
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account_id"    # J

    .prologue
    .line 165
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 166
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p1, p2}, Lcom/perm/kate/BirthdayHelper;->getLastRefreshPref(J)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method private static getLastRefreshPref(J)Ljava/lang/String;
    .locals 2
    .param p0, "account_id"    # J

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/perm/kate/BirthdayHelper;->lastRefreshPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMonth(ILandroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "index"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    const v0, 0x7f0702f1

    .line 146
    .local v0, "id":I
    packed-switch p1, :pswitch_data_0

    .line 160
    :goto_0
    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 147
    :pswitch_0
    const v0, 0x7f0702ee

    goto :goto_0

    .line 148
    :pswitch_1
    const v0, 0x7f0702f2

    goto :goto_0

    .line 149
    :pswitch_2
    const v0, 0x7f0702f3

    goto :goto_0

    .line 150
    :pswitch_3
    const v0, 0x7f0702f4

    goto :goto_0

    .line 151
    :pswitch_4
    const v0, 0x7f0702f5

    goto :goto_0

    .line 152
    :pswitch_5
    const v0, 0x7f0702f6

    goto :goto_0

    .line 153
    :pswitch_6
    const v0, 0x7f0702f7

    goto :goto_0

    .line 154
    :pswitch_7
    const v0, 0x7f0702f8

    goto :goto_0

    .line 155
    :pswitch_8
    const v0, 0x7f0702f9

    goto :goto_0

    .line 156
    :pswitch_9
    const v0, 0x7f0702ef

    goto :goto_0

    .line 157
    :pswitch_a
    const v0, 0x7f0702f0

    goto :goto_0

    .line 158
    :pswitch_b
    const v0, 0x7f0702f1

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getParsedBirthdays(J)Ljava/util/ArrayList;
    .locals 6
    .param p0, "user_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/BirthdayHelper$ExUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/BirthdayHelper$ExUser;>;"
    const/4 v0, 0x0

    .line 126
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v3, p0, p1}, Lcom/perm/kate/db/DataHelper;->fetchFriendBirthdays(J)Landroid/database/Cursor;

    move-result-object v0

    .line 127
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    new-instance v1, Lcom/perm/kate/BirthdayHelper$ExUser;

    invoke-direct {v1}, Lcom/perm/kate/BirthdayHelper$ExUser;-><init>()V

    .line 129
    .local v1, "u":Lcom/perm/kate/BirthdayHelper$ExUser;
    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/perm/kate/BirthdayHelper$ExUser;->uid:J

    .line 130
    const-string v3, "birthdate"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/perm/kate/BirthdayHelper$ExUser;->birthdate:Ljava/lang/String;

    .line 131
    const-string v3, "first_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/perm/kate/BirthdayHelper$ExUser;->first_name:Ljava/lang/String;

    .line 132
    const-string v3, "last_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/perm/kate/BirthdayHelper$ExUser;->last_name:Ljava/lang/String;

    .line 133
    const-string v3, "photo_medium_rec"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/perm/kate/BirthdayHelper$ExUser;->photo_medium_rec:Ljava/lang/String;

    .line 134
    iget-object v3, v1, Lcom/perm/kate/BirthdayHelper$ExUser;->birthdate:Ljava/lang/String;

    invoke-static {v3}, Lcom/perm/kate/BirthdayHelper;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, v1, Lcom/perm/kate/BirthdayHelper$ExUser;->date:Ljava/util/Date;

    .line 135
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 138
    .end local v1    # "u":Lcom/perm/kate/BirthdayHelper$ExUser;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v3

    .line 138
    :cond_1
    if-eqz v0, :cond_2

    .line 139
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_2
    return-object v2
.end method

.method public static isBirthdayNotificationEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 180
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const v1, 0x7f07053a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 8
    .param p0, "date_str"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 49
    invoke-static {p0}, Lcom/perm/kate/BirthdayHelper;->parseDateInfo(Ljava/lang/String;)Lcom/perm/kate/BirthdayHelper$DateInfo;

    move-result-object v7

    .line 50
    .local v7, "info":Lcom/perm/kate/BirthdayHelper$DateInfo;
    const/4 v0, 0x0

    .line 51
    .local v0, "date":Ljava/util/Date;
    if-eqz v7, :cond_0

    .line 53
    new-instance v0, Ljava/util/Date;

    .end local v0    # "date":Ljava/util/Date;
    const/16 v1, 0x6f

    iget v2, v7, Lcom/perm/kate/BirthdayHelper$DateInfo;->month:I

    add-int/lit8 v2, v2, -0x1

    iget v3, v7, Lcom/perm/kate/BirthdayHelper$DateInfo;->day:I

    const/16 v4, 0xc

    move v6, v5

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 54
    .restart local v0    # "date":Ljava/util/Date;
    :cond_0
    const-string v1, "Kate.BirthdayHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-object v0
.end method

.method public static parseDateInfo(Ljava/lang/String;)Lcom/perm/kate/BirthdayHelper$DateInfo;
    .locals 7
    .param p0, "date_str"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 31
    const/4 v0, 0x0

    .line 33
    .local v0, "date":Lcom/perm/kate/BirthdayHelper$DateInfo;
    :try_start_0
    const-string v4, "\\."

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "date_parts":[Ljava/lang/String;
    array-length v4, v2

    if-le v4, v5, :cond_1

    .line 35
    new-instance v1, Lcom/perm/kate/BirthdayHelper$DateInfo;

    invoke-direct {v1}, Lcom/perm/kate/BirthdayHelper$DateInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v0    # "date":Lcom/perm/kate/BirthdayHelper$DateInfo;
    .local v1, "date":Lcom/perm/kate/BirthdayHelper$DateInfo;
    const/4 v4, 0x0

    :try_start_1
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/perm/kate/BirthdayHelper$DateInfo;->day:I

    .line 37
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/perm/kate/BirthdayHelper$DateInfo;->month:I

    .line 38
    array-length v4, v2

    if-le v4, v6, :cond_0

    .line 39
    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Lcom/perm/kate/BirthdayHelper$DateInfo;->year:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    move-object v0, v1

    .line 45
    .end local v1    # "date":Lcom/perm/kate/BirthdayHelper$DateInfo;
    .end local v2    # "date_parts":[Ljava/lang/String;
    .restart local v0    # "date":Lcom/perm/kate/BirthdayHelper$DateInfo;
    :cond_1
    :goto_0
    return-object v0

    .line 41
    :catch_0
    move-exception v3

    .line 42
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 43
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 41
    .end local v0    # "date":Lcom/perm/kate/BirthdayHelper$DateInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "date":Lcom/perm/kate/BirthdayHelper$DateInfo;
    .restart local v2    # "date_parts":[Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "date":Lcom/perm/kate/BirthdayHelper$DateInfo;
    .restart local v0    # "date":Lcom/perm/kate/BirthdayHelper$DateInfo;
    goto :goto_1
.end method

.method private static saveLastNotificationDay(ILandroid/content/Context;)V
    .locals 3
    .param p0, "day_of_year"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 186
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 187
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lcom/perm/kate/BirthdayHelper;->last_notification_pref:Ljava/lang/String;

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 188
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 189
    return-void
.end method

.method public static setNotifiedToday(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 207
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 208
    .local v0, "day_of_year":I
    invoke-static {v0, p0}, Lcom/perm/kate/BirthdayHelper;->saveLastNotificationDay(ILandroid/content/Context;)V

    .line 209
    return-void
.end method

.method public static updateLastRefresh(Landroid/content/Context;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account_id"    # J

    .prologue
    .line 169
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 170
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 171
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1, p2}, Lcom/perm/kate/BirthdayHelper;->getLastRefreshPref(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 172
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 173
    return-void
.end method


# virtual methods
.method public buildBirthdayTree(JLandroid/content/Context;)Ljava/util/ArrayList;
    .locals 15
    .param p1, "user_id"    # J
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-static/range {p1 .. p2}, Lcom/perm/kate/BirthdayHelper;->getParsedBirthdays(J)Ljava/util/ArrayList;

    move-result-object v7

    .line 72
    .local v7, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/BirthdayHelper$ExUser;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v5, "mm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perm/kate/BirthdayHelper$ExUser;

    .line 74
    .local v6, "u":Lcom/perm/kate/BirthdayHelper$ExUser;
    iget-object v10, v6, Lcom/perm/kate/BirthdayHelper$ExUser;->date:Ljava/util/Date;

    if-eqz v10, :cond_0

    iget-object v10, v6, Lcom/perm/kate/BirthdayHelper$ExUser;->date:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getMonth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 75
    iget-object v10, v6, Lcom/perm/kate/BirthdayHelper$ExUser;->date:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getMonth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    .end local v6    # "u":Lcom/perm/kate/BirthdayHelper$ExUser;
    :cond_1
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 79
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 81
    .local v4, "m":Ljava/lang/Integer;
    const/4 v10, 0x4

    new-array v1, v10, [Ljava/lang/Object;

    .line 82
    .local v1, "item":[Ljava/lang/Object;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v1, v10

    .line 83
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v1, v10

    .line 84
    const/4 v10, 0x2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v0, p3

    invoke-direct {p0, v11, v0}, Lcom/perm/kate/BirthdayHelper;->getMonth(ILandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v1, v10

    .line 85
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v8, "users2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/BirthdayHelper$ExUser;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perm/kate/BirthdayHelper$ExUser;

    .line 88
    .restart local v6    # "u":Lcom/perm/kate/BirthdayHelper$ExUser;
    iget-object v11, v6, Lcom/perm/kate/BirthdayHelper$ExUser;->date:Ljava/util/Date;

    invoke-virtual {v11}, Ljava/util/Date;->getMonth()I

    move-result v11

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v11, v12, :cond_3

    .line 89
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 91
    .end local v6    # "u":Lcom/perm/kate/BirthdayHelper$ExUser;
    :cond_4
    iget-object v10, p0, Lcom/perm/kate/BirthdayHelper;->comparator:Ljava/util/Comparator;

    invoke-static {v8, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 92
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perm/kate/BirthdayHelper$ExUser;

    .line 93
    .restart local v6    # "u":Lcom/perm/kate/BirthdayHelper$ExUser;
    const/4 v11, 0x4

    new-array v2, v11, [Ljava/lang/Object;

    .line 94
    .local v2, "item2":[Ljava/lang/Object;
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v11

    .line 95
    const/4 v11, 0x1

    aput-object v6, v2, v11

    .line 96
    const/4 v11, 0x2

    iget-object v12, p0, Lcom/perm/kate/BirthdayHelper;->sdf:Ljava/text/SimpleDateFormat;

    iget-object v13, v6, Lcom/perm/kate/BirthdayHelper$ExUser;->date:Ljava/util/Date;

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v11

    .line 97
    const/4 v11, 0x3

    iget-object v12, v6, Lcom/perm/kate/BirthdayHelper$ExUser;->date:Ljava/util/Date;

    aput-object v12, v2, v11

    .line 98
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 101
    .end local v1    # "item":[Ljava/lang/Object;
    .end local v2    # "item2":[Ljava/lang/Object;
    .end local v4    # "m":Ljava/lang/Integer;
    .end local v6    # "u":Lcom/perm/kate/BirthdayHelper$ExUser;
    .end local v8    # "users2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/BirthdayHelper$ExUser;>;"
    :cond_5
    return-object v3
.end method
