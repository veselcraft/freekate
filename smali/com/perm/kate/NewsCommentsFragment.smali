.class public Lcom/perm/kate/NewsCommentsFragment;
.super Lcom/perm/kate/BaseFragment;
.source "NewsCommentsFragment.java"


# static fields
.field public static count:J


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
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    const-wide/16 v0, 0x1e

    sput-wide v0, Lcom/perm/kate/NewsCommentsFragment;->count:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 34
    iput-boolean v0, p0, Lcom/perm/kate/NewsCommentsFragment;->card_style_news:Z

    .line 35
    iput-boolean v0, p0, Lcom/perm/kate/NewsCommentsFragment;->old_style_news:Z

    .line 86
    new-instance v0, Lcom/perm/kate/NewsCommentsFragment$2;

    invoke-virtual {p0}, Lcom/perm/kate/NewsCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/NewsCommentsFragment$2;-><init>(Lcom/perm/kate/NewsCommentsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NewsCommentsFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 141
    new-instance v0, Lcom/perm/kate/NewsCommentsFragment$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewsCommentsFragment$4;-><init>(Lcom/perm/kate/NewsCommentsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/NewsCommentsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 411
    new-instance v0, Lcom/perm/kate/NewsCommentsFragment$8;

    invoke-virtual {p0}, Lcom/perm/kate/NewsCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/NewsCommentsFragment$8;-><init>(Lcom/perm/kate/NewsCommentsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NewsCommentsFragment;->callbackUnsubscribe:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/NewsCommentsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewsCommentsFragment;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/perm/kate/NewsCommentsFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/NewsCommentsFragment;Lcom/perm/kate/NewsItemTag;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewsCommentsFragment;
    .param p1, "x1"    # Lcom/perm/kate/NewsItemTag;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/perm/kate/NewsCommentsFragment;->unsubscribe(Lcom/perm/kate/NewsItemTag;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/NewsCommentsFragment;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewsCommentsFragment;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/NewsCommentsFragment;->showWallMessage(JJ)V

    return-void
.end method

.method private displayData()V
    .locals 10

    .prologue
    .line 120
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    iget-wide v6, p0, Lcom/perm/kate/NewsCommentsFragment;->account_id:J

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/db/DataHelper;->fetchPostNews(ZZZZZJI)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/NewsCommentsFragment;->cursor:Landroid/database/Cursor;

    .line 121
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewsCommentsFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 122
    new-instance v1, Lcom/perm/kate/NewsCursorAdapter;

    invoke-virtual {p0}, Lcom/perm/kate/NewsCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseActivity;

    iget-object v2, p0, Lcom/perm/kate/NewsCommentsFragment;->cursor:Landroid/database/Cursor;

    invoke-direct {v1, v0, v2, p0}, Lcom/perm/kate/NewsCursorAdapter;-><init>(Lcom/perm/kate/BaseActivity;Landroid/database/Cursor;Landroid/support/v4/app/Fragment;)V

    iput-object v1, p0, Lcom/perm/kate/NewsCommentsFragment;->notes:Lcom/perm/kate/NewsCursorAdapter;

    .line 123
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment;->notes:Lcom/perm/kate/NewsCursorAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/perm/kate/NewsCursorAdapter;->is_clickable_count_views:Z

    .line 124
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment;->notes:Lcom/perm/kate/NewsCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v9

    .line 126
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 127
    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewsCommentsFragment;->displayToast(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private onRefresh()V
    .locals 0

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/perm/kate/NewsCommentsFragment;->refreshInThread()V

    .line 361
    return-void
.end method

.method private requeryOnUiThread()V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/perm/kate/NewsCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/NewsCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/NewsCommentsFragment$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/NewsCommentsFragment$3;-><init>(Lcom/perm/kate/NewsCommentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static setLike(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;Landroid/database/Cursor;J)V
    .locals 11
    .param p0, "postId"    # Ljava/lang/String;
    .param p1, "ownerId"    # Ljava/lang/String;
    .param p2, "like"    # Z
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "cursor"    # Landroid/database/Cursor;
    .param p5, "account_id"    # J

    .prologue
    .line 301
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 302
    .local v4, "owner_id":Ljava/lang/Long;
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 304
    .local v3, "post_id":Ljava/lang/Long;
    new-instance v1, Lcom/perm/kate/NewsCommentsFragment$6;

    move-object v2, p3

    move v5, p2

    move-wide/from16 v6, p5

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/perm/kate/NewsCommentsFragment$6;-><init>(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;ZJLandroid/app/Activity;Landroid/database/Cursor;)V

    .line 332
    .local v1, "callback_like":Lcom/perm/kate/session/Callback;
    invoke-static {p2, v4, v3, v1, p3}, Lcom/perm/kate/NewsFragment;->setLikeInternal(ZLjava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 333
    return-void
.end method

.method public static showLikes(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 4
    .param p0, "postId"    # Ljava/lang/String;
    .param p1, "ownerId"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 292
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 293
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/LikesActivity;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 294
    const-string v1, "com.perm.kate.item_id"

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 295
    const-string v1, "com.perm.kate.owner_id"

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 296
    const-string v1, "com.perm.kate.item_type"

    const-string v2, "post"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 298
    return-void
.end method

.method private showWallMessage(JJ)V
    .locals 3
    .param p1, "post_id"    # J
    .param p3, "owner_id"    # J

    .prologue
    .line 285
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/perm/kate/NewsCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/WallMessageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "post_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 287
    const-string v1, "owner_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 288
    invoke-virtual {p0, v0}, Lcom/perm/kate/NewsCommentsFragment;->startActivity(Landroid/content/Intent;)V

    .line 289
    return-void
.end method

.method private unsubscribe(Lcom/perm/kate/NewsItemTag;)V
    .locals 1
    .param p1, "tag"    # Lcom/perm/kate/NewsItemTag;

    .prologue
    .line 369
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewsCommentsFragment;->showProgressBar(Z)V

    .line 370
    new-instance v0, Lcom/perm/kate/NewsCommentsFragment$7;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/NewsCommentsFragment$7;-><init>(Lcom/perm/kate/NewsCommentsFragment;Lcom/perm/kate/NewsItemTag;)V

    .line 408
    invoke-virtual {v0}, Lcom/perm/kate/NewsCommentsFragment$7;->start()V

    .line 409
    return-void
.end method


# virtual methods
.method protected CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V
    .locals 21
    .param p1, "tag"    # Lcom/perm/kate/NewsItemTag;

    .prologue
    .line 168
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/perm/kate/NewsItemTag;->photo_owner_id:Ljava/lang/String;

    .line 169
    .local v7, "photo_owner_id":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/perm/kate/NewsItemTag;->album_id:Ljava/lang/String;

    .line 170
    .local v8, "album_id":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 171
    .local v5, "post_id":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    .line 172
    .local v6, "post_owner_id":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/perm/kate/NewsItemTag;->is_graffiti:Z

    move/from16 v17, v0

    .line 173
    .local v17, "is_graffiti":Z
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/perm/kate/NewsItemTag;->i_like:Z

    move/from16 v16, v0

    .line 174
    .local v16, "i_like":Z
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/perm/kate/NewsItemTag;->friends:Ljava/lang/String;

    .line 175
    .local v13, "friends":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/perm/kate/NewsItemTag;->friend_ids:Ljava/lang/String;

    .line 176
    .local v11, "friend_ids":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->extractUrl(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v9

    .line 178
    .local v9, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v4, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v3, "post"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f070344

    const/16 v10, 0x10

    invoke-direct {v2, v3, v10}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0701d2

    const/4 v10, 0x1

    invoke-direct {v2, v3, v10}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0701d0

    const/4 v10, 0x2

    invoke-direct {v2, v3, v10}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    if-nez v16, :cond_5

    .line 184
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0700e0

    const/4 v10, 0x4

    invoke-direct {v2, v3, v10}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :goto_0
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f070518

    const/16 v10, 0x8

    invoke-direct {v2, v3, v10}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_0
    if-nez v17, :cond_1

    if-eqz v8, :cond_1

    const-string v2, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 190
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0701d2

    const/16 v10, 0xb

    invoke-direct {v2, v3, v10}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0701d0

    const/16 v10, 0xc

    invoke-direct {v2, v3, v10}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0701d8

    const/4 v10, 0x3

    invoke-direct {v2, v3, v10}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0701d2

    const/16 v10, 0xd

    invoke-direct {v2, v3, v10}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0701d0

    const/16 v10, 0xe

    invoke-direct {v2, v3, v10}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 199
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0702bd

    const/4 v10, 0x6

    invoke-direct {v2, v3, v10}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v3, "post"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 201
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f07007e

    const/4 v10, 0x7

    invoke-direct {v2, v3, v10}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v3, "friend"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 203
    const-string v2, ", "

    invoke-virtual {v13, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 204
    .local v14, "frnds":[Ljava/lang/String;
    if-eqz v14, :cond_6

    array-length v2, v14

    if-lez v2, :cond_6

    .line 205
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    array-length v2, v14

    if-ge v15, v2, :cond_6

    .line 206
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    aget-object v3, v14, v15

    add-int/lit8 v10, v15, 0x64

    invoke-direct {v2, v3, v10}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 186
    .end local v14    # "frnds":[Ljava/lang/String;
    .end local v15    # "i":I
    :cond_5
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0700df

    const/4 v10, 0x5

    invoke-direct {v2, v3, v10}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 209
    :cond_6
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v3, "topic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 210
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f070349

    const/16 v10, 0x9

    invoke-direct {v2, v3, v10}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_7
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v3, "post"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v3, "topic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v3, "photo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v3, "note"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 212
    :cond_8
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0704ef

    const/16 v10, 0xf

    invoke-direct {v2, v3, v10}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_a

    .line 282
    :goto_2
    return-void

    .line 217
    :cond_a
    new-instance v19, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/NewsCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 218
    invoke-static {v4}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v20

    new-instance v2, Lcom/perm/kate/NewsCommentsFragment$5;

    move-object/from16 v3, p0

    move-object/from16 v10, p1

    invoke-direct/range {v2 .. v11}, Lcom/perm/kate/NewsCommentsFragment$5;-><init>(Lcom/perm/kate/NewsCommentsFragment;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v18

    .line 279
    .local v18, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v12

    .line 280
    .local v12, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 281
    invoke-virtual {v12}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_2
.end method

.method Refresh()V
    .locals 3

    .prologue
    .line 81
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {p0}, Lcom/perm/kate/NewsCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/session/Session;->getNewsComments(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 82
    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 345
    const/4 v0, 0x0

    const/16 v1, 0x17

    const/16 v2, 0x1f4

    const v3, 0x7f0703a5

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 66
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 67
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment;->callbackUnsubscribe:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 68
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewsCommentsFragment;->setHasOptionsMenu(Z)V

    .line 41
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/NewsCommentsFragment;->account_id:J

    .line 42
    invoke-virtual {p0}, Lcom/perm/kate/NewsCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/NewsCommentsFragment;->old_style_news:Z

    .line 43
    invoke-virtual {p0}, Lcom/perm/kate/NewsCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/NewsCursorAdapter;->getCardStyleFlag(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/NewsCommentsFragment;->card_style_news:Z

    .line 44
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 337
    invoke-virtual {p0, p1}, Lcom/perm/kate/NewsCommentsFragment;->fillMenuItems(Landroid/view/Menu;)Z

    .line 338
    invoke-super {p0, p1, p2}, Lcom/perm/kate/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 339
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 48
    const v1, 0x7f0300bb

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/perm/kate/NewsCommentsFragment;->initSwipeRefreshLayout(Landroid/view/View;)V

    .line 50
    const v1, 0x7f0e0265

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/perm/kate/NewsCommentsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    .line 51
    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/NewsCommentsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    iget-boolean v1, p0, Lcom/perm/kate/NewsCommentsFragment;->card_style_news:Z

    iget-boolean v2, p0, Lcom/perm/kate/NewsCommentsFragment;->old_style_news:Z

    iget-object v3, p0, Lcom/perm/kate/NewsCommentsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    invoke-static {v1, v2, v3}, Lcom/perm/kate/NewsFragment;->setupWideDivider(ZZLandroid/widget/ListView;)V

    .line 55
    iget-boolean v1, p0, Lcom/perm/kate/NewsCommentsFragment;->old_style_news:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/perm/kate/NewsCommentsFragment;->card_style_news:Z

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/NewsCommentsFragment;->displayData()V

    .line 58
    invoke-virtual {p0}, Lcom/perm/kate/NewsCommentsFragment;->refreshInThread()V

    .line 60
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment;->notes:Lcom/perm/kate/NewsCursorAdapter;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment;->notes:Lcom/perm/kate/NewsCursorAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/NewsCursorAdapter;->destroy()V

    .line 136
    :cond_0
    iput-object v1, p0, Lcom/perm/kate/NewsCommentsFragment;->notes:Lcom/perm/kate/NewsCursorAdapter;

    .line 137
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    .line 139
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 351
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 356
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 353
    :pswitch_0
    invoke-direct {p0}, Lcom/perm/kate/NewsCommentsFragment;->onRefresh()V

    .line 354
    const/4 v0, 0x1

    goto :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/perm/kate/NewsCommentsFragment;->onRefresh()V

    .line 366
    return-void
.end method

.method refreshInThread()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/perm/kate/NewsCommentsFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewsCommentsFragment$1;-><init>(Lcom/perm/kate/NewsCommentsFragment;)V

    .line 77
    invoke-virtual {v0}, Lcom/perm/kate/NewsCommentsFragment$1;->start()V

    .line 78
    return-void
.end method
