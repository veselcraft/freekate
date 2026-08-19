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

    .line 20
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;I)V
    .locals 0

    .line 20
    invoke-static {p0, p1}, Lcom/perm/kate/KateWidgetMed;->buildUpdate(Landroid/content/Context;I)V

    return-void
.end method

.method private static buildUpdate(Landroid/content/Context;I)V
    .locals 13

    const-string v0, "com.perm.kate.id_widget"

    const/4 v1, 0x0

    .line 41
    :try_start_0
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v2, :cond_0

    return-void

    .line 44
    :cond_0
    invoke-static {p0}, Lcom/perm/kate/BaseActivity;->GetTheme(Landroid/content/Context;)V

    .line 46
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/perm/kate/WidgetPreferences;->GetPostPosition(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 49
    invoke-static {p0}, Lcom/perm/kate/Helper;->createMainIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    .line 50
    invoke-static {p0, v4, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 52
    invoke-static {p0}, Lcom/perm/kate/Helper;->createMainIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.perm.kate.post_cursor_position"

    .line 53
    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v6, 0x8000000

    .line 54
    invoke-static {p0, p1, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 56
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/perm/kate/WallPostActivity;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    invoke-static {p0, v4, v6, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 59
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/perm/kate/KateWidgetMed;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "previous"

    .line 60
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    invoke-static {p0, p1, v7, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 64
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/perm/kate/KateWidgetMed;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "next"

    .line 65
    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-virtual {v8, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    invoke-static {p0, p1, v8, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 70
    new-instance v8, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0c0146

    invoke-direct {v8, v9, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v9, 0x7f0901a7

    .line 72
    invoke-virtual {v8, v9, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v3, 0x7f090200

    .line 73
    invoke-virtual {v8, v3, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v3, 0x7f0901ff

    .line 74
    invoke-virtual {v8, v3, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v3, 0x7f090148

    .line 75
    invoke-virtual {v8, v3, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v3, 0x7f0901aa

    .line 76
    invoke-virtual {v8, v3, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v5, 0x7f0901a9

    .line 77
    invoke-virtual {v8, v5, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 80
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 81
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, v6, v7, v4}, Lcom/perm/kate/db/DataHelper;->fetchPostNews(JI)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 82
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_1

    .line 169
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :cond_1
    if-gez v2, :cond_2

    .line 90
    :try_start_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v2, v7}, Lcom/perm/kate/WidgetPreferences;->SetPostPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_2
    if-lt v2, v6, :cond_3

    add-int/lit8 v2, v6, -0x1

    .line 94
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v7, v9}, Lcom/perm/kate/WidgetPreferences;->SetPostPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_3
    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v7, 0x1

    if-eqz v2, :cond_4

    const/4 v9, 0x1

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    .line 99
    :goto_0
    invoke-static {v4, v9}, Lcom/perm/kate/KateWidgetMed;->getResourceForButtonByTheme(ZZ)I

    move-result v9

    invoke-virtual {v8, v3, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    sub-int/2addr v6, v7

    if-eq v2, v6, :cond_5

    const/4 v4, 0x1

    .line 100
    :cond_5
    invoke-static {v7, v4}, Lcom/perm/kate/KateWidgetMed;->getResourceForButtonByTheme(ZZ)I

    move-result v2

    invoke-virtual {v8, v5, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const-string v2, "type"

    .line 103
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "first_name"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "last_name"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "date"

    .line 105
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 106
    invoke-static {p0, v4, v5}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "source_id"

    .line 107
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v9, 0x0

    const-string v7, "photo"

    const v11, 0x7f0903f3

    cmp-long v12, v5, v9

    if-lez v12, :cond_6

    .line 112
    :try_start_3
    invoke-virtual {v8, v11, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 113
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 115
    :cond_6
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    neg-long v5, v5

    invoke-virtual {v3, v5, v6}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 117
    iget-object v1, v3, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v8, v11, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 118
    iget-object v1, v3, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const-string v3, ""

    .line 120
    invoke-virtual {v8, v11, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_1
    const v3, 0x7f0903f1

    .line 124
    invoke-virtual {v8, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 126
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const v4, 0x7f0903f2

    if-eqz v3, :cond_8

    const v2, 0x7f0f04e1

    .line 127
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    const-string v3, "photo_tag"

    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const v2, 0x7f0f04e2

    .line 129
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2

    :cond_9
    const-string v3, "friend"

    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 131
    invoke-static {v0}, Lcom/perm/kate/KateWidgetMed;->getFriendsString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0f04db

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2

    :cond_a
    const-string v2, "text"

    .line 135
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-virtual {v8, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_2
    const v2, 0x7f080208

    const v3, 0x7f090189

    if-nez v1, :cond_b

    .line 148
    invoke-virtual {v8, v3, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_3

    .line 150
    :cond_b
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/perm/kate/ImageLoader;->isCachedInMemory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 151
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/perm/kate/ImageLoader;->getFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 153
    invoke-virtual {v8, v3, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_3

    .line 155
    :cond_c
    invoke-virtual {v8, v3, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_3

    .line 157
    :cond_d
    invoke-virtual {v8, v3, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 158
    invoke-static {p0, p1, v1}, Lcom/perm/kate/KateWidgetMed;->requestImage(Landroid/content/Context;ILjava/lang/String;)V

    .line 163
    :goto_3
    invoke-static {p0, v8, p1}, Lcom/perm/kate/KateWidgetMed;->displayWidget(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_4

    :catchall_1
    move-exception p0

    .line 165
    :goto_4
    :try_start_4
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 166
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_e

    .line 169
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_e
    :goto_5
    return-void

    :catchall_2
    move-exception p0

    if-eqz v1, :cond_f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_f
    throw p0
.end method

.method private static displayWidget(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 0

    .line 203
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    .line 204
    invoke-virtual {p0, p2, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method private static getFriendsString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 5

    const-string v0, "friend_first_names"

    .line 183
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "friend_last_names"

    .line 184
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    if-eqz v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, ","

    .line 188
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    move-object v3, v1

    .line 192
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_2

    array-length v4, p0

    if-ge v2, v4, :cond_2

    .line 193
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 195
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v2

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v2

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v3

    :cond_3
    :goto_1
    return-object v1
.end method

.method private static getResourceForButtonByTheme(ZZ)I
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const p0, 0x7f0802ac

    goto :goto_0

    :cond_0
    const p0, 0x7f0802ab

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const p0, 0x7f0802ae

    goto :goto_0

    :cond_2
    const p0, 0x7f0802ad

    :goto_0
    return p0
.end method

.method private static getWidgetIds(Landroid/content/Context;)[I
    .locals 2

    .line 309
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/perm/kate/KateWidgetMed;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    .line 311
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p0

    return-object p0
.end method

.method public static refresh(Landroid/content/Context;)V
    .locals 2

    .line 303
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/KateWidgetMed;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "refresh_widgets"

    .line 304
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static requestImage(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 174
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/KateWidgetMed$WgUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "get_image"

    .line 175
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.id_widget"

    .line 176
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.perm.kate.url_photo"

    .line 177
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 2

    .line 26
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    const/4 v0, 0x0

    .line 27
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 28
    aget v1, p2, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/perm/kate/WidgetPreferences;->Delete(Landroid/content/Context;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "previous"

    .line 275
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, ""

    .line 276
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 278
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "next"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const-string v2, "com.perm.kate.id_widget"

    const/4 v3, -0x1

    .line 279
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 280
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/perm/kate/WidgetPreferences;->GetPostPosition(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 281
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/2addr v4, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 285
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/perm/kate/WidgetPreferences;->SetPostPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-static {p1, v2}, Lcom/perm/kate/KateWidgetMed;->buildUpdate(Landroid/content/Context;I)V

    :cond_3
    const-string v0, "refresh_widgets"

    .line 288
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Kate.KateWidgetMed"

    const-string v1, "refresh_widgets received"

    .line 289
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-static {p1}, Lcom/perm/kate/KateWidgetMed;->getWidgetIds(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 291
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 292
    aget v2, v0, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-static {p1, v2, v3}, Lcom/perm/kate/WidgetPreferences;->SetPostPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    aget v2, v0, v1

    invoke-static {p1, v2}, Lcom/perm/kate/KateWidgetMed;->buildUpdate(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    :catchall_0
    move-exception v0

    .line 297
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 299
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 1

    .line 33
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    const/4 p2, 0x0

    .line 34
    :goto_0
    array-length v0, p3

    if-ge p2, v0, :cond_0

    .line 35
    aget v0, p3, p2

    invoke-static {p1, v0}, Lcom/perm/kate/KateWidgetMed;->buildUpdate(Landroid/content/Context;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
