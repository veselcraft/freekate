.class Lcom/perm/kate/StackRemoteViewsFactory;
.super Ljava/lang/Object;
.source "MessagesWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private account_id:Ljava/lang/Long;

.field private attachments_cache:Ljava/util/HashMap;

.field private cursor:Landroid/database/Cursor;

.field private mContext:Landroid/content/Context;

.field private me:Lcom/perm/kate/api/User;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/perm/kate/StackRemoteViewsFactory;->attachments_cache:Ljava/util/HashMap;

    .line 43
    iput-object p1, p0, Lcom/perm/kate/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    .line 46
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/perm/kate/StackRemoteViewsFactory;->account_id:Ljava/lang/Long;

    if-eqz p1, :cond_1

    .line 48
    sget-object p2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/StackRemoteViewsFactory;->me:Lcom/perm/kate/api/User;

    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 66
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 24

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 70
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIDGET getViewAt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, v1, Lcom/perm/kate/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0c0143

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x0

    .line 73
    :try_start_0
    iget-object v4, v1, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    if-nez v4, :cond_0

    return-object v2

    .line 75
    :cond_0
    invoke-interface {v4, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 77
    iget-object v0, v1, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    const-string v4, "is_out"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    const/4 v8, 0x0

    cmp-long v9, v4, v6

    if-nez v9, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 78
    :goto_0
    iget-object v5, v1, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    const-string v9, "read_state"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    cmp-long v5, v9, v6

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    const v9, 0x7f090421

    if-nez v5, :cond_3

    if-nez v4, :cond_3

    const v10, 0x7f080165

    .line 80
    invoke-virtual {v2, v9, v10}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2

    :cond_3
    const v10, 0x7f080164

    .line 82
    invoke-virtual {v2, v9, v10}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 83
    :goto_2
    iget-object v10, v1, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    const-string v11, "chat_id"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 84
    iget-object v11, v1, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 87
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-gez v15, :cond_5

    .line 88
    iget-object v11, v1, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    const-string v12, "photo_medium_rec"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 90
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/perm/kate/ImageLoader;->isCachedInMemory(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 91
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/perm/kate/ImageLoader;->getFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_3

    .line 95
    :cond_4
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v15

    const/16 v17, 0x12c

    const/16 v18, 0x12c

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v11

    invoke-virtual/range {v15 .. v21}, Lcom/perm/kate/ImageLoader;->getBitmap(Ljava/lang/String;IIZLcom/perm/utils/UploadProgressListener;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_3

    .line 99
    :cond_5
    sget-object v11, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v11, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchChatAvatars(J)Ljava/util/ArrayList;

    move-result-object v6

    .line 100
    invoke-static {v6}, Lcom/perm/kate/ImageLoader;->makeKey(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 101
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/perm/kate/ImageLoader;->isCachedInMemory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 102
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/perm/kate/ImageLoader;->getFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_3

    .line 105
    :cond_6
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/perm/kate/ImageLoader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    .line 106
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 107
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v17

    const/16 v19, 0x12c

    const/16 v20, 0x12c

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v17 .. v22}, Lcom/perm/kate/ImageLoader;->decodeFile(Ljava/io/File;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_3

    :cond_7
    move-object v11, v3

    :goto_3
    const v6, 0x7f090183

    const v7, 0x7f080208

    if-eqz v11, :cond_8

    .line 112
    invoke-virtual {v2, v6, v11}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_4

    .line 114
    :cond_8
    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_4
    const v6, 0x7f090226

    const/16 v11, 0x8

    if-eqz v4, :cond_b

    .line 115
    iget-object v12, v1, Lcom/perm/kate/StackRemoteViewsFactory;->me:Lcom/perm/kate/api/User;

    if-eqz v12, :cond_b

    .line 116
    invoke-virtual {v2, v6, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 117
    iget-object v12, v1, Lcom/perm/kate/StackRemoteViewsFactory;->me:Lcom/perm/kate/api/User;

    iget-object v12, v12, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 118
    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 120
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/perm/kate/ImageLoader;->isCachedInMemory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 121
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/perm/kate/ImageLoader;->getFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_5

    .line 125
    :cond_9
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v17

    const/16 v19, 0x12c

    const/16 v20, 0x12c

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v12

    invoke-virtual/range {v17 .. v23}, Lcom/perm/kate/ImageLoader;->getBitmap(Ljava/lang/String;IIZLcom/perm/utils/UploadProgressListener;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_a

    .line 128
    invoke-virtual {v2, v6, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_6

    .line 130
    :cond_a
    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_6

    .line 133
    :cond_b
    invoke-virtual {v2, v6, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_6
    const v0, 0x7f090422

    if-eqz v4, :cond_c

    if-nez v5, :cond_c

    .line 137
    invoke-virtual {v2, v0, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_7

    .line 139
    :cond_c
    invoke-virtual {v2, v0, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 141
    :goto_7
    iget-object v0, v1, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    invoke-static {v0, v3}, Lcom/perm/kate/DialogsAdapter;->getDisplayName(Landroid/database/Cursor;Lcom/perm/kate/api/Group;)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const v6, 0x7f09009a

    const v7, 0x7f09038f

    cmp-long v12, v4, v13

    if-gez v12, :cond_f

    .line 143
    invoke-virtual {v2, v7, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 144
    iget-object v0, v1, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    const-string v4, "online"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v15, 0x1

    cmp-long v0, v4, v15

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_8

    :cond_d
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_9

    :cond_e
    const/16 v0, 0x8

    :goto_9
    invoke-virtual {v2, v6, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_a

    .line 147
    :cond_f
    iget-object v0, v1, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    const-string v4, "chat_title"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-virtual {v2, v7, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 149
    invoke-virtual {v2, v6, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 151
    :goto_a
    iget-object v0, v1, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    const-string v4, "date"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 152
    iget-object v0, v1, Lcom/perm/kate/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v5}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f09038c

    .line 153
    invoke-virtual {v2, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 155
    iget-object v0, v1, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    const-string v4, "body"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f09038e

    .line 156
    invoke-virtual {v2, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 160
    iget-object v5, v1, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    const-string v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 161
    iget-object v7, v1, Lcom/perm/kate/StackRemoteViewsFactory;->attachments_cache:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-nez v7, :cond_12

    .line 163
    iget-object v7, v1, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    const-string v12, "have_attachments"

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    const-wide/16 v15, 0x1

    cmp-long v7, v17, v15

    if-nez v7, :cond_10

    const/4 v7, 0x1

    goto :goto_b

    :cond_10
    const/4 v7, 0x0

    :goto_b
    if-eqz v7, :cond_11

    .line 164
    sget-object v7, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v7, :cond_11

    .line 165
    invoke-virtual {v7}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 166
    iget-object v12, v1, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    const-string v15, "attachments"

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v12, v13, v14}, Lcom/perm/kate/db/DataHelper;->deserializeAttachments([BJ)Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_c

    .line 168
    :cond_11
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 169
    :goto_c
    iget-object v12, v1, Lcom/perm/kate/StackRemoteViewsFactory;->attachments_cache:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v12, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_12
    iget-object v5, v1, Lcom/perm/kate/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/perm/kate/DialogsAdapter;->getAttachmnetsText(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    .line 172
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const v7, 0x7f09038d

    if-lez v6, :cond_14

    .line 173
    invoke-virtual {v2, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v0, :cond_13

    .line 174
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13

    .line 175
    invoke-virtual {v2, v4, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_d

    .line 181
    :cond_13
    invoke-virtual {v2, v4, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 185
    :goto_d
    invoke-virtual {v2, v7, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_e

    .line 187
    :cond_14
    invoke-virtual {v2, v7, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 188
    invoke-virtual {v2, v4, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 192
    :goto_e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 193
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_15

    const-string v4, "com.perm.kate.chat_id"

    .line 194
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_f

    .line 196
    :cond_15
    iget-object v4, v1, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    const-string v5, "uid"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "com.perm.kate.message_uid"

    .line 197
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 199
    :goto_f
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 200
    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 203
    invoke-virtual {v2, v9, v4}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_10

    :catchall_0
    move-exception v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 206
    invoke-static {v0, v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 207
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WIDGET Throwable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_10
    return-object v2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 2

    .line 55
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "WIDGET onCreate "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onDataSetChanged()V
    .locals 10

    .line 238
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "WIDGET onDataSetChanged "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 240
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 241
    iput-object v1, p0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    .line 243
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/perm/kate/StackRemoteViewsFactory;->account_id:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 245
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-static {}, Lcom/perm/kate/HiddenChats;->get()Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {}, Lcom/perm/utils/FixedChats;->get()Ljava/util/ArrayList;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/perm/kate/db/DataHelper;->fetchDialogs(JJLjava/util/Collection;Ljava/util/Collection;Z)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method
