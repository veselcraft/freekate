.class public Lcom/perm/kate/NewsCommentsFragment;
.super Lcom/perm/kate/BaseFragment;
.source "NewsCommentsFragment.java"


# instance fields
.field account_id:J

.field callback:Lcom/perm/kate/session/Callback;

.field callbackUnsubscribe:Lcom/perm/kate/session/Callback;

.field card_style_news:Z

.field cursor:Landroid/database/Cursor;

.field private lv_posts_news_list:Landroid/widget/ListView;

.field notes:Lcom/perm/kate/NewsCursorAdapter;

.field old_style_news:Z

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/perm/kate/NewsCommentsFragment;->card_style_news:Z

    .line 35
    iput-boolean v0, p0, Lcom/perm/kate/NewsCommentsFragment;->old_style_news:Z

    .line 86
    new-instance v0, Lcom/perm/kate/NewsCommentsFragment$2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/NewsCommentsFragment$2;-><init>(Lcom/perm/kate/NewsCommentsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NewsCommentsFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 143
    new-instance v0, Lcom/perm/kate/NewsCommentsFragment$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewsCommentsFragment$4;-><init>(Lcom/perm/kate/NewsCommentsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/NewsCommentsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 413
    new-instance v0, Lcom/perm/kate/NewsCommentsFragment$8;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/NewsCommentsFragment$8;-><init>(Lcom/perm/kate/NewsCommentsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NewsCommentsFragment;->callbackUnsubscribe:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/NewsCommentsFragment;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/perm/kate/NewsCommentsFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/NewsCommentsFragment;Lcom/perm/kate/NewsItemTag;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/perm/kate/NewsCommentsFragment;->unsubscribe(Lcom/perm/kate/NewsItemTag;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/NewsCommentsFragment;JJ)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/NewsCommentsFragment;->showWallMessage(JJ)V

    return-void
.end method

.method private displayData()V
    .locals 4

    .line 122
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v1, p0, Lcom/perm/kate/NewsCommentsFragment;->account_id:J

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchPostNews(JI)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/NewsCommentsFragment;->cursor:Landroid/database/Cursor;

    .line 123
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 124
    new-instance v0, Lcom/perm/kate/NewsCursorAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/BaseActivity;

    iget-object v2, p0, Lcom/perm/kate/NewsCommentsFragment;->cursor:Landroid/database/Cursor;

    invoke-direct {v0, v1, v2, p0}, Lcom/perm/kate/NewsCursorAdapter;-><init>(Lcom/perm/kate/BaseActivity;Landroid/database/Cursor;Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/perm/kate/NewsCommentsFragment;->notes:Lcom/perm/kate/NewsCursorAdapter;

    const/4 v1, 0x0

    .line 125
    iput-boolean v1, v0, Lcom/perm/kate/NewsCursorAdapter;->is_clickable_count_views:Z

    .line 126
    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 128
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 129
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseFragment;->displayToast(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private onRefresh()V
    .locals 0

    .line 362
    invoke-virtual {p0}, Lcom/perm/kate/NewsCommentsFragment;->refreshInThread()V

    return-void
.end method

.method private requeryOnUiThread()V
    .locals 2

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/NewsCommentsFragment$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/NewsCommentsFragment$3;-><init>(Lcom/perm/kate/NewsCommentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setLike(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;Landroid/database/Cursor;J)V
    .locals 12

    .line 303
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 304
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 306
    new-instance v11, Lcom/perm/kate/NewsCommentsFragment$6;

    move-object v2, v11

    move-object v3, p3

    move-object v4, v1

    move-object v5, v0

    move v6, p2

    move-wide/from16 v7, p5

    move-object v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v2 .. v10}, Lcom/perm/kate/NewsCommentsFragment$6;-><init>(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;ZJLandroid/app/Activity;Landroid/database/Cursor;)V

    const/4 v7, 0x0

    move v2, p2

    move-object v3, v0

    move-object v5, v11

    move-object v6, p3

    .line 334
    invoke-static/range {v2 .. v7}, Lcom/perm/kate/NewsFragment;->setLikeInternal(ZLjava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Z)V

    return-void
.end method

.method public static showLikes(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 3

    .line 294
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 295
    const-class v1, Lcom/perm/kate/LikesActivity;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 296
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string p0, "com.perm.kate.item_id"

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 297
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    const-string v1, "com.perm.kate.owner_id"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p0, "com.perm.kate.item_type"

    const-string p1, "post"

    .line 298
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showWallMessage(JJ)V
    .locals 3

    .line 287
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/WallMessageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "post_id"

    .line 288
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "owner_id"

    .line 289
    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 290
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private unsubscribe(Lcom/perm/kate/NewsItemTag;)V
    .locals 1

    const/4 v0, 0x1

    .line 371
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 372
    new-instance v0, Lcom/perm/kate/NewsCommentsFragment$7;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/NewsCommentsFragment$7;-><init>(Lcom/perm/kate/NewsCommentsFragment;Lcom/perm/kate/NewsItemTag;)V

    .line 410
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V
    .locals 16

    move-object/from16 v8, p1

    .line 170
    iget-object v5, v8, Lcom/perm/kate/NewsItemTag;->photo_owner_id:Ljava/lang/String;

    .line 171
    iget-object v6, v8, Lcom/perm/kate/NewsItemTag;->album_id:Ljava/lang/String;

    .line 172
    iget-object v3, v8, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 173
    iget-object v4, v8, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    .line 174
    iget-boolean v0, v8, Lcom/perm/kate/NewsItemTag;->is_graffiti:Z

    .line 175
    iget-boolean v1, v8, Lcom/perm/kate/NewsItemTag;->i_like:Z

    .line 176
    iget-object v2, v8, Lcom/perm/kate/NewsItemTag;->friends:Ljava/lang/String;

    .line 177
    iget-object v9, v8, Lcom/perm/kate/NewsItemTag;->friend_ids:Ljava/lang/String;

    .line 178
    iget-object v7, v8, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-static {v7, v10}, Lcom/perm/kate/Helper;->extractUrl(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v7

    .line 180
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 181
    iget-object v12, v8, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v13, "post"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const v15, 0x7f0f022e

    if-eqz v12, :cond_1

    .line 182
    new-instance v12, Lcom/perm/kate/MenuItemDetails;

    const v14, 0x7f0f03a9

    const/16 v10, 0x10

    invoke-direct {v12, v14, v10}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v10, Lcom/perm/kate/MenuItemDetails;

    const/4 v12, 0x1

    invoke-direct {v10, v15, v12}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v10, Lcom/perm/kate/MenuItemDetails;

    const/4 v12, 0x2

    const v14, 0x7f0f022c

    invoke-direct {v10, v14, v12}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_0

    .line 186
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v10, 0x7f0f012a

    const/4 v12, 0x4

    invoke-direct {v1, v10, v12}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    :cond_0
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v10, 0x7f0f0129

    const/4 v12, 0x5

    invoke-direct {v1, v10, v12}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :goto_0
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v10, 0x7f0f05a2

    const/16 v12, 0x8

    invoke-direct {v1, v10, v12}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez v0, :cond_2

    if-eqz v6, :cond_2

    const-string v0, ""

    .line 191
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 192
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const/16 v1, 0xb

    invoke-direct {v0, v15, v1}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const/16 v1, 0xc

    const v10, 0x7f0f022c

    invoke-direct {v0, v10, v1}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f0234

    const/4 v10, 0x3

    invoke-direct {v0, v1, v10}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_2
    iget-object v0, v8, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const/16 v10, 0xd

    invoke-direct {v0, v15, v10}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const/16 v10, 0xe

    const v12, 0x7f0f022c

    invoke-direct {v0, v12, v10}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 201
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v10, 0x7f0f0319

    const/4 v12, 0x6

    invoke-direct {v0, v10, v12}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_4
    iget-object v0, v8, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 203
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v10, 0x7f0f00b2

    const/4 v12, 0x7

    invoke-direct {v0, v10, v12}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_5
    iget-object v0, v8, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v10, "friend"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ", "

    .line 205
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 206
    array-length v2, v0

    if-lez v2, :cond_6

    const/4 v2, 0x0

    .line 207
    :goto_1
    array-length v10, v0

    if-ge v2, v10, :cond_6

    .line 208
    new-instance v10, Lcom/perm/kate/MenuItemDetails;

    aget-object v12, v0, v2

    add-int/lit8 v14, v2, 0x64

    invoke-direct {v10, v12, v14}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 211
    :cond_6
    iget-object v0, v8, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v2, "topic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 212
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v10, 0x7f0f03ad

    const/16 v12, 0x9

    invoke-direct {v0, v10, v12}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_7
    iget-object v0, v8, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v8, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v8, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v2, "photo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v8, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v8, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v1, "note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 214
    :cond_8
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f0575

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_9
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 219
    :cond_a
    new-instance v10, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v10, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 220
    invoke-static {v11}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v12

    new-instance v13, Lcom/perm/kate/NewsCommentsFragment$5;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/perm/kate/NewsCommentsFragment$5;-><init>(Lcom/perm/kate/NewsCommentsFragment;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;Ljava/lang/String;)V

    invoke-virtual {v10, v12, v13}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 282
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 283
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method Refresh()V
    .locals 3

    .line 81
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/session/Session;->getNewsComments(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x17

    const/16 v2, 0x1f4

    const v3, 0x7f0f0422

    .line 347
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 66
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 67
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment;->callbackUnsubscribe:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 39
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 41
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/NewsCommentsFragment;->account_id:J

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/NewsCommentsFragment;->old_style_news:Z

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/perm/kate/NewsCursorAdapter;->getCardStyleFlag(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/NewsCommentsFragment;->card_style_news:Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 339
    invoke-virtual {p0, p1}, Lcom/perm/kate/NewsCommentsFragment;->fillMenuItems(Landroid/view/Menu;)Z

    .line 340
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c00ce

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseFragment;->initSwipeRefreshLayout(Landroid/view/View;)V

    const p2, 0x7f090219

    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/perm/kate/NewsCommentsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    .line 51
    iget-object p3, p0, Lcom/perm/kate/NewsCommentsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    iget-boolean p2, p0, Lcom/perm/kate/NewsCommentsFragment;->card_style_news:Z

    iget-boolean p3, p0, Lcom/perm/kate/NewsCommentsFragment;->old_style_news:Z

    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    invoke-static {p2, p3, v1}, Lcom/perm/kate/NewsFragment;->setupWideDivider(ZZLandroid/widget/ListView;)V

    .line 55
    iget-boolean p2, p0, Lcom/perm/kate/NewsCommentsFragment;->old_style_news:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/perm/kate/NewsCommentsFragment;->card_style_news:Z

    if-eqz p2, :cond_0

    .line 56
    iget-object p2, p0, Lcom/perm/kate/NewsCommentsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/NewsCommentsFragment;->displayData()V

    .line 58
    invoke-virtual {p0}, Lcom/perm/kate/NewsCommentsFragment;->refreshInThread()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment;->notes:Lcom/perm/kate/NewsCursorAdapter;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/perm/kate/NewsCursorAdapter;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/perm/kate/NewsCommentsFragment;->notes:Lcom/perm/kate/NewsCursorAdapter;

    .line 139
    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 353
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    .line 358
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 355
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/NewsCommentsFragment;->onRefresh()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 367
    invoke-direct {p0}, Lcom/perm/kate/NewsCommentsFragment;->onRefresh()V

    return-void
.end method

.method refreshInThread()V
    .locals 1

    .line 71
    new-instance v0, Lcom/perm/kate/NewsCommentsFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewsCommentsFragment$1;-><init>(Lcom/perm/kate/NewsCommentsFragment;)V

    .line 77
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
