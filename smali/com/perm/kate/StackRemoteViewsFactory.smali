.class Lcom/perm/kate/StackRemoteViewsFactory;
.super Ljava/lang/Object;
.source "MessagesWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# instance fields
.field private account_id:Ljava/lang/Long;

.field private attachments_cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Attachment;",
            ">;>;"
        }
    .end annotation
.end field

.field private cursor:Landroid/database/Cursor;

.field private mAppWidgetId:I

.field private mContext:Landroid/content/Context;

.field private me:Lcom/perm/kate/api/User;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/StackRemoteViewsFactory;->attachments_cache:Ljava/util/HashMap;

    .line 42
    iput-object p1, p0, Lcom/perm/kate/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    .line 43
    const-string v0, "appWidgetId"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/StackRemoteViewsFactory;->mAppWidgetId:I

    .line 45
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/perm/kate/StackRemoteViewsFactory;->account_id:Ljava/lang/Long;

    .line 46
    iget-object v0, p0, Lcom/perm/kate/StackRemoteViewsFactory;->account_id:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/StackRemoteViewsFactory;->account_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/StackRemoteViewsFactory;->me:Lcom/perm/kate/api/User;

    .line 48
    :cond_0
    return-void

    .line 45
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 65
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 225
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 39
    .param p1, "position"    # I

    .prologue
    .line 69
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WIDGET getViewAt "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    new-instance v36, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f030123

    move-object/from16 v0, v36

    invoke-direct {v0, v2, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 72
    .local v36, "updateViews":Landroid/widget/RemoteViews;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 211
    :goto_0
    return-object v36

    .line 74
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 76
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    const-string v6, "is_out"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-wide/16 v12, 0x1

    cmp-long v2, v8, v12

    if-nez v2, :cond_3

    const/16 v27, 0x1

    .line 77
    .local v27, "is_out":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    const-string v6, "read_state"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-wide/16 v12, 0x1

    cmp-long v2, v8, v12

    if-nez v2, :cond_4

    const/16 v33, 0x1

    .line 78
    .local v33, "read_state":Z
    :goto_2
    if-nez v33, :cond_5

    if-nez v27, :cond_5

    .line 79
    const v2, 0x7f0e036c

    const v4, 0x7f0200b6

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 82
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    const-string v4, "chat_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 83
    .local v21, "chat_column_index":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    .line 84
    .local v22, "chat_id":Ljava/lang/Long;
    const/16 v19, 0x0

    .line 86
    .local v19, "bitmap1":Landroid/graphics/Bitmap;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v12, 0x0

    cmp-long v2, v8, v12

    if-gez v2, :cond_7

    .line 87
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    const-string v6, "photo_medium_rec"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "user_photo":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 89
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/perm/kate/ImageLoader;->isCachedInMemory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 90
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/perm/kate/ImageLoader;->getFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 110
    .end local v3    # "user_photo":Ljava/lang/String;
    :cond_1
    :goto_4
    if-eqz v19, :cond_9

    .line 111
    const v2, 0x7f0e0118

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 114
    :goto_5
    if-eqz v27, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/StackRemoteViewsFactory;->me:Lcom/perm/kate/api/User;

    if-eqz v2, :cond_c

    .line 115
    const v2, 0x7f0e011d

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/StackRemoteViewsFactory;->me:Lcom/perm/kate/api/User;

    iget-object v7, v2, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 117
    .local v7, "me_photo":Ljava/lang/String;
    const v2, 0x7f0e011d

    const v4, 0x7f020143

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 118
    const/16 v20, 0x0

    .line 119
    .local v20, "bitmap_me":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/perm/kate/ImageLoader;->isCachedInMemory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 120
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/perm/kate/ImageLoader;->getFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 126
    :goto_6
    if-eqz v20, :cond_b

    .line 127
    const v2, 0x7f0e011d

    move-object/from16 v0, v36

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 135
    .end local v7    # "me_photo":Ljava/lang/String;
    .end local v20    # "bitmap_me":Landroid/graphics/Bitmap;
    :goto_7
    if-eqz v27, :cond_d

    if-nez v33, :cond_d

    .line 136
    const v2, 0x7f0e036d

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 140
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/perm/kate/DialogsAdapter;->getDisplayName(Landroid/database/Cursor;Lcom/perm/kate/api/Group;)Ljava/lang/String;

    move-result-object v38

    .line 141
    .local v38, "user_name":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v12, 0x0

    cmp-long v2, v8, v12

    if-gez v2, :cond_10

    .line 142
    const v2, 0x7f0e011a

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 143
    const v2, 0x7f0e0119

    const/16 v4, 0x8

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    const-string v6, "online"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-wide/16 v12, 0x1

    cmp-long v2, v8, v12

    if-nez v2, :cond_e

    const/4 v2, 0x1

    :goto_9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    .line 145
    .local v32, "online":Ljava/lang/Boolean;
    const v4, 0x7f0e00ee

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    :goto_a
    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 152
    .end local v32    # "online":Ljava/lang/Boolean;
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    const-string v6, "date"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 153
    .local v30, "long_date":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v30

    invoke-static {v2, v0, v1}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v16

    .line 154
    .local v16, "ago_text":Ljava/lang/String;
    const v2, 0x7f0e0076

    move-object/from16 v0, v36

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    const-string v6, "body"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 157
    .local v34, "text":Ljava/lang/String;
    const v2, 0x7f0e011f

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    const-string v6, "_id"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 162
    .local v10, "_id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/StackRemoteViewsFactory;->attachments_cache:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 163
    .local v17, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    if-nez v17, :cond_2

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    const-string v6, "have_attachments"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-wide/16 v12, 0x1

    cmp-long v2, v8, v12

    if-nez v2, :cond_11

    const/16 v26, 0x1

    .line 165
    .local v26, "have_attachments":Z
    :goto_c
    if-eqz v26, :cond_12

    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v2, :cond_12

    .line 166
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 167
    .local v15, "account_id":Ljava/lang/Long;
    sget-object v8, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v9, 0x2

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const/4 v14, 0x1

    invoke-virtual/range {v8 .. v14}, Lcom/perm/kate/db/DataHelper;->fetchAttachments(IJJZ)Ljava/util/ArrayList;

    move-result-object v17

    .line 170
    .end local v15    # "account_id":Ljava/lang/Long;
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/StackRemoteViewsFactory;->attachments_cache:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .end local v26    # "have_attachments":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/perm/kate/DialogsAdapter;->getAttachmnetsText(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v18

    .line 173
    .local v18, "attchmns_text":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_14

    .line 174
    const v2, 0x7f0e0120

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 175
    if-eqz v34, :cond_13

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_13

    .line 176
    const v2, 0x7f0e011f

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 186
    :goto_e
    const v2, 0x7f0e0120

    move-object/from16 v0, v36

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 193
    :goto_f
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    .line 194
    .local v24, "extras":Landroid/os/Bundle;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v12, 0x0

    cmp-long v2, v8, v12

    if-lez v2, :cond_15

    .line 195
    const-string v2, "com.perm.kate.chat_id"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 200
    :goto_10
    new-instance v25, Landroid/content/Intent;

    invoke-direct/range {v25 .. v25}, Landroid/content/Intent;-><init>()V

    .line 201
    .local v25, "fillInIntent":Landroid/content/Intent;
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 204
    const v2, 0x7f0e036c

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 205
    .end local v10    # "_id":J
    .end local v16    # "ago_text":Ljava/lang/String;
    .end local v17    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    .end local v18    # "attchmns_text":Ljava/lang/String;
    .end local v19    # "bitmap1":Landroid/graphics/Bitmap;
    .end local v21    # "chat_column_index":I
    .end local v22    # "chat_id":Ljava/lang/Long;
    .end local v24    # "extras":Landroid/os/Bundle;
    .end local v25    # "fillInIntent":Landroid/content/Intent;
    .end local v27    # "is_out":Z
    .end local v30    # "long_date":J
    .end local v33    # "read_state":Z
    .end local v34    # "text":Ljava/lang/String;
    .end local v38    # "user_name":Ljava/lang/String;
    :catch_0
    move-exception v35

    .line 206
    .local v35, "th":Ljava/lang/Throwable;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Throwable;->printStackTrace()V

    .line 207
    const/4 v2, 0x0

    move-object/from16 v0, v35

    invoke-static {v0, v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 208
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WIDGET Throwable "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 76
    .end local v35    # "th":Ljava/lang/Throwable;
    :cond_3
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 77
    .restart local v27    # "is_out":Z
    :cond_4
    const/16 v33, 0x0

    goto/16 :goto_2

    .line 81
    .restart local v33    # "read_state":Z
    :cond_5
    const v2, 0x7f0e036c

    const v4, 0x7f0200b5

    :try_start_1
    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_3

    .line 94
    .restart local v3    # "user_photo":Ljava/lang/String;
    .restart local v19    # "bitmap1":Landroid/graphics/Bitmap;
    .restart local v21    # "chat_column_index":I
    .restart local v22    # "chat_id":Ljava/lang/Long;
    :cond_6
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    const/16 v4, 0x12c

    const/16 v5, 0x12c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->getBitmap(Ljava/lang/String;IIZLcom/perm/utils/UploadProgressListener;Z)Landroid/graphics/Bitmap;

    move-result-object v19

    goto/16 :goto_4

    .line 98
    .end local v3    # "user_photo":Ljava/lang/String;
    :cond_7
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/perm/kate/db/DataHelper;->fetchChatAvatars(J)Ljava/util/ArrayList;

    move-result-object v37

    .line 99
    .local v37, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {v37 .. v37}, Lcom/perm/kate/ImageLoader;->makeKey(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v28

    .line 100
    .local v28, "key":Ljava/lang/String;
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/perm/kate/ImageLoader;->isCachedInMemory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 101
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/perm/kate/ImageLoader;->getFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v19

    goto/16 :goto_4

    .line 104
    :cond_8
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/perm/kate/ImageLoader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 105
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v4

    const/16 v6, 0x12c

    const/16 v7, 0x12c

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/perm/kate/ImageLoader;->decodeFile(Ljava/io/File;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v19

    goto/16 :goto_4

    .line 113
    .end local v5    # "file":Ljava/io/File;
    .end local v28    # "key":Ljava/lang/String;
    .end local v37    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    const v2, 0x7f0e0118

    const v4, 0x7f020143

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    .line 124
    .restart local v7    # "me_photo":Ljava/lang/String;
    .restart local v20    # "bitmap_me":Landroid/graphics/Bitmap;
    :cond_a
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v6

    const/16 v8, 0x12c

    const/16 v9, 0x12c

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Lcom/perm/kate/ImageLoader;->getBitmap(Ljava/lang/String;IIZLcom/perm/utils/UploadProgressListener;Z)Landroid/graphics/Bitmap;

    move-result-object v20

    goto/16 :goto_6

    .line 129
    :cond_b
    const v2, 0x7f0e011d

    const v4, 0x7f020143

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_7

    .line 132
    .end local v7    # "me_photo":Ljava/lang/String;
    .end local v20    # "bitmap_me":Landroid/graphics/Bitmap;
    :cond_c
    const v2, 0x7f0e011d

    const/16 v4, 0x8

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_7

    .line 138
    :cond_d
    const v2, 0x7f0e036d

    const/16 v4, 0x8

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_8

    .line 144
    .restart local v38    # "user_name":Ljava/lang/String;
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 145
    .restart local v32    # "online":Ljava/lang/Boolean;
    :cond_f
    const/16 v2, 0x8

    goto/16 :goto_a

    .line 147
    .end local v32    # "online":Ljava/lang/Boolean;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    const-string v6, "chat_title"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 148
    .local v23, "chat_title":Ljava/lang/String;
    const v2, 0x7f0e011a

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 149
    const v2, 0x7f0e0119

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 150
    const v2, 0x7f0e00ee

    const/16 v4, 0x8

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_b

    .line 164
    .end local v23    # "chat_title":Ljava/lang/String;
    .restart local v10    # "_id":J
    .restart local v16    # "ago_text":Ljava/lang/String;
    .restart local v17    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    .restart local v30    # "long_date":J
    .restart local v34    # "text":Ljava/lang/String;
    :cond_11
    const/16 v26, 0x0

    goto/16 :goto_c

    .line 169
    .restart local v26    # "have_attachments":Z
    :cond_12
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .restart local v17    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    goto/16 :goto_d

    .line 182
    .end local v26    # "have_attachments":Z
    .restart local v18    # "attchmns_text":Ljava/lang/String;
    :cond_13
    const v2, 0x7f0e011f

    const/16 v4, 0x8

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_e

    .line 188
    :cond_14
    const v2, 0x7f0e0120

    const/16 v4, 0x8

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 189
    const v2, 0x7f0e011f

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_f

    .line 197
    .restart local v24    # "extras":Landroid/os/Bundle;
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    const-string v6, "uid"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    .line 198
    .local v29, "message_uid":Ljava/lang/Long;
    const-string v2, "com.perm.kate.message_uid"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_10
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 54
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "WIDGET onCreate "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public onDataSetChanged()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 239
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "WIDGET onDataSetChanged "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 242
    iput-object v0, p0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    .line 244
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v1, :cond_1

    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/perm/kate/StackRemoteViewsFactory;->account_id:Ljava/lang/Long;

    .line 245
    iget-object v0, p0, Lcom/perm/kate/StackRemoteViewsFactory;->account_id:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 246
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/StackRemoteViewsFactory;->account_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {}, Lcom/perm/kate/HiddenChats;->get()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/db/DataHelper;->fetchDialogs(JJLjava/util/Collection;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    .line 247
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/perm/kate/StackRemoteViewsFactory;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 60
    :cond_0
    return-void
.end method
