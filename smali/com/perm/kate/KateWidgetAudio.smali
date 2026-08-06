.class public Lcom/perm/kate/KateWidgetAudio;
.super Landroid/appwidget/AppWidgetProvider;
.source "KateWidgetAudio.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private static buildUpdate(Landroid/content/Context;I)V
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I

    .prologue
    .line 24
    const/16 v21, 0x0

    .line 26
    .local v21, "views":Landroid/widget/RemoteViews;
    :try_start_0
    new-instance v7, Landroid/content/Intent;

    const-class v23, Lcom/perm/kate/PlayerActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .local v7, "intent_player":Landroid/content/Intent;
    const/high16 v23, 0x14000000

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 28
    const-string v23, "com.audioanywhere.from_notification"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 29
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v23

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 31
    .local v14, "pendingIntentPlayer":Landroid/app/PendingIntent;
    sget-object v23, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v23, :cond_6

    .line 33
    new-instance v9, Landroid/content/Intent;

    const-class v23, Lcom/perm/kate/KateWidgetAudio;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .local v9, "intent_repeat":Landroid/content/Intent;
    const-string v23, "repeat"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v23

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 37
    .local v16, "pendingIntentRepeat":Landroid/app/PendingIntent;
    new-instance v10, Landroid/content/Intent;

    const-class v23, Lcom/perm/kate/KateWidgetAudio;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .local v10, "intent_shuffle":Landroid/content/Intent;
    const-string v23, "shuffle"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v23

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 41
    .local v17, "pendingIntentShuffle":Landroid/app/PendingIntent;
    new-instance v8, Landroid/content/Intent;

    const-class v23, Lcom/perm/kate/PlaybackService;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v8, "intent_previous":Landroid/content/Intent;
    const-string v23, "previous"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v23

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 45
    .local v15, "pendingIntentPrevious":Landroid/app/PendingIntent;
    new-instance v5, Landroid/content/Intent;

    const-class v23, Lcom/perm/kate/PlaybackService;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v5, "intent_next":Landroid/content/Intent;
    const-string v23, "next"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v23

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 49
    .local v12, "pendingIntentNext":Landroid/app/PendingIntent;
    new-instance v6, Landroid/content/Intent;

    const-class v23, Lcom/perm/kate/KateWidgetAudio;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .local v6, "intent_play":Landroid/content/Intent;
    const-string v23, "play"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v23

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 53
    .local v13, "pendingIntentPlay":Landroid/app/PendingIntent;
    new-instance v22, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v23

    const v24, 0x7f030124

    invoke-direct/range {v22 .. v24}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v21    # "views":Landroid/widget/RemoteViews;
    .local v22, "views":Landroid/widget/RemoteViews;
    :try_start_1
    sget-object v23, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v23, :cond_0

    .line 56
    const v23, 0x7f0e036e

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v25, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 57
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/perm/kate/PlayerActivity;->getRepeat(Landroid/content/Context;)I

    move-result v19

    .line 59
    .local v19, "repeat_value":I
    const/16 v23, 0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 60
    const v18, 0x7f02016e

    .line 65
    .local v18, "repeat_res":I
    :goto_0
    const v23, 0x7f0e036f

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 66
    sget-boolean v20, Lcom/perm/kate/PlaybackService;->is_shuffle:Z

    .line 67
    .local v20, "v":Z
    const v24, 0x7f0e0373

    if-eqz v20, :cond_3

    const v23, 0x7f020171

    :goto_1
    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 68
    sget-object v23, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v23, :cond_4

    sget-object v23, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    move-object/from16 v0, v23

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    move/from16 v23, v0

    if-nez v23, :cond_4

    const/16 v20, 0x1

    .line 69
    :goto_2
    const v24, 0x7f0e0371

    if-eqz v20, :cond_5

    const v23, 0x7f020159

    :goto_3
    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 71
    const v23, 0x7f0e036e

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 72
    const v23, 0x7f0e036f

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 73
    const v23, 0x7f0e0373

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 74
    const v23, 0x7f0e0370

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 75
    const v23, 0x7f0e0372

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v12}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 76
    const v23, 0x7f0e0371

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v21, v22

    .line 89
    .end local v5    # "intent_next":Landroid/content/Intent;
    .end local v6    # "intent_play":Landroid/content/Intent;
    .end local v8    # "intent_previous":Landroid/content/Intent;
    .end local v9    # "intent_repeat":Landroid/content/Intent;
    .end local v10    # "intent_shuffle":Landroid/content/Intent;
    .end local v12    # "pendingIntentNext":Landroid/app/PendingIntent;
    .end local v13    # "pendingIntentPlay":Landroid/app/PendingIntent;
    .end local v15    # "pendingIntentPrevious":Landroid/app/PendingIntent;
    .end local v16    # "pendingIntentRepeat":Landroid/app/PendingIntent;
    .end local v17    # "pendingIntentShuffle":Landroid/app/PendingIntent;
    .end local v18    # "repeat_res":I
    .end local v19    # "repeat_value":I
    .end local v20    # "v":Z
    .end local v22    # "views":Landroid/widget/RemoteViews;
    .restart local v21    # "views":Landroid/widget/RemoteViews;
    :goto_4
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/perm/kate/KateWidgetAudio;->displayWidget(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 93
    .end local v7    # "intent_player":Landroid/content/Intent;
    .end local v14    # "pendingIntentPlayer":Landroid/app/PendingIntent;
    :goto_5
    return-void

    .line 61
    .end local v21    # "views":Landroid/widget/RemoteViews;
    .restart local v5    # "intent_next":Landroid/content/Intent;
    .restart local v6    # "intent_play":Landroid/content/Intent;
    .restart local v7    # "intent_player":Landroid/content/Intent;
    .restart local v8    # "intent_previous":Landroid/content/Intent;
    .restart local v9    # "intent_repeat":Landroid/content/Intent;
    .restart local v10    # "intent_shuffle":Landroid/content/Intent;
    .restart local v12    # "pendingIntentNext":Landroid/app/PendingIntent;
    .restart local v13    # "pendingIntentPlay":Landroid/app/PendingIntent;
    .restart local v14    # "pendingIntentPlayer":Landroid/app/PendingIntent;
    .restart local v15    # "pendingIntentPrevious":Landroid/app/PendingIntent;
    .restart local v16    # "pendingIntentRepeat":Landroid/app/PendingIntent;
    .restart local v17    # "pendingIntentShuffle":Landroid/app/PendingIntent;
    .restart local v19    # "repeat_value":I
    .restart local v22    # "views":Landroid/widget/RemoteViews;
    :cond_1
    const/16 v23, 0x2

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 62
    const v18, 0x7f020168

    .restart local v18    # "repeat_res":I
    goto/16 :goto_0

    .line 64
    .end local v18    # "repeat_res":I
    :cond_2
    const v18, 0x7f02016b

    .restart local v18    # "repeat_res":I
    goto/16 :goto_0

    .line 67
    .restart local v20    # "v":Z
    :cond_3
    const v23, 0x7f020172

    goto/16 :goto_1

    .line 68
    :cond_4
    const/16 v20, 0x0

    goto :goto_2

    .line 69
    :cond_5
    const v23, 0x7f02015e

    goto :goto_3

    .line 79
    .end local v5    # "intent_next":Landroid/content/Intent;
    .end local v6    # "intent_play":Landroid/content/Intent;
    .end local v8    # "intent_previous":Landroid/content/Intent;
    .end local v9    # "intent_repeat":Landroid/content/Intent;
    .end local v10    # "intent_shuffle":Landroid/content/Intent;
    .end local v12    # "pendingIntentNext":Landroid/app/PendingIntent;
    .end local v13    # "pendingIntentPlay":Landroid/app/PendingIntent;
    .end local v15    # "pendingIntentPrevious":Landroid/app/PendingIntent;
    .end local v16    # "pendingIntentRepeat":Landroid/app/PendingIntent;
    .end local v17    # "pendingIntentShuffle":Landroid/app/PendingIntent;
    .end local v18    # "repeat_res":I
    .end local v19    # "repeat_value":I
    .end local v20    # "v":Z
    .end local v22    # "views":Landroid/widget/RemoteViews;
    .restart local v21    # "views":Landroid/widget/RemoteViews;
    :cond_6
    new-instance v22, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v23

    const v24, 0x7f030125

    invoke-direct/range {v22 .. v24}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 81
    .end local v21    # "views":Landroid/widget/RemoteViews;
    .restart local v22    # "views":Landroid/widget/RemoteViews;
    :try_start_3
    invoke-static/range {p0 .. p0}, Lcom/perm/kate/Helper;->createMainIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    .line 82
    .local v4, "intent_app":Landroid/content/Intent;
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v4, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 84
    .local v11, "pendingIntentApp":Landroid/app/PendingIntent;
    const v23, 0x7f0e0374

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 85
    const v23, 0x7f0e0375

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v21, v22

    .end local v22    # "views":Landroid/widget/RemoteViews;
    .restart local v21    # "views":Landroid/widget/RemoteViews;
    goto :goto_4

    .line 90
    .end local v4    # "intent_app":Landroid/content/Intent;
    .end local v7    # "intent_player":Landroid/content/Intent;
    .end local v11    # "pendingIntentApp":Landroid/app/PendingIntent;
    .end local v14    # "pendingIntentPlayer":Landroid/app/PendingIntent;
    :catch_0
    move-exception v3

    .line 91
    .local v3, "ex":Ljava/lang/Throwable;
    :goto_6
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 90
    .end local v3    # "ex":Ljava/lang/Throwable;
    .end local v21    # "views":Landroid/widget/RemoteViews;
    .restart local v7    # "intent_player":Landroid/content/Intent;
    .restart local v14    # "pendingIntentPlayer":Landroid/app/PendingIntent;
    .restart local v22    # "views":Landroid/widget/RemoteViews;
    :catch_1
    move-exception v3

    move-object/from16 v21, v22

    .end local v22    # "views":Landroid/widget/RemoteViews;
    .restart local v21    # "views":Landroid/widget/RemoteViews;
    goto :goto_6
.end method

.method private static displayWidget(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateViews"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I

    .prologue
    .line 96
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 97
    .local v0, "manager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0, p2, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 98
    return-void
.end method

.method private static getWidgetIds(Landroid/content/Context;)[I
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 101
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/perm/kate/KateWidgetAudio;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v1, "thisWidget":Landroid/content/ComponentName;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 103
    .local v0, "manager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    return-object v2
.end method

.method public static updateAll(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-static {p0}, Lcom/perm/kate/KateWidgetAudio;->getWidgetIds(Landroid/content/Context;)[I

    move-result-object v0

    .line 108
    .local v0, "appWidgetIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 109
    aget v2, v0, v1

    invoke-static {p0, v2}, Lcom/perm/kate/KateWidgetAudio;->buildUpdate(Landroid/content/Context;I)V

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 115
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 147
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 118
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v4, "repeat"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "shuffle"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 119
    :cond_2
    const-string v4, "repeat"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 120
    invoke-static {p1}, Lcom/perm/kate/PlayerActivity;->getRepeat(Landroid/content/Context;)I

    move-result v2

    .line 121
    .local v2, "repeat_value":I
    add-int/lit8 v2, v2, 0x1

    .line 122
    const/4 v4, 0x2

    if-le v2, v4, :cond_3

    .line 123
    const/4 v2, 0x0

    .line 124
    :cond_3
    invoke-static {p1, v2}, Lcom/perm/kate/PlayerActivity;->setRepeat(Landroid/content/Context;I)V

    .line 129
    .end local v2    # "repeat_value":I
    :goto_1
    invoke-static {p1}, Lcom/perm/kate/KateWidgetAudio;->updateAll(Landroid/content/Context;)V

    .line 131
    :cond_4
    const-string v4, "play"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 132
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/perm/kate/PlaybackService;

    invoke-direct {v1, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v1, "intent_play_pause_resume":Landroid/content/Intent;
    sget-object v4, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v4, :cond_8

    sget-object v4, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v4, v4, Lcom/perm/kate/Player;->state:I

    if-nez v4, :cond_8

    .line 134
    const-string v4, "pause"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    :goto_2
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "intent_play_pause_resume":Landroid/content/Intent;
    :cond_5
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 126
    .restart local v0    # "action":Ljava/lang/String;
    :cond_6
    :try_start_1
    sget-boolean v4, Lcom/perm/kate/PlaybackService;->is_shuffle:Z

    if-nez v4, :cond_7

    const/4 v4, 0x1

    :goto_4
    sput-boolean v4, Lcom/perm/kate/PlaybackService;->is_shuffle:Z

    .line 127
    invoke-static {}, Lcom/perm/kate/PlaybackService;->changeShuffleState()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 143
    .end local v0    # "action":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 144
    .local v3, "th":Ljava/lang/Throwable;
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 126
    .end local v3    # "th":Ljava/lang/Throwable;
    .restart local v0    # "action":Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    goto :goto_4

    .line 136
    .restart local v1    # "intent_play_pause_resume":Landroid/content/Intent;
    :cond_8
    :try_start_2
    sget-object v4, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v4, :cond_9

    .line 137
    const-string v4, "resume"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 139
    :cond_9
    const-string v4, "play"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 16
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 17
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 18
    aget v1, p3, v0

    invoke-static {p1, v1}, Lcom/perm/kate/KateWidgetAudio;->buildUpdate(Landroid/content/Context;I)V

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method
