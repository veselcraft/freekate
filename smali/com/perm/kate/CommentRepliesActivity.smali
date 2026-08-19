.class public Lcom/perm/kate/CommentRepliesActivity;
.super Lcom/perm/kate/BaseActivity;
.source "CommentRepliesActivity.java"


# instance fields
.field private account_id:J

.field private callback_next:Lcom/perm/kate/session/Callback;

.field private callback_reload:Lcom/perm/kate/session/Callback;

.field commentDatas:Ljava/util/ArrayList;

.field private comment_id:J

.field private comment_list_adapter:Lcom/perm/kate/CommentListAdapter;

.field private comment_type:I

.field private content_id:J

.field private content_owner_id:J

.field private lv_comment_list:Landroid/widget/ListView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field page_size:I

.field private parent_comment_id:J

.field requested_comment:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 33
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/CommentRepliesActivity;->account_id:J

    .line 62
    new-instance v0, Lcom/perm/kate/CommentRepliesActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/CommentRepliesActivity$1;-><init>(Lcom/perm/kate/CommentRepliesActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentRepliesActivity;->callback_reload:Lcom/perm/kate/session/Callback;

    .line 108
    new-instance v0, Lcom/perm/kate/CommentRepliesActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/CommentRepliesActivity$2;-><init>(Lcom/perm/kate/CommentRepliesActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentRepliesActivity;->callback_next:Lcom/perm/kate/session/Callback;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/CommentRepliesActivity;->commentDatas:Ljava/util/ArrayList;

    .line 356
    new-instance v0, Lcom/perm/kate/CommentRepliesActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentRepliesActivity$8;-><init>(Lcom/perm/kate/CommentRepliesActivity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentRepliesActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    const/16 v0, 0x1e

    .line 363
    iput v0, p0, Lcom/perm/kate/CommentRepliesActivity;->page_size:I

    const-wide/16 v0, 0x0

    .line 365
    iput-wide v0, p0, Lcom/perm/kate/CommentRepliesActivity;->requested_comment:J

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/CommentRepliesActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/perm/kate/CommentRepliesActivity;->callback_next:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/CommentRepliesActivity;ILcom/perm/kate/session/Callback;JJ)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p6}, Lcom/perm/kate/CommentRepliesActivity;->downloadComments(ILcom/perm/kate/session/Callback;JJ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/CommentRepliesActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/perm/kate/CommentRepliesActivity;->callback_reload:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/perm/kate/CommentRepliesActivity;)J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_id:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/perm/kate/CommentRepliesActivity;)J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/perm/kate/CommentRepliesActivity;->account_id:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/perm/kate/CommentRepliesActivity;)J
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/perm/kate/CommentRepliesActivity;->getCorrectOwnerId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/perm/kate/CommentRepliesActivity;)J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/perm/kate/CommentRepliesActivity;->parent_comment_id:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/perm/kate/CommentRepliesActivity;J)J
    .locals 0

    .line 23
    iput-wide p1, p0, Lcom/perm/kate/CommentRepliesActivity;->parent_comment_id:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/perm/kate/CommentRepliesActivity;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/perm/kate/CommentRepliesActivity;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/CommentRepliesActivity;J)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/CommentRepliesActivity;->showLikes(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/CommentRepliesActivity;)J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/perm/kate/CommentRepliesActivity;->content_owner_id:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/perm/kate/CommentRepliesActivity;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    return p0
.end method

.method static synthetic access$700(Lcom/perm/kate/CommentRepliesActivity;)J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/perm/kate/CommentRepliesActivity;->content_id:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/perm/kate/CommentRepliesActivity;)Lcom/perm/kate/CommentListAdapter;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_list_adapter:Lcom/perm/kate/CommentListAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/perm/kate/CommentRepliesActivity;Lcom/perm/kate/CommentTag;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/perm/kate/CommentRepliesActivity;->displayContextMenu(Lcom/perm/kate/CommentTag;)V

    return-void
.end method

