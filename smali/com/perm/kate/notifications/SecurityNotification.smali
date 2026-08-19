.class public abstract Lcom/perm/kate/notifications/SecurityNotification;
.super Ljava/lang/Object;
.source "SecurityNotification.java"


# static fields
.field static CHANNEL:Ljava/lang/String; = "security"

.field private static id:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static display(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x24000000

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 36
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v1, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 39
    invoke-virtual {v1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 40
    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 41
    invoke-static {p0}, Lcom/perm/kate/notifications/Utils;->getIconId(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {v1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p2, 0x1

    const/4 v2, 0x0

    .line 43
    invoke-static {p0, p2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 46
    new-instance v0, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 48
    invoke-static {v1}, Lcom/perm/kate/notifications/SecurityNotification;->setColor(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 50
    invoke-static {}, Lcom/perm/utils/SilentMode;->isEnabled()Z

    move-result p1

    .line 51
    invoke-static {p0}, Lcom/perm/utils/SleepModeHelper;->isActiveSleepMode(Landroid/content/Context;)Z

    move-result v0

    if-nez p1, :cond_0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 53
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_1

    .line 54
    sget-object v4, Lcom/perm/kate/notifications/SecurityNotification;->CHANNEL:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/perm/kate/notifications/Utils;->getChannelId(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 57
    :cond_1
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 58
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    if-eqz p1, :cond_2

    const-string v5, "key_notify_vibration"

    .line 59
    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    invoke-static {p0, v4}, Lcom/perm/kate/notifications/Utils;->getVibratePattern(Landroid/content/Context;Landroid/content/SharedPreferences;)[J

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->vibrate:[J

    :cond_2
    if-eqz p1, :cond_3

    .line 62
    iget v2, v1, Landroid/app/Notification;->defaults:I

    or-int/2addr v2, p2

    iput v2, v1, Landroid/app/Notification;->defaults:I

    :cond_3
    const-string v2, "key_notify_led"

    .line 63
    invoke-interface {v4, v2, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 64
    invoke-static {p0}, Lcom/perm/kate/Settings;->getLedColor(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/app/Notification;->ledARGB:I

    const/16 v2, 0x12c

    .line 65
    iput v2, v1, Landroid/app/Notification;->ledOnMS:I

    const/16 v2, 0x3e8

    .line 66
    iput v2, v1, Landroid/app/Notification;->ledOffMS:I

    .line 67
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/2addr p2, v2

    iput p2, v1, Landroid/app/Notification;->flags:I

    .line 70
    :cond_4
    iget p2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 p2, p2, 0x10

    iput p2, v1, Landroid/app/Notification;->flags:I

    if-lt v0, v3, :cond_5

    .line 74
    sget-object p2, Lcom/perm/kate/notifications/SecurityNotification;->CHANNEL:Ljava/lang/String;

    const v0, 0x7f0f045c

    const/4 v2, 0x0

    invoke-static {p0, p2, v0, p1, v2}, Lcom/perm/kate/notifications/Utils;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;IZLandroid/net/Uri;)V

    :cond_5
    const-string p1, "notification"

    .line 76
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 77
    sget p1, Lcom/perm/kate/notifications/SecurityNotification;->id:I

    invoke-virtual {p0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method static setColor(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 1

    .line 81
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getHeaderBgColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method
