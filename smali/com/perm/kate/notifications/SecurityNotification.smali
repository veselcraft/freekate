.class public Lcom/perm/kate/notifications/SecurityNotification;
.super Ljava/lang/Object;
.source "SecurityNotification.java"


# static fields
.field private static id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x14

    sput v0, Lcom/perm/kate/notifications/SecurityNotification;->id:I

    return-void
.end method

.method public static display(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 26
    move-object v6, p1

    .line 28
    .local v6, "popup_message":Ljava/lang/String;
    move-object v5, p2

    .line 29
    .local v5, "notification_title":Ljava/lang/String;
    move-object v4, p1

    .line 31
    .local v4, "notification_message":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-class v10, Lcom/perm/kate/MainActivity;

    invoke-direct {v0, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v10, 0x24000000

    invoke-virtual {v0, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 34
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v3, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 36
    .local v3, "notification_builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 37
    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 38
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 39
    invoke-static {p0}, Lcom/perm/kate/notifications/Utils;->getIconId(Landroid/content/Context;)I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 41
    invoke-static {p0, v12, v0, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 44
    new-instance v10, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v10}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v10, v4}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 46
    invoke-static {v3}, Lcom/perm/kate/notifications/SecurityNotification;->setColor(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 49
    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 51
    .local v2, "notification":Landroid/app/Notification;
    invoke-static {}, Lcom/perm/utils/SilentMode;->isEnabled()Z

    move-result v8

    .line 52
    .local v8, "silent_mode":Z
    invoke-static {p0}, Lcom/perm/utils/SleepModeHelper;->isActiveSleepMode(Landroid/content/Context;)Z

    move-result v9

    .line 53
    .local v9, "sleep_mode":Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 54
    .local v7, "prefs":Landroid/content/SharedPreferences;
    if-nez v8, :cond_0

    if-nez v9, :cond_0

    const v10, 0x7f070544

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 55
    invoke-static {p0, v7}, Lcom/perm/kate/notifications/Utils;->getVibratePattern(Landroid/content/Context;Landroid/content/SharedPreferences;)[J

    move-result-object v10

    iput-object v10, v2, Landroid/app/Notification;->vibrate:[J

    .line 56
    :cond_0
    if-nez v8, :cond_1

    if-nez v9, :cond_1

    .line 57
    iget v10, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v2, Landroid/app/Notification;->defaults:I

    .line 58
    :cond_1
    const v10, 0x7f07053c

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 59
    invoke-static {p0}, Lcom/perm/kate/Settings;->getLedColor(Landroid/content/Context;)I

    move-result v10

    iput v10, v2, Landroid/app/Notification;->ledARGB:I

    .line 60
    const/16 v10, 0x12c

    iput v10, v2, Landroid/app/Notification;->ledOnMS:I

    .line 61
    const/16 v10, 0x3e8

    iput v10, v2, Landroid/app/Notification;->ledOffMS:I

    .line 62
    iget v10, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v2, Landroid/app/Notification;->flags:I

    .line 65
    :cond_2
    iget v10, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v2, Landroid/app/Notification;->flags:I

    .line 68
    const-string v10, "notification"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 69
    .local v1, "mManager":Landroid/app/NotificationManager;
    sget v10, Lcom/perm/kate/notifications/SecurityNotification;->id:I

    invoke-virtual {v1, v10, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 70
    return-void
.end method

.method static setColor(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 1
    .param p0, "notification_builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 73
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getHeaderBgColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 74
    return-void
.end method