.method private displayContextMenu(Lcom/perm/kate/CommentTag;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    .line 178
    :cond_0
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 179
    iget-wide v1, p1, Lcom/perm/kate/CommentTag;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/perm/kate/CommentRepliesActivity;->content_owner_id:J

    cmp-long v1, v6, v8

    if-eqz v1, :cond_2

    cmp-long v1, v8, v2

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 180
    :goto_1
    iget-object v6, p1, Lcom/perm/kate/CommentTag;->message:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/perm/kate/Helper;->extractUrl(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v6

    .line 181
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 182
    iget v8, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    const/4 v9, 0x2

    const/4 v10, 0x5

    if-eq v8, v5, :cond_3

    if-eq v8, v4, :cond_3

    if-eqz v8, :cond_3

    if-eq v8, v9, :cond_3

    if-ne v8, v10, :cond_5

    .line 184
    :cond_3
    iget-boolean v8, p1, Lcom/perm/kate/CommentTag;->like:Z

    if-nez v8, :cond_4

    .line 185
    new-instance v8, Lcom/perm/kate/MenuItemDetails;

    const v11, 0x7f0f012a

    invoke-direct {v8, v11, v10}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 187
    :cond_4
    new-instance v8, Lcom/perm/kate/MenuItemDetails;

    const v11, 0x7f0f0129

    const/4 v12, 0x6

    invoke-direct {v8, v11, v12}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_5
    :goto_2
    new-instance v8, Lcom/perm/kate/MenuItemDetails;

    const v11, 0x7f0f05a2

    const/4 v12, 0x7

    invoke-direct {v8, v11, v12}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 191
    new-instance v8, Lcom/perm/kate/MenuItemDetails;

    const v11, 0x7f0f0319

    invoke-direct {v8, v11, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_6
    new-instance v8, Lcom/perm/kate/MenuItemDetails;

    const v11, 0x7f0f00b2

    const/4 v12, 0x3

    invoke-direct {v8, v11, v12}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    iget v8, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    if-eq v8, v4, :cond_7

    iget-wide v11, p0, Lcom/perm/kate/CommentRepliesActivity;->content_owner_id:J

    cmp-long v4, v11, v2

    if-gez v4, :cond_8

    :cond_7
    iget-wide v2, p1, Lcom/perm/kate/CommentTag;->user_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 194
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-direct {p0}, Lcom/perm/kate/CommentRepliesActivity;->getCorrectOwnerId()J

    move-result-wide v3

    neg-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/perm/kate/db/DataHelper;->isModerInGroup(Ljava/lang/Long;J)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 195
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f02f2

    const/16 v3, 0x9

    invoke-direct {v0, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v1, :cond_9

    .line 197
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f00ba

    invoke-direct {v0, v1, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_9
    iget v0, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    if-eq v0, v5, :cond_a

    if-eqz v0, :cond_a

    if-eq v0, v9, :cond_a

    if-ne v0, v10, :cond_b

    :cond_a
    iget-wide v0, p0, Lcom/perm/kate/CommentRepliesActivity;->account_id:J

    iget-wide v2, p1, Lcom/perm/kate/CommentTag;->user_id:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_b

    .line 200
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f01d7

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 204
    :cond_c
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 205
    invoke-static {v7}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/CommentRepliesActivity$3;

    invoke-direct {v2, p0, v7, p1, v6}, Lcom/perm/kate/CommentRepliesActivity$3;-><init>(Lcom/perm/kate/CommentRepliesActivity;Ljava/util/ArrayList;Lcom/perm/kate/CommentTag;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 243
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 244
    invoke-virtual {p1, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 245
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 247
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 248
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private displayData()V
    .locals 2

    .line 158
    :try_start_0
    new-instance v0, Lcom/perm/kate/CommentListAdapter;

    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity;->commentDatas:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p0}, Lcom/perm/kate/CommentListAdapter;-><init>(Ljava/util/ArrayList;Lcom/perm/kate/BaseActivity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_list_adapter:Lcom/perm/kate/CommentListAdapter;

    .line 159
    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity;->lv_comment_list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 161
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 162
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 163
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private downloadComments(ILcom/perm/kate/session/Callback;JJ)V
    .locals 14

    move-object v13, p0

    move-wide/from16 v0, p3

    .line 368
    iput-wide v0, v13, Lcom/perm/kate/CommentRepliesActivity;->requested_comment:J

    cmp-long v2, v0, p5

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    move-wide v7, v2

    goto :goto_0

    :cond_0
    move-wide/from16 v7, p5

    .line 371
    :goto_0
    iget v2, v13, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 372
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v3, v13, Lcom/perm/kate/CommentRepliesActivity;->content_owner_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v13, Lcom/perm/kate/CommentRepliesActivity;->content_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget v5, v13, Lcom/perm/kate/CommentRepliesActivity;->page_size:I

    const/4 v6, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object v0, v2

    move-object v1, v3

    move-object v2, v4

    move v3, p1

    move v4, v5

    move v5, v6

    move-object v6, v9

    move-object/from16 v9, p2

    move-object v10, p0

    invoke-virtual/range {v0 .. v10}, Lcom/perm/kate/session/Session;->getWallComments(Ljava/lang/Long;Ljava/lang/Long;IIZLjava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_1

    :cond_1
    if-nez v2, :cond_2

    .line 374
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v3, v13, Lcom/perm/kate/CommentRepliesActivity;->content_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v13, Lcom/perm/kate/CommentRepliesActivity;->content_owner_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget v5, v13, Lcom/perm/kate/CommentRepliesActivity;->page_size:I

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v0, v2

    move-object v1, v3

    move-object v2, v4

    move v3, p1

    move v4, v5

    move-object v5, v6

    move-object/from16 v6, p2

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->getPhotoComments(Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_1

    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 377
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v3, v13, Lcom/perm/kate/CommentRepliesActivity;->content_id:J

    iget-wide v5, v13, Lcom/perm/kate/CommentRepliesActivity;->content_owner_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget v6, v13, Lcom/perm/kate/CommentRepliesActivity;->page_size:I

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, v2

    move-wide v1, v3

    move-object v3, v5

    move v4, p1

    move v5, v6

    move-object v6, v7

    move-object/from16 v7, p2

    move-object v8, p0

    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/session/Session;->getVideoComments(JLjava/lang/Long;IILjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 379
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v3, v13, Lcom/perm/kate/CommentRepliesActivity;->content_owner_id:J

    iget-wide v5, v13, Lcom/perm/kate/CommentRepliesActivity;->content_id:J

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object v0, v2

    move-wide v1, v3

    move-wide v3, v5

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, p1

    move v9, v10

    move-object v10, v11

    move-object/from16 v11, p2

    move-object v12, p0

    invoke-virtual/range {v0 .. v12}, Lcom/perm/kate/session/Session;->getGroupTopicComments(JJIIIIZLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_1

    :cond_4
    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 381
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v3, v13, Lcom/perm/kate/CommentRepliesActivity;->content_owner_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v13, Lcom/perm/kate/CommentRepliesActivity;->content_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget v5, v13, Lcom/perm/kate/CommentRepliesActivity;->page_size:I

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v0, v2

    move-object v1, v3

    move-object v2, v4

    move v3, p1

    move v4, v5

    move-object v5, v6

    move-object/from16 v6, p2

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->getMarketComments(Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private getCorrectOwnerId()J
    .locals 2

    .line 169
    iget v0, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 170
    iget-wide v0, p0, Lcom/perm/kate/CommentRepliesActivity;->content_owner_id:J

    neg-long v0, v0

    return-wide v0

    .line 171
    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/CommentRepliesActivity;->content_owner_id:J

    return-wide v0
.end method

.method private reloadInThread()V
    .locals 1

    .line 385
    new-instance v0, Lcom/perm/kate/CommentRepliesActivity$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentRepliesActivity$9;-><init>(Lcom/perm/kate/CommentRepliesActivity;)V

    .line 391
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private requeryOnUiThread()V
    .locals 1

    .line 338
    new-instance v0, Lcom/perm/kate/CommentRepliesActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentRepliesActivity$7;-><init>(Lcom/perm/kate/CommentRepliesActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showLikes(J)V
    .locals 2

    .line 253
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 254
    const-class v1, Lcom/perm/kate/LikesActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.item_id"

    .line 256
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 257
    invoke-direct {p0}, Lcom/perm/kate/CommentRepliesActivity;->getCorrectOwnerId()J

    move-result-wide p1

    const-string v1, "com.perm.kate.owner_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 260
    iget p1, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    const-string p1, "topic_comment"

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "photo_comment"

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    const-string p1, "video_comment"

    goto :goto_0

    :cond_2
    const/4 p2, 0x5

    if-ne p1, p2, :cond_3

    const-string p1, "market_comment"

    goto :goto_0

    :cond_3
    const-string p1, "comment"

    :goto_0
    const-string p2, "com.perm.kate.item_type"

    .line 270
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method confirmRemoveComment(Ljava/lang/Long;)V
    .locals 2

    .line 276
    new-instance v0, Lcom/perm/kate/CommentRepliesActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/CommentRepliesActivity$4;-><init>(Lcom/perm/kate/CommentRepliesActivity;Ljava/lang/Long;)V

    .line 282
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f01d8

    .line 283
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f0f05a7

    .line 284
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0f037a

    const/4 v1, 0x0

    .line 285
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 286
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 287
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 288
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public deleteComment(J)V
    .locals 5

    .line 292
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity;->commentDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/data/PageCommentList$CommentData;

    .line 293
    iget-object v2, v1, Lcom/perm/kate/data/PageCommentList$CommentData;->comment:Lcom/perm/kate/api/Comment;

    iget-wide v2, v2, Lcom/perm/kate/api/Comment;->cid:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    .line 294
    iget-object p1, p0, Lcom/perm/kate/CommentRepliesActivity;->commentDatas:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 38
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0048

    .line 39
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0437

    .line 40
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    const p1, 0x7f09020d

    .line 41
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/perm/kate/CommentRepliesActivity;->lv_comment_list:Landroid/widget/ListView;

    .line 42
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 43
    iget-object p1, p0, Lcom/perm/kate/CommentRepliesActivity;->lv_comment_list:Landroid/widget/ListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 44
    iget-object p1, p0, Lcom/perm/kate/CommentRepliesActivity;->lv_comment_list:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "comment_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_id:J

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "content_owner_id"

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/perm/kate/CommentRepliesActivity;->content_owner_id:J

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "content_id"

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/perm/kate/CommentRepliesActivity;->content_id:J

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "content_type"

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "parent_comment_id"

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/perm/kate/CommentRepliesActivity;->parent_comment_id:J

    const p1, 0x7f090033

    .line 50
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    invoke-direct {p0}, Lcom/perm/kate/CommentRepliesActivity;->displayData()V

    .line 54
    :try_start_0
    invoke-direct {p0}, Lcom/perm/kate/CommentRepliesActivity;->reloadInThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 56
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 58
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_list_adapter:Lcom/perm/kate/CommentListAdapter;

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0}, Lcom/perm/kate/CommentListAdapter;->Destroy()V

    .line 460
    :cond_0
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected removeComment(Ljava/lang/Long;)V
    .locals 2

    const/4 v0, 0x1

    .line 300
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 301
    new-instance v0, Lcom/perm/kate/CommentRepliesActivity$5;

    invoke-direct {v0, p0, p0, p1}, Lcom/perm/kate/CommentRepliesActivity$5;-><init>(Lcom/perm/kate/CommentRepliesActivity;Landroid/app/Activity;Ljava/lang/Long;)V

    .line 318
    new-instance v1, Lcom/perm/kate/CommentRepliesActivity$6;

    invoke-direct {v1, p0, p1, v0}, Lcom/perm/kate/CommentRepliesActivity$6;-><init>(Lcom/perm/kate/CommentRepliesActivity;Ljava/lang/Long;Lcom/perm/kate/session/Callback;)V

    .line 334
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method setLike(Ljava/lang/Long;Lcom/perm/kate/api/Comment;Z)V
    .locals 7

    .line 396
    new-instance v6, Lcom/perm/kate/CommentRepliesActivity$10;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/CommentRepliesActivity$10;-><init>(Lcom/perm/kate/CommentRepliesActivity;Landroid/app/Activity;Ljava/lang/Long;ZLcom/perm/kate/api/Comment;)V

    .line 426
    new-instance p2, Lcom/perm/kate/CommentRepliesActivity$11;

    invoke-direct {p2, p0, p3, p1, v6}, Lcom/perm/kate/CommentRepliesActivity$11;-><init>(Lcom/perm/kate/CommentRepliesActivity;ZLjava/lang/Long;Lcom/perm/kate/session/Callback;)V

    .line 453
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method
