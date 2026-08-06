.class public Lcom/perm/kate/KateWidgetMessages;
.super Landroid/appwidget/AppWidgetProvider;
.source "KateWidgetMessages.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private static buildUpdate(Landroid/content/Context;I)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I

    .prologue
    .line 28
    :try_start_0
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "WIDGET buildUpdate  appWidgetId "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 29
    const/4 v14, 0x0

    .line 30
    .local v14, "views":Landroid/widget/RemoteViews;
    const/4 v2, 0x0

    .line 31
    .local v2, "account_id":Ljava/lang/Long;
    sget-object v15, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v15, :cond_0

    .line 32
    sget-object v15, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v15}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 33
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/perm/kate/Helper;->createMainIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    .line 34
    .local v5, "intent_app":Landroid/content/Intent;
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v5, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 35
    .local v9, "pendingIntentApp":Landroid/app/PendingIntent;
    if-nez v2, :cond_1

    .line 36
    new-instance v14, Landroid/widget/RemoteViews;

    .end local v14    # "views":Landroid/widget/RemoteViews;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const v16, 0x7f030129

    invoke-direct/range {v14 .. v16}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 37
    .restart local v14    # "views":Landroid/widget/RemoteViews;
    const v15, 0x7f0e0383

    invoke-virtual {v14, v15, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 77
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v14, v1}, Lcom/perm/kate/KateWidgetMessages;->displayWidget(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 82
    .end local v2    # "account_id":Ljava/lang/Long;
    .end local v5    # "intent_app":Landroid/content/Intent;
    .end local v9    # "pendingIntentApp":Landroid/app/PendingIntent;
    .end local v14    # "views":Landroid/widget/RemoteViews;
    :goto_1
    return-void

    .line 38
    .restart local v2    # "account_id":Ljava/lang/Long;
    .restart local v5    # "intent_app":Landroid/content/Intent;
    .restart local v9    # "pendingIntentApp":Landroid/app/PendingIntent;
    .restart local v14    # "views":Landroid/widget/RemoteViews;
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/perm/kate/BlockActivity;->getBlockFlag(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 39
    new-instance v14, Landroid/widget/RemoteViews;

    .end local v14    # "views":Landroid/widget/RemoteViews;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const v16, 0x7f030128

    invoke-direct/range {v14 .. v16}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 41
    .restart local v14    # "views":Landroid/widget/RemoteViews;
    sget-object v15, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v8

    .line 42
    .local v8, "me":Lcom/perm/kate/api/User;
    const v15, 0x7f0e02ae

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v8, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 45
    const v15, 0x7f0e02ae

    invoke-virtual {v14, v15, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 47
    new-instance v6, Landroid/content/Intent;

    const-class v15, Lcom/perm/kate/CheckMembersActivity;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v6, "intent_post":Landroid/content/Intent;
    const-string v15, "com.perm.kate.new_chat"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v6, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 50
    .local v11, "pendingIntent_post":Landroid/app/PendingIntent;
    const v15, 0x7f0e0380

    invoke-virtual {v14, v15, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 54
    new-instance v7, Landroid/content/Intent;

    const-class v15, Lcom/perm/kate/KateWidgetMessages;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v7, "intent_previous":Landroid/content/Intent;
    const-string v15, "refresh"

    invoke-virtual {v7, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v15, "com.perm.kate.id_widget"

    move/from16 v0, p1

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v7, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 58
    .local v10, "pendingIntentPrevious":Landroid/app/PendingIntent;
    const v15, 0x7f0e0381

    invoke-virtual {v14, v15, v10}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 60
    new-instance v4, Landroid/content/Intent;

    const-class v15, Lcom/perm/kate/MessagesWidgetService;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v4, "intent":Landroid/content/Intent;
    const-string v15, "appWidgetId"

    move/from16 v0, p1

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 63
    const v15, 0x7f0e0382

    move/from16 v0, p1

    invoke-virtual {v14, v0, v15, v4}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    .line 66
    new-instance v12, Landroid/content/Intent;

    const-class v15, Lcom/perm/kate/MessageThreadActivity;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v12, "toastIntent":Landroid/content/Intent;
    const-string v15, "appWidgetId"

    move/from16 v0, p1

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 70
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v12, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 71
    .local v13, "toastPendingIntent":Landroid/app/PendingIntent;
    const v15, 0x7f0e0382

    invoke-virtual {v14, v15, v13}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 78
    .end local v2    # "account_id":Ljava/lang/Long;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "intent_app":Landroid/content/Intent;
    .end local v6    # "intent_post":Landroid/content/Intent;
    .end local v7    # "intent_previous":Landroid/content/Intent;
    .end local v8    # "me":Lcom/perm/kate/api/User;
    .end local v9    # "pendingIntentApp":Landroid/app/PendingIntent;
    .end local v10    # "pendingIntentPrevious":Landroid/app/PendingIntent;
    .end local v11    # "pendingIntent_post":Landroid/app/PendingIntent;
    .end local v12    # "toastIntent":Landroid/content/Intent;
    .end local v13    # "toastPendingIntent":Landroid/app/PendingIntent;
    .end local v14    # "views":Landroid/widget/RemoteViews;
    :catch_0
    move-exception v3

    .line 79
    .local v3, "ex":Ljava/lang/Throwable;
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 80
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "WIDGET buildUpdate Throwable "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 73
    .end local v3    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "account_id":Ljava/lang/Long;
    .restart local v5    # "intent_app":Landroid/content/Intent;
    .restart local v9    # "pendingIntentApp":Landroid/app/PendingIntent;
    .restart local v14    # "views":Landroid/widget/RemoteViews;
    :cond_2
    :try_start_1
    new-instance v14, Landroid/widget/RemoteViews;

    .end local v14    # "views":Landroid/widget/RemoteViews;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const v16, 0x7f03012a

    invoke-direct/range {v14 .. v16}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 74
    .restart local v14    # "views":Landroid/widget/RemoteViews;
    const v15, 0x7f0e0384

    invoke-virtual {v14, v15, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static displayNewData(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_1

    .line 131
    :cond_0
    return-void

    .line 128
    :cond_1
    invoke-static {p0}, Lcom/perm/kate/KateWidgetMessages;->getWidgetIds(Landroid/content/Context;)[I

    move-result-object v0

    .line 129
    .local v0, "appWidgetIds":[I
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 130
    .local v1, "id":I
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    const v5, 0x7f0e0382

    invoke-virtual {v4, v1, v5}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static displayWidget(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateViews"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I

    .prologue
    .line 85
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WIDGET displayWidget appWidgetId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 87
    .local v0, "manager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0, p2, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 88
    return-void
.end method

.method private static getWidgetIds(Landroid/content/Context;)[I
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 91
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/perm/kate/KateWidgetMessages;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v1, "thisWidget":Landroid/content/ComponentName;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 93
    .local v0, "manager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    return-object v2
.end method

.method public static startUpdateService(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/UpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "widget_refresh"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 123
    return-void
.end method

.method public static updateAll(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-static {p0}, Lcom/perm/kate/KateWidgetMessages;->getWidgetIds(Landroid/content/Context;)[I

    move-result-object v0

    .line 98
    .local v0, "appWidgetIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 99
    aget v2, v0, v1

    invoke-static {p0, v2}, Lcom/perm/kate/KateWidgetMessages;->buildUpdate(Landroid/content/Context;I)V

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {p0}, Lcom/perm/kate/KateWidgetMessages;->displayNewData(Landroid/content/Context;)V

    .line 101
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 106
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "action":Ljava/lang/String;
    const-string v2, "refresh"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-static {p1}, Lcom/perm/kate/KateWidgetMessages;->startUpdateService(Landroid/content/Context;)V

    .line 112
    const-string v2, "com.perm.kate.id_widget"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 113
    .local v1, "widget_id":I
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    const v3, 0x7f0e0382

    invoke-virtual {v2, v1, v3}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "widget_id":I
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 117
    return-void

    .line 115
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 21
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 22
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 23
    aget v1, p3, v0

    invoke-static {p1, v1}, Lcom/perm/kate/KateWidgetMessages;->buildUpdate(Landroid/content/Context;I)V

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method
