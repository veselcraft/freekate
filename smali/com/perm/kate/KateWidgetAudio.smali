.class public Lcom/perm/kate/KateWidgetAudio;
.super Landroid/appwidget/AppWidgetProvider;
.source "KateWidgetAudio.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private static buildUpdate(Landroid/content/Context;I)V
    .locals 13

    .line 26
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.audioanywhere.from_notification"

    const/4 v2, 0x1

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 29
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 31
    sget-object v3, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v3, :cond_6

    .line 33
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/perm/kate/KateWidgetAudio;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "repeat"

    .line 34
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-static {p0, p1, v3, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 37
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/perm/kate/KateWidgetAudio;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "shuffle"

    .line 38
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    invoke-static {p0, p1, v4, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 41
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/perm/kate/PlaybackService;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "previous"

    .line 42
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    invoke-static {p0, p1, v5, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 45
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/perm/kate/PlaybackService;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "next"

    .line 46
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    invoke-static {p0, p1, v6, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 49
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/perm/kate/KateWidgetAudio;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "play"

    .line 50
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-static {p0, p1, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 53
    new-instance v8, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0c0144

    invoke-direct {v8, v9, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 55
    sget-object v9, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    const v10, 0x7f0903f0

    if-eqz v9, :cond_0

    .line 56
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-object v11, v11, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " - "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-object v11, v11, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v10, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 57
    :cond_0
    invoke-static {p0}, Lcom/perm/kate/PlayerActivity;->getRepeat(Landroid/content/Context;)I

    move-result v9

    if-ne v9, v2, :cond_1

    const v9, 0x7f08023b

    goto :goto_0

    :cond_1
    const/4 v11, 0x2

    if-ne v9, v11, :cond_2

    const v9, 0x7f080235

    goto :goto_0

    :cond_2
    const v9, 0x7f080238

    :goto_0
    const v11, 0x7f09041f

    .line 65
    invoke-virtual {v8, v11, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 66
    sget-boolean v9, Lcom/perm/kate/PlaybackService;->is_shuffle:Z

    if-eqz v9, :cond_3

    const v9, 0x7f08023e

    goto :goto_1

    :cond_3
    const v9, 0x7f08023f

    :goto_1
    const v12, 0x7f090420

    .line 67
    invoke-virtual {v8, v12, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 68
    sget-object v9, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v9, :cond_4

    iget v9, v9, Lcom/perm/kate/Player;->state:I

    if-nez v9, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    const v1, 0x7f080226

    goto :goto_3

    :cond_5
    const v1, 0x7f08022b

    :goto_3
    const v2, 0x7f09041d

    .line 69
    invoke-virtual {v8, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 71
    invoke-virtual {v8, v10, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 72
    invoke-virtual {v8, v11, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 73
    invoke-virtual {v8, v12, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f09041e

    .line 74
    invoke-virtual {v8, v0, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f09041c

    .line 75
    invoke-virtual {v8, v0, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 76
    invoke-virtual {v8, v2, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_4

    .line 79
    :cond_6
    new-instance v8, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0145

    invoke-direct {v8, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 81
    invoke-static {p0}, Lcom/perm/kate/Helper;->createMainIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 82
    invoke-static {p0, v1, v2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0901a8

    .line 84
    invoke-virtual {v8, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f0903ef

    .line 85
    invoke-virtual {v8, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 89
    :goto_4
    invoke-static {p0, v8, p1}, Lcom/perm/kate/KateWidgetAudio;->displayWidget(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p0

    .line 91
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method

.method private static displayWidget(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 0

    .line 96
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    .line 97
    invoke-virtual {p0, p2, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method private static getWidgetIds(Landroid/content/Context;)[I
    .locals 2

    .line 101
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/perm/kate/KateWidgetAudio;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    .line 103
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p0

    return-object p0
.end method

.method public static updateAll(Landroid/content/Context;)V
    .locals 3

    .line 107
    invoke-static {p0}, Lcom/perm/kate/KateWidgetAudio;->getWidgetIds(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 108
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 109
    aget v2, v0, v1

    invoke-static {p0, v2}, Lcom/perm/kate/KateWidgetAudio;->buildUpdate(Landroid/content/Context;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "play"

    const-string v1, "repeat"

    .line 115
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v3, ""

    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_3

    .line 118
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "shuffle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 119
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 120
    invoke-static {p1}, Lcom/perm/kate/PlayerActivity;->getRepeat(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v1, v4

    const/4 v4, 0x2

    if-le v1, v4, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    .line 124
    :goto_0
    invoke-static {p1, v3}, Lcom/perm/kate/PlayerActivity;->setRepeat(Landroid/content/Context;I)V

    goto :goto_1

    .line 126
    :cond_3
    sget-boolean v1, Lcom/perm/kate/PlaybackService;->is_shuffle:Z

    if-nez v1, :cond_4

    const/4 v3, 0x1

    :cond_4
    sput-boolean v3, Lcom/perm/kate/PlaybackService;->is_shuffle:Z

    .line 127
    invoke-static {}, Lcom/perm/kate/PlaybackService;->changeShuffleState()V

    .line 129
    :goto_1
    invoke-static {p1}, Lcom/perm/kate/KateWidgetAudio;->updateAll(Landroid/content/Context;)V

    .line 131
    :cond_5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 132
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/perm/kate/PlaybackService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    sget-object v2, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v2, :cond_6

    iget v2, v2, Lcom/perm/kate/Player;->state:I

    if-nez v2, :cond_6

    const-string v0, "pause"

    .line 134
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 136
    :cond_6
    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v2, :cond_7

    const-string v0, "resume"

    .line 137
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 139
    :cond_7
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    :goto_2
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_8
    :goto_3
    return-void

    :catchall_0
    move-exception v0

    .line 144
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 146
    :cond_9
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 1

    .line 16
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    const/4 p2, 0x0

    .line 17
    :goto_0
    array-length v0, p3

    if-ge p2, v0, :cond_0

    .line 18
    aget v0, p3, p2

    invoke-static {p1, v0}, Lcom/perm/kate/KateWidgetAudio;->buildUpdate(Landroid/content/Context;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
