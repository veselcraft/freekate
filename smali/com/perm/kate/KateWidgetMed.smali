.class public Lcom/perm/kate/KateWidgetMed;
.super Landroid/appwidget/AppWidgetProvider;
.source "KateWidgetMed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/KateWidgetMed$WgUpdateService;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 20
    invoke-static {p0, p1}, Lcom/perm/kate/KateWidgetMed;->buildUpdate(Landroid/content/Context;I)V

    return-void
.end method

.method private static buildUpdate(Landroid/content/Context;I)V
    .locals 41
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I

    .prologue
    .line 39
    const/16 v16, 0x0

    .line 41
    .local v16, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 171
    if-eqz v16, :cond_0

    .line 172
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/perm/kate/BaseActivity;->GetTheme(Landroid/content/Context;)V

    .line 46
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/perm/kate/WidgetPreferences;->GetPostPosition(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 49
    .local v33, "post_cursor_position":I
    invoke-static/range {p0 .. p0}, Lcom/perm/kate/Helper;->createMainIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v21

    .line 50
    .local v21, "intent_app":Landroid/content/Intent;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v31

    .line 52
    .local v31, "pendingIntent_app":Landroid/app/PendingIntent;
    invoke-static/range {p0 .. p0}, Lcom/perm/kate/Helper;->createMainIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v20

    .line 53
    .local v20, "intent2_app":Landroid/content/Intent;
    const-string v4, "com.perm.kate.post_cursor_position"

    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    const/high16 v4, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v28

    .line 56
    .local v28, "pendingIntent2_app":Landroid/app/PendingIntent;
    new-instance v23, Landroid/content/Intent;

    const-class v4, Lcom/perm/kate/WallPostActivity;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v23, "intent_post":Landroid/content/Intent;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v32

    .line 59
    .local v32, "pendingIntent_post":Landroid/app/PendingIntent;
    new-instance v24, Landroid/content/Intent;

    const-class v4, Lcom/perm/kate/KateWidgetMed;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v24, "intent_previous":Landroid/content/Intent;
    const-string v4, "previous"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v4, "com.perm.kate.id_widget"

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v30

    .line 64
    .local v30, "pendingIntentPrevious":Landroid/app/PendingIntent;
    new-instance v22, Landroid/content/Intent;

    const-class v4, Lcom/perm/kate/KateWidgetMed;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v22, "intent_next":Landroid/content/Intent;
    const-string v4, "next"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v4, "com.perm.kate.id_widget"

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v29

    .line 70
    .local v29, "pendingIntentNext":Landroid/app/PendingIntent;
    new-instance v40, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030126

    move-object/from16 v0, v40

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 72
    .local v40, "views":Landroid/widget/RemoteViews;
    const v4, 0x7f0e0376

    move-object/from16 v0, v40

    move-object/from16 v1, v31

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 73
    const v4, 0x7f0e0378

    move-object/from16 v0, v40

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 74
    const v4, 0x7f0e037c

    move-object/from16 v0, v40

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 75
    const v4, 0x7f0e0377

    move-object/from16 v0, v40

    move-object/from16 v1, v32

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 76
    const v4, 0x7f0e037e

    move-object/from16 v0, v40

    move-object/from16 v1, v30

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 77
    const v4, 0x7f0e037f

    move-object/from16 v0, v40

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 80
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v4}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 81
    .local v10, "account_id":J
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/perm/kate/db/DataHelper;->fetchPostNews(ZZZZZJI)Landroid/database/Cursor;

    move-result-object v16

    .line 82
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v15

    .line 83
    .local v15, "count":I
    if-nez v15, :cond_2

    .line 171
    if-eqz v16, :cond_0

    .line 172
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 88
    :cond_2
    if-gez v33, :cond_3

    .line 89
    const/16 v33, 0x0

    .line 90
    :try_start_2
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/perm/kate/WidgetPreferences;->SetPostPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_3
    move/from16 v0, v33

    if-lt v0, v15, :cond_4

    .line 93
    add-int/lit8 v33, v15, -0x1

    .line 94
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/perm/kate/WidgetPreferences;->SetPostPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_4
    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 99
    const v5, 0x7f0e037e

    const/4 v6, 0x0

    if-eqz v33, :cond_5

    const/4 v4, 0x1

    :goto_1
    invoke-static {v6, v4}, Lcom/perm/kate/KateWidgetMed;->getResourceForButtonByTheme(ZZ)I

    move-result v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 100
    const v5, 0x7f0e037f

    const/4 v6, 0x1

    add-int/lit8 v4, v15, -0x1

    move/from16 v0, v33

    if-eq v0, v4, :cond_6

    const/4 v4, 0x1

    :goto_2
    invoke-static {v6, v4}, Lcom/perm/kate/KateWidgetMed;->getResourceForButtonByTheme(ZZ)I

    move-result v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 103
    const-string v4, "type"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 104
    .local v37, "type":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "first_name"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "last_name"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 105
    .local v38, "user_name":Ljava/lang/String;
    const-string v4, "date"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 106
    .local v26, "long_date":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    .line 107
    .local v13, "ago_text":Ljava/lang/String;
    const-string v4, "source_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 111
    .local v34, "source_id":J
    const-wide/16 v4, 0x0

    cmp-long v4, v34, v4

    if-lez v4, :cond_7

    .line 112
    const v4, 0x7f0e037a

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 113
    const-string v4, "photo"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 124
    .local v39, "user_photo":Ljava/lang/String;
    :goto_3
    const v4, 0x7f0e037b

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 126
    const-string v4, "photo"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 127
    const v4, 0x7f0e037d

    const v5, 0x7f07044f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 150
    :goto_4
    if-nez v39, :cond_e

    .line 151
    const v4, 0x7f0e0379

    const v5, 0x7f020143

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 166
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/perm/kate/KateWidgetMed;->displayWidget(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    if-eqz v16, :cond_0

    .line 172
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 99
    .end local v13    # "ago_text":Ljava/lang/String;
    .end local v26    # "long_date":J
    .end local v34    # "source_id":J
    .end local v37    # "type":Ljava/lang/String;
    .end local v38    # "user_name":Ljava/lang/String;
    .end local v39    # "user_photo":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 100
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 115
    .restart local v13    # "ago_text":Ljava/lang/String;
    .restart local v26    # "long_date":J
    .restart local v34    # "source_id":J
    .restart local v37    # "type":Ljava/lang/String;
    .restart local v38    # "user_name":Ljava/lang/String;
    :cond_7
    :try_start_3
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-wide/from16 v0, v34

    neg-long v6, v0

    invoke-virtual {v4, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v19

    .line 116
    .local v19, "g":Lcom/perm/kate/api/Group;
    if-eqz v19, :cond_8

    .line 117
    const v4, 0x7f0e037a

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 118
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    move-object/from16 v39, v0

    .restart local v39    # "user_photo":Ljava/lang/String;
    goto :goto_3

    .line 120
    .end local v39    # "user_photo":Ljava/lang/String;
    :cond_8
    const v4, 0x7f0e037a

    const-string v5, ""

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 121
    const/16 v39, 0x0

    .restart local v39    # "user_photo":Ljava/lang/String;
    goto :goto_3

    .line 128
    .end local v19    # "g":Lcom/perm/kate/api/Group;
    :cond_9
    const-string v4, "photo_tag"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 129
    const v4, 0x7f0e037d

    const v5, 0x7f070450

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 167
    .end local v10    # "account_id":J
    .end local v13    # "ago_text":Ljava/lang/String;
    .end local v15    # "count":I
    .end local v20    # "intent2_app":Landroid/content/Intent;
    .end local v21    # "intent_app":Landroid/content/Intent;
    .end local v22    # "intent_next":Landroid/content/Intent;
    .end local v23    # "intent_post":Landroid/content/Intent;
    .end local v24    # "intent_previous":Landroid/content/Intent;
    .end local v26    # "long_date":J
    .end local v28    # "pendingIntent2_app":Landroid/app/PendingIntent;
    .end local v29    # "pendingIntentNext":Landroid/app/PendingIntent;
    .end local v30    # "pendingIntentPrevious":Landroid/app/PendingIntent;
    .end local v31    # "pendingIntent_app":Landroid/app/PendingIntent;
    .end local v32    # "pendingIntent_post":Landroid/app/PendingIntent;
    .end local v33    # "post_cursor_position":I
    .end local v34    # "source_id":J
    .end local v37    # "type":Ljava/lang/String;
    .end local v38    # "user_name":Ljava/lang/String;
    .end local v39    # "user_photo":Ljava/lang/String;
    .end local v40    # "views":Landroid/widget/RemoteViews;
    :catch_0
    move-exception v17

    .line 168
    .local v17, "ex":Ljava/lang/Throwable;
    :try_start_4
    invoke-static/range {v17 .. v17}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 169
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 171
    if-eqz v16, :cond_0

    .line 172
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 130
    .end local v17    # "ex":Ljava/lang/Throwable;
    .restart local v10    # "account_id":J
    .restart local v13    # "ago_text":Ljava/lang/String;
    .restart local v15    # "count":I
    .restart local v20    # "intent2_app":Landroid/content/Intent;
    .restart local v21    # "intent_app":Landroid/content/Intent;
    .restart local v22    # "intent_next":Landroid/content/Intent;
    .restart local v23    # "intent_post":Landroid/content/Intent;
    .restart local v24    # "intent_previous":Landroid/content/Intent;
    .restart local v26    # "long_date":J
    .restart local v28    # "pendingIntent2_app":Landroid/app/PendingIntent;
    .restart local v29    # "pendingIntentNext":Landroid/app/PendingIntent;
    .restart local v30    # "pendingIntentPrevious":Landroid/app/PendingIntent;
    .restart local v31    # "pendingIntent_app":Landroid/app/PendingIntent;
    .restart local v32    # "pendingIntent_post":Landroid/app/PendingIntent;
    .restart local v33    # "post_cursor_position":I
    .restart local v34    # "source_id":J
    .restart local v37    # "type":Ljava/lang/String;
    .restart local v38    # "user_name":Ljava/lang/String;
    .restart local v39    # "user_photo":Ljava/lang/String;
    .restart local v40    # "views":Landroid/widget/RemoteViews;
    :cond_a
    :try_start_5
    const-string v4, "friend"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 131
    invoke-static/range {v16 .. v16}, Lcom/perm/kate/KateWidgetMed;->getFriendsString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v18

    .line 132
    .local v18, "friends":Ljava/lang/String;
    const v4, 0x7f0e037d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f070448

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    .line 171
    .end local v10    # "account_id":J
    .end local v13    # "ago_text":Ljava/lang/String;
    .end local v15    # "count":I
    .end local v18    # "friends":Ljava/lang/String;
    .end local v20    # "intent2_app":Landroid/content/Intent;
    .end local v21    # "intent_app":Landroid/content/Intent;
    .end local v22    # "intent_next":Landroid/content/Intent;
    .end local v23    # "intent_post":Landroid/content/Intent;
    .end local v24    # "intent_previous":Landroid/content/Intent;
    .end local v26    # "long_date":J
    .end local v28    # "pendingIntent2_app":Landroid/app/PendingIntent;
    .end local v29    # "pendingIntentNext":Landroid/app/PendingIntent;
    .end local v30    # "pendingIntentPrevious":Landroid/app/PendingIntent;
    .end local v31    # "pendingIntent_app":Landroid/app/PendingIntent;
    .end local v32    # "pendingIntent_post":Landroid/app/PendingIntent;
    .end local v33    # "post_cursor_position":I
    .end local v34    # "source_id":J
    .end local v37    # "type":Ljava/lang/String;
    .end local v38    # "user_name":Ljava/lang/String;
    .end local v39    # "user_photo":Ljava/lang/String;
    .end local v40    # "views":Landroid/widget/RemoteViews;
    :catchall_0
    move-exception v4

    if-eqz v16, :cond_b

    .line 172
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v4

    .line 133
    .restart local v10    # "account_id":J
    .restart local v13    # "ago_text":Ljava/lang/String;
    .restart local v15    # "count":I
    .restart local v20    # "intent2_app":Landroid/content/Intent;
    .restart local v21    # "intent_app":Landroid/content/Intent;
    .restart local v22    # "intent_next":Landroid/content/Intent;
    .restart local v23    # "intent_post":Landroid/content/Intent;
    .restart local v24    # "intent_previous":Landroid/content/Intent;
    .restart local v26    # "long_date":J
    .restart local v28    # "pendingIntent2_app":Landroid/app/PendingIntent;
    .restart local v29    # "pendingIntentNext":Landroid/app/PendingIntent;
    .restart local v30    # "pendingIntentPrevious":Landroid/app/PendingIntent;
    .restart local v31    # "pendingIntent_app":Landroid/app/PendingIntent;
    .restart local v32    # "pendingIntent_post":Landroid/app/PendingIntent;
    .restart local v33    # "post_cursor_position":I
    .restart local v34    # "source_id":J
    .restart local v37    # "type":Ljava/lang/String;
    .restart local v38    # "user_name":Ljava/lang/String;
    .restart local v39    # "user_photo":Ljava/lang/String;
    .restart local v40    # "views":Landroid/widget/RemoteViews;
    :cond_c
    :try_start_6
    const-string v4, "note"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f070449

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "note_titles"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 135
    .local v25, "note_text":Ljava/lang/String;
    const v4, 0x7f0e037d

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 138
    .end local v25    # "note_text":Ljava/lang/String;
    :cond_d
    const-string v4, "text"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 139
    .local v36, "text":Ljava/lang/String;
    const v4, 0x7f0e037d

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 153
    .end local v36    # "text":Ljava/lang/String;
    :cond_e
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Lcom/perm/kate/ImageLoader;->isCachedInMemory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 154
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Lcom/perm/kate/ImageLoader;->getFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 155
    .local v14, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_f

    .line 156
    const v4, 0x7f0e0379

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v14}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_5

    .line 158
    :cond_f
    const v4, 0x7f0e0379

    const v5, 0x7f020143

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    .line 160
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    :cond_10
    const v4, 0x7f0e0379

    const v5, 0x7f020143

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 161
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Lcom/perm/kate/KateWidgetMed;->requestImage(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_5
.end method

.method private static displayWidget(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateViews"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I

    .prologue
    .line 206
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 207
    .local v0, "manager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0, p2, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 208
    return-void
.end method

.method private static getFriendsString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 8
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 186
    const-string v6, "friend_first_names"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "first_names_str":Ljava/lang/String;
    const-string v6, "friend_last_names"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, "last_names_str":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez v5, :cond_2

    .line 190
    :cond_0
    const-string v2, ""

    .line 202
    :cond_1
    return-object v2

    .line 191
    :cond_2
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "first_names":[Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "last_names":[Ljava/lang/String;
    const-string v2, ""

    .line 195
    .local v2, "friends":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_1

    array-length v6, v4

    if-ge v3, v6, :cond_1

    .line 196
    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 197
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 199
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static getResourceForButtonByTheme(ZZ)I
    .locals 1
    .param p0, "is_next"    # Z
    .param p1, "is_enabled"    # Z

    .prologue
    .line 212
    if-eqz p0, :cond_1

    .line 213
    if-eqz p1, :cond_0

    .line 214
    const v0, 0x7f0201c7

    .line 223
    .local v0, "res":I
    :goto_0
    return v0

    .line 216
    .end local v0    # "res":I
    :cond_0
    const v0, 0x7f0201c6

    .restart local v0    # "res":I
    goto :goto_0

    .line 218
    .end local v0    # "res":I
    :cond_1
    if-eqz p1, :cond_2

    .line 219
    const v0, 0x7f0201c9

    .restart local v0    # "res":I
    goto :goto_0

    .line 221
    .end local v0    # "res":I
    :cond_2
    const v0, 0x7f0201c8

    .restart local v0    # "res":I
    goto :goto_0
.end method

.method private static getWidgetIds(Landroid/content/Context;)[I
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 317
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/perm/kate/KateWidgetMed;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 318
    .local v1, "thisWidget":Landroid/content/ComponentName;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 319
    .local v0, "manager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    return-object v2
.end method

.method public static refresh(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 311
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/KateWidgetMed;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 312
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "refresh_widgets"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 314
    return-void
.end method

.method private static requestImage(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I
    .param p2, "url_photo"    # Ljava/lang/String;

    .prologue
    .line 177
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/KateWidgetMed$WgUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .local v0, "intent_refresh":Landroid/content/Intent;
    const-string v1, "get_image"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v1, "com.perm.kate.id_widget"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    const-string v1, "com.perm.kate.url_photo"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 182
    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 28
    aget v1, p2, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/perm/kate/WidgetPreferences;->Delete(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 283
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 308
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 286
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v6, "previous"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "next"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 287
    :cond_2
    const-string v6, "com.perm.kate.id_widget"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 288
    .local v5, "widget_id":I
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/perm/kate/WidgetPreferences;->GetPostPosition(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 289
    .local v3, "position":I
    const-string v6, "previous"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 290
    add-int/lit8 v3, v3, -0x1

    .line 293
    :goto_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Lcom/perm/kate/WidgetPreferences;->SetPostPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {p1, v5}, Lcom/perm/kate/KateWidgetMed;->buildUpdate(Landroid/content/Context;I)V

    .line 296
    .end local v3    # "position":I
    .end local v5    # "widget_id":I
    :cond_3
    const-string v6, "refresh_widgets"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 297
    const-string v6, "Kate.KateWidgetMed"

    const-string v7, "refresh_widgets received"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-static {p1}, Lcom/perm/kate/KateWidgetMed;->getWidgetIds(Landroid/content/Context;)[I

    move-result-object v1

    .line 299
    .local v1, "appWidgetIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v6, v1

    if-ge v2, v6, :cond_5

    .line 300
    aget v6, v1, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-static {p1, v6, v7}, Lcom/perm/kate/WidgetPreferences;->SetPostPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    aget v6, v1, v2

    invoke-static {p1, v6}, Lcom/perm/kate/KateWidgetMed;->buildUpdate(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 292
    .end local v1    # "appWidgetIds":[I
    .end local v2    # "i":I
    .restart local v3    # "position":I
    .restart local v5    # "widget_id":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 304
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "position":I
    .end local v5    # "widget_id":I
    :catch_0
    move-exception v4

    .line 305
    .local v4, "th":Ljava/lang/Throwable;
    invoke-static {v4}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 307
    .end local v4    # "th":Ljava/lang/Throwable;
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 33
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 35
    aget v1, p3, v0

    invoke-static {p1, v1}, Lcom/perm/kate/KateWidgetMed;->buildUpdate(Landroid/content/Context;I)V

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method
