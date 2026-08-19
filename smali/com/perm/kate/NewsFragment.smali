.class public Lcom/perm/kate/NewsFragment;
.super Lcom/perm/kate/BaseFragment;
.source "NewsFragment.java"


# static fields
.field public static count:I = 0xa

.field public static default_count:I = 0xa

.field public static redisplay_data:Z = false


# instance fields
.field account_id:J

.field private add_callback:Lcom/perm/kate/session/Callback;

.field callback:Lcom/perm/kate/session/Callback;

.field callback_load_more:Lcom/perm/kate/session/Callback;

.field card_style_news:Z

.field cursor:Landroid/database/Cursor;

.field filter:Ljava/lang/String;

.field from:Ljava/lang/String;

.field private lv_posts_news_list:Landroid/widget/ListView;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field manual:Z

.field max_photos:Ljava/lang/Integer;

.field private newsLists:Ljava/util/ArrayList;

.field private news_list_callback:Lcom/perm/kate/session/Callback;

.field notes:Lcom/perm/kate/NewsCursorAdapter;

.field old_style_news:Z

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field scroll_to_pos:I

.field source_ids:Ljava/lang/String;

.field private state:I

.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 58
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lcom/perm/kate/NewsFragment;->state:I

    .line 68
    iput v0, p0, Lcom/perm/kate/NewsFragment;->scroll_to_pos:I

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->from:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->source_ids:Ljava/lang/String;

    const/4 v1, 0x0

    .line 74
    iput-boolean v1, p0, Lcom/perm/kate/NewsFragment;->card_style_news:Z

    .line 75
    iput-boolean v1, p0, Lcom/perm/kate/NewsFragment;->old_style_news:Z

    .line 78
    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->max_photos:Ljava/lang/Integer;

    .line 80
    iput v1, p0, Lcom/perm/kate/NewsFragment;->type:I

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/NewsFragment;->newsLists:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 194
    iput-boolean v1, p0, Lcom/perm/kate/NewsFragment;->manual:Z

    .line 237
    new-instance v1, Lcom/perm/kate/NewsFragment$4;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/perm/kate/NewsFragment$4;-><init>(Lcom/perm/kate/NewsFragment;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/perm/kate/NewsFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 339
    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    .line 410
    new-instance v0, Lcom/perm/kate/NewsFragment$7;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/NewsFragment$7;-><init>(Lcom/perm/kate/NewsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    .line 504
    new-instance v0, Lcom/perm/kate/NewsFragment$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewsFragment$9;-><init>(Lcom/perm/kate/NewsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 515
    new-instance v0, Lcom/perm/kate/NewsFragment$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewsFragment$10;-><init>(Lcom/perm/kate/NewsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 563
    new-instance v0, Lcom/perm/kate/NewsFragment$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewsFragment$11;-><init>(Lcom/perm/kate/NewsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 588
    new-instance v0, Lcom/perm/kate/NewsFragment$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewsFragment$12;-><init>(Lcom/perm/kate/NewsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 728
    new-instance v0, Lcom/perm/kate/NewsFragment$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewsFragment$14;-><init>(Lcom/perm/kate/NewsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    .line 964
    new-instance v0, Lcom/perm/kate/NewsFragment$21;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/NewsFragment$21;-><init>(Lcom/perm/kate/NewsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->add_callback:Lcom/perm/kate/session/Callback;

    .line 1155
    new-instance v0, Lcom/perm/kate/NewsFragment$24;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/NewsFragment$24;-><init>(Lcom/perm/kate/NewsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->news_list_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/NewsFragment;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->getNewsLists()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/NewsFragment;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/perm/kate/NewsFragment;->state:I

    return p0
.end method

.method static synthetic access$1000(Lcom/perm/kate/NewsFragment;Ljava/lang/String;JJJLjava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct/range {p0 .. p8}, Lcom/perm/kate/NewsFragment;->ignoreItem(Ljava/lang/String;JJJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/perm/kate/NewsFragment;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/perm/kate/NewsFragment;->state:I

    return p1
.end method

.method static synthetic access$1100(Lcom/perm/kate/NewsFragment;Ljava/lang/Long;Lcom/perm/kate/api/Group;Lcom/perm/kate/api/User;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/NewsFragment;->hidePost(Ljava/lang/Long;Lcom/perm/kate/api/Group;Lcom/perm/kate/api/User;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/perm/kate/NewsFragment;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/NewsFragment;->hidePost(Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/NewsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/perm/kate/NewsFragment;->getTypeFromPostType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/perm/kate/NewsFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/perm/kate/NewsFragment;->add_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/perm/kate/NewsFragment;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/perm/kate/NewsFragment;->changeSource(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/perm/kate/NewsFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/perm/kate/NewsFragment;->news_list_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/perm/kate/NewsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/perm/kate/NewsFragment;->newsLists:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/perm/kate/NewsFragment;Lcom/perm/kate/api/Newsfeed;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/NewsFragment;->displayNewPosts(Lcom/perm/kate/api/Newsfeed;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/NewsFragment;Lcom/perm/kate/api/Newsfeed;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/perm/kate/NewsFragment;->displaySnackBar(Lcom/perm/kate/api/Newsfeed;)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/NewsFragment;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/perm/kate/NewsFragment;->lazyReport(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/NewsFragment;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->hideSnackbar()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/NewsFragment;)Landroid/widget/ListView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/perm/kate/NewsFragment;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->loadMore()V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/NewsFragment;Landroid/widget/AbsListView;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/perm/kate/NewsFragment;->reportAdImpressionIfRequired(Landroid/widget/AbsListView;)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/NewsFragment;Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct/range {p0 .. p5}, Lcom/perm/kate/NewsFragment;->showWallPostFromNews(Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addBanInThread(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 1

    .line 936
    new-instance v0, Lcom/perm/kate/NewsFragment$20;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/perm/kate/NewsFragment$20;-><init>(Lcom/perm/kate/NewsFragment;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 960
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 961
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f0f0541

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private changeSource(I)V
    .locals 2

    .line 1027
    iget v0, p0, Lcom/perm/kate/NewsFragment;->type:I

    .line 1028
    invoke-direct {p0, p1}, Lcom/perm/kate/NewsFragment;->initFilterParams(I)V

    .line 1029
    iget v1, p0, Lcom/perm/kate/NewsFragment;->type:I

    if-eq v1, v0, :cond_0

    .line 1030
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->reFetchData()V

    :cond_0
    const/4 v0, 0x1

    .line 1031
    invoke-virtual {p0, v0}, Lcom/perm/kate/NewsFragment;->refreshInThread(Z)V

    .line 1032
    invoke-direct {p0, p1}, Lcom/perm/kate/NewsFragment;->saveSelectedFilterId(I)V

    return-void
.end method

.method public static clickOpensNews()Z
    .locals 3

    .line 608
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "news_click_key_4"

    const-string v2, "0"

    .line 609
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 610
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private displayData()V
    .locals 4

    .line 343
    :try_start_0
    new-instance v0, Lcom/perm/kate/NewsCursorAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/BaseActivity;

    iget-object v2, p0, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    invoke-direct {v0, v1, v2, p0}, Lcom/perm/kate/NewsCursorAdapter;-><init>(Lcom/perm/kate/BaseActivity;Landroid/database/Cursor;Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->notes:Lcom/perm/kate/NewsCursorAdapter;

    .line 344
    iget-object v1, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 345
    iget v0, p0, Lcom/perm/kate/NewsFragment;->scroll_to_pos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 346
    iget-object v2, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 347
    iput v1, p0, Lcom/perm/kate/NewsFragment;->scroll_to_pos:I

    .line 350
    :cond_0
    invoke-static {}, Lcom/perm/kate/NewsFragment;->shouldDisplayNewPosts()Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->restoreScrollPos()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 353
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 354
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 355
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private displayNewPosts(Lcom/perm/kate/api/Newsfeed;Z)V
    .locals 6

    .line 267
    iget-object v0, p1, Lcom/perm/kate/api/Newsfeed;->new_from:Ljava/lang/String;

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->from:Ljava/lang/String;

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/NewsFragment;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 271
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v3, p0, Lcom/perm/kate/NewsFragment;->account_id:J

    iget v5, p0, Lcom/perm/kate/NewsFragment;->type:I

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->deleteAndCreateNews(Lcom/perm/kate/api/Newsfeed;JI)V

    const-string p1, "nf_deleteAndCreateNews"

    .line 272
    invoke-static {v0, v1, p1}, Lcom/perm/kate/Helper;->reportDbWriteDuration(JLjava/lang/String;)V

    .line 273
    invoke-virtual {p0, p2}, Lcom/perm/kate/NewsFragment;->requeryOnUiThread(Z)V

    .line 275
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p1}, Lcom/perm/kate/KateWidgetMed;->refresh(Landroid/content/Context;)V

    return-void
.end method

.method private displaySnackBar(Lcom/perm/kate/api/Newsfeed;)V
    .locals 5

    .line 279
    iget-object v0, p1, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 284
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v1, p0, Lcom/perm/kate/NewsFragment;->account_id:J

    iget v3, p0, Lcom/perm/kate/NewsFragment;->type:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->getLastNewsDate2(JI)J

    move-result-wide v0

    .line 286
    iget-object v2, p1, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/NewsItem;

    iget-wide v2, v2, Lcom/perm/kate/api/NewsItem;->date:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    .line 287
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/NewsFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/NewsFragment$5;-><init>(Lcom/perm/kate/NewsFragment;Lcom/perm/kate/api/Newsfeed;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private fetchData()V
    .locals 6

    .line 360
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 362
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 365
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 366
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v3, p0, Lcom/perm/kate/NewsFragment;->account_id:J

    iget v5, p0, Lcom/perm/kate/NewsFragment;->type:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchPostNews(JI)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    const-string v3, "nf_fetchPostNews"

    .line 367
    invoke-static {v0, v1, v3, v2}, Lcom/perm/kate/Helper;->reportDbReadDuration(JLjava/lang/String;Landroid/database/Cursor;)V

    .line 368
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->startManagingCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private getNewsLists()V
    .locals 2

    .line 1143
    new-instance v0, Lcom/perm/kate/NewsFragment$23;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewsFragment$23;-><init>(Lcom/perm/kate/NewsFragment;)V

    const/4 v1, 0x1

    .line 1151
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1152
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getSelectedFilterId()I
    .locals 3

    .line 1125
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "news_filter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getSelectedFilterPos(Ljava/util/ArrayList;)I
    .locals 4

    .line 1129
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->getSelectedFilterId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1130
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1131
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/MenuItemDetails;

    iget v3, v3, Lcom/perm/kate/MenuItemDetails;->code:I

    if-ne v3, v0, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getTypeFromPostType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "post"

    .line 872
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "wall"

    return-object p1

    :cond_0
    const-string v0, "wall_photo"

    .line 874
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "photo"

    return-object p1

    :cond_1
    const-string v0, "photo_tag"

    .line 876
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "tag"

    :cond_2
    return-object p1
.end method

.method private hidePost(Ljava/lang/Long;Lcom/perm/kate/api/Group;Lcom/perm/kate/api/User;)V
    .locals 10

    const/4 v0, 0x0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 883
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NewsFragment;->hidePost(Ljava/lang/Long;Ljava/lang/String;)V

    return-void

    .line 886
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 888
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    const-string v6, " "

    const-wide/16 v7, -0x1

    cmp-long v9, v1, v4

    if-lez v9, :cond_1

    .line 889
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 893
    :cond_1
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long v4, v4, v7

    invoke-virtual {v1, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 895
    iget-object v0, v1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 897
    :cond_2
    :goto_0
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    .line 901
    iget-wide v1, p2, Lcom/perm/kate/api/Group;->gid:J

    mul-long v1, v1, v7

    .line 902
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    iget-object p2, p2, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-direct {p3, p2, v0}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 904
    :cond_3
    iget-wide v1, p3, Lcom/perm/kate/api/User;->uid:J

    .line 905
    new-instance p2, Lcom/perm/kate/MenuItemDetails;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p3, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, v0}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    move-wide v5, v1

    .line 908
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p3, 0x7f0f0212

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    .line 909
    invoke-static {v3}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object p3

    new-instance v7, Lcom/perm/kate/NewsFragment$19;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/perm/kate/NewsFragment$19;-><init>(Lcom/perm/kate/NewsFragment;Ljava/util/ArrayList;Ljava/lang/Long;J)V

    invoke-virtual {p2, p3, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 923
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 924
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 925
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private hidePost(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 6

    .line 929
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    .line 930
    invoke-direct {p0, p1, v2, p2}, Lcom/perm/kate/NewsFragment;->addBanInThread(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 932
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    mul-long v3, v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v2, p1, p2}, Lcom/perm/kate/NewsFragment;->addBanInThread(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private hideSnackbar()V
    .locals 2

    .line 320
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 322
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 323
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private ignoreItem(Ljava/lang/String;JJJLjava/lang/String;)V
    .locals 11

    move-object v9, p0

    .line 841
    new-instance v8, Lcom/perm/kate/NewsFragment$17;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    move-wide/from16 v1, p6

    invoke-direct {v8, p0, v0, v1, v2}, Lcom/perm/kate/NewsFragment$17;-><init>(Lcom/perm/kate/NewsFragment;Landroid/app/Activity;J)V

    const/4 v0, 0x1

    .line 859
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 860
    new-instance v10, Lcom/perm/kate/NewsFragment$18;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p8

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/NewsFragment$18;-><init>(Lcom/perm/kate/NewsFragment;Ljava/lang/String;Ljava/lang/String;JJLcom/perm/kate/session/Callback;)V

    .line 868
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private initFilterParams(I)V
    .locals 6

    .line 1036
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f0f016a

    .line 1037
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const v3, 0x7f0f0168

    .line 1038
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const v4, 0x7f0f0169

    .line 1039
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const v5, 0x7f0f0167

    .line 1040
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v5, ""

    if-eqz v1, :cond_0

    .line 1045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",post"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_0
    if-eqz v3, :cond_1

    .line 1047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",photo"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    if-eqz v4, :cond_2

    .line 1049
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",photo_tag"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_2
    if-eqz v0, :cond_3

    .line 1051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",friend"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1052
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 1053
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_4
    const-string v0, "friends,following"

    const-string v1, ",ads_post"

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/NewsFragment;->source_ids:Ljava/lang/String;

    .line 1111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/NewsFragment;->filter:Ljava/lang/String;

    .line 1112
    iput-object v3, p0, Lcom/perm/kate/NewsFragment;->max_photos:Ljava/lang/Integer;

    .line 1113
    iput v2, p0, Lcom/perm/kate/NewsFragment;->type:I

    goto/16 :goto_0

    .line 1057
    :pswitch_0
    iput-object v3, p0, Lcom/perm/kate/NewsFragment;->source_ids:Ljava/lang/String;

    .line 1058
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/NewsFragment;->filter:Ljava/lang/String;

    .line 1059
    iput-object v3, p0, Lcom/perm/kate/NewsFragment;->max_photos:Ljava/lang/Integer;

    .line 1060
    iput v2, p0, Lcom/perm/kate/NewsFragment;->type:I

    goto/16 :goto_0

    :pswitch_1
    const-string p1, "friends"

    .line 1063
    iput-object p1, p0, Lcom/perm/kate/NewsFragment;->source_ids:Ljava/lang/String;

    .line 1064
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/NewsFragment;->filter:Ljava/lang/String;

    .line 1065
    iput-object v3, p0, Lcom/perm/kate/NewsFragment;->max_photos:Ljava/lang/Integer;

    .line 1066
    iput v2, p0, Lcom/perm/kate/NewsFragment;->type:I

    goto :goto_0

    :pswitch_2
    const-string p1, "groups,pages"

    .line 1069
    iput-object p1, p0, Lcom/perm/kate/NewsFragment;->source_ids:Ljava/lang/String;

    .line 1070
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/NewsFragment;->filter:Ljava/lang/String;

    .line 1071
    iput-object v3, p0, Lcom/perm/kate/NewsFragment;->max_photos:Ljava/lang/Integer;

    .line 1072
    iput v2, p0, Lcom/perm/kate/NewsFragment;->type:I

    goto :goto_0

    .line 1076
    :pswitch_3
    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->source_ids:Ljava/lang/String;

    const-string p1, "photo,photo_tag,wall_photo,ads_post"

    .line 1077
    iput-object p1, p0, Lcom/perm/kate/NewsFragment;->filter:Ljava/lang/String;

    const/16 p1, 0x14

    .line 1078
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/NewsFragment;->max_photos:Ljava/lang/Integer;

    .line 1079
    iput v2, p0, Lcom/perm/kate/NewsFragment;->type:I

    goto :goto_0

    .line 1083
    :pswitch_4
    iput-object v3, p0, Lcom/perm/kate/NewsFragment;->source_ids:Ljava/lang/String;

    .line 1084
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/NewsFragment;->filter:Ljava/lang/String;

    .line 1085
    iput-object v3, p0, Lcom/perm/kate/NewsFragment;->max_photos:Ljava/lang/Integer;

    const/4 p1, 0x2

    .line 1086
    iput p1, p0, Lcom/perm/kate/NewsFragment;->type:I

    goto :goto_0

    .line 1092
    :pswitch_5
    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->source_ids:Ljava/lang/String;

    const-string p1, "audio,ads_post"

    .line 1094
    iput-object p1, p0, Lcom/perm/kate/NewsFragment;->filter:Ljava/lang/String;

    .line 1095
    iput-object v3, p0, Lcom/perm/kate/NewsFragment;->max_photos:Ljava/lang/Integer;

    .line 1100
    iput v2, p0, Lcom/perm/kate/NewsFragment;->type:I

    goto :goto_0

    .line 1104
    :pswitch_6
    iput-object v3, p0, Lcom/perm/kate/NewsFragment;->source_ids:Ljava/lang/String;

    const-string p1, "video,ads_post"

    .line 1105
    iput-object p1, p0, Lcom/perm/kate/NewsFragment;->filter:Ljava/lang/String;

    .line 1106
    iput-object v3, p0, Lcom/perm/kate/NewsFragment;->max_photos:Ljava/lang/Integer;

    .line 1107
    iput v2, p0, Lcom/perm/kate/NewsFragment;->type:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private lazyReport(Ljava/lang/String;)V
    .locals 5

    .line 1191
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    .line 1192
    rem-long/2addr v0, v2

    const-wide/16 v2, 0x270f

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 1194
    :cond_0
    invoke-static {p1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1196
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1197
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private loadMore()V
    .locals 2

    .line 482
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->from:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadMore canceled because from = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/NewsFragment;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Refresh enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->isRefreshNewsOnStartEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 484
    iput v0, p0, Lcom/perm/kate/NewsFragment;->state:I

    const/4 v0, 0x0

    .line 485
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void

    .line 489
    :cond_0
    new-instance v0, Lcom/perm/kate/NewsFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewsFragment$8;-><init>(Lcom/perm/kate/NewsFragment;)V

    .line 501
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private reFetchData()V
    .locals 2

    .line 1137
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->fetchData()V

    .line 1138
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->notes:Lcom/perm/kate/NewsCursorAdapter;

    if-eqz v0, :cond_0

    .line 1139
    iget-object v1, p0, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method

.method private reportAdImpressionIfRequired(Landroid/widget/AbsListView;)V
    .locals 10

    .line 540
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 541
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    :goto_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 542
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 545
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/NewsItemTag;

    .line 546
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    if-ge v4, v0, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v4, v2

    if-le v4, v0, :cond_1

    .line 547
    iget-object p1, v3, Lcom/perm/kate/NewsItemTag;->ad_data:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 548
    iget-object v4, v3, Lcom/perm/kate/NewsItemTag;->ad_data_impression:Ljava/lang/String;

    iget-object v5, v3, Lcom/perm/kate/NewsItemTag;->statistics:Ljava/util/List;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v3, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lcom/perm/kate/NewsItemTag;->track_code:Ljava/lang/String;

    iget-object p1, v3, Lcom/perm/kate/NewsItemTag;->ads_id1:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object p1, v3, Lcom/perm/kate/NewsItemTag;->ads_id2:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static/range {v4 .. v9}, Lcom/perm/utils/AdEvents;->reportImpression(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 554
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 555
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private restoreFrom()V
    .locals 3

    .line 1181
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "news_from"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->from:Ljava/lang/String;

    return-void
.end method

.method private restoreScrollPos()V
    .locals 6

    .line 389
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "news_pos_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/perm/kate/NewsFragment;->account_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 390
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "news_offset_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/perm/kate/NewsFragment;->account_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 391
    iget-object v2, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 393
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 394
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private saveScrollPos()V
    .locals 6

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 375
    iget-object v1, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 377
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "news_pos_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/perm/kate/NewsFragment;->account_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 378
    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "news_offset_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/perm/kate/NewsFragment;->account_id:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 380
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 382
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 383
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private saveSelectedFilterId(I)V
    .locals 2

    .line 1119
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "news_filter"

    .line 1120
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1121
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setLike(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;Landroid/database/Cursor;JZ)V
    .locals 12

    .line 762
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 763
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 765
    new-instance v11, Lcom/perm/kate/NewsFragment$15;

    move-object v2, v11

    move-object v3, p3

    move-object v4, v1

    move-object v5, v0

    move v6, p2

    move-wide/from16 v7, p5

    move-object v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v2 .. v10}, Lcom/perm/kate/NewsFragment$15;-><init>(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;ZJLandroid/app/Activity;Landroid/database/Cursor;)V

    move v2, p2

    move-object v3, v0

    move-object v5, v11

    move-object v6, p3

    move/from16 v7, p7

    .line 797
    invoke-static/range {v2 .. v7}, Lcom/perm/kate/NewsFragment;->setLikeInternal(ZLjava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Z)V

    return-void
.end method

.method public static setLikeInternal(ZLjava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Z)V
    .locals 8

    .line 802
    new-instance v7, Lcom/perm/kate/NewsFragment$16;

    move-object v0, v7

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/NewsFragment$16;-><init>(ZLjava/lang/Long;Ljava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 810
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static setupWideDivider(ZZLandroid/widget/ListView;)V
    .locals 2

    .line 160
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    const v1, 0x7f1000d3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_2

    if-nez p1, :cond_2

    .line 166
    sget p0, Lcom/perm/kate/BaseActivity;->Theme:I

    const p1, 0x7f1000df

    if-eq p0, p1, :cond_2

    .line 168
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f080088

    goto :goto_0

    :cond_1
    const p0, 0x7f080089

    .line 169
    :goto_0
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const-wide/high16 p0, 0x402a000000000000L    # 13.0

    .line 170
    invoke-static {p0, p1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setDividerHeight(I)V

    :cond_2
    return-void
.end method

.method static shouldDisplayNewPosts()Z
    .locals 3

    .line 1185
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_show_new_posts"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static showLikes(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 747
    invoke-static {p0, p1, v0, p2}, Lcom/perm/kate/NewsFragment;->showLikes(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;)V

    return-void
.end method

.method public static showLikes(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;)V
    .locals 3

    .line 751
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 752
    const-class v1, Lcom/perm/kate/LikesActivity;

    invoke-virtual {v0, p3, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 753
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string p0, "com.perm.kate.item_id"

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 754
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    const-string v1, "com.perm.kate.owner_id"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p0, "com.perm.kate.item_type"

    const-string p1, "post"

    .line 755
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.perm.kate.is_copies"

    .line 756
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 757
    invoke-virtual {p3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showSourcesDialog()V
    .locals 8

    .line 1002
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0377

    .line 1003
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1004
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1006
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0f0044

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1007
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0f0230

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1008
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0f00a7

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1009
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0f04bf

    const/4 v4, -0x3

    invoke-direct {v2, v3, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1010
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0f0420

    const/4 v4, -0x4

    invoke-direct {v2, v3, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0f04ea

    const/4 v4, -0x5

    invoke-direct {v2, v3, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0f051d

    const/4 v4, -0x6

    invoke-direct {v2, v3, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    iget-object v2, p0, Lcom/perm/kate/NewsFragment;->newsLists:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1014
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/NewsList;

    .line 1015
    new-instance v4, Lcom/perm/kate/MenuItemDetails;

    iget-object v5, v3, Lcom/perm/kate/api/NewsList;->title:Ljava/lang/String;

    iget-wide v6, v3, Lcom/perm/kate/api/NewsList;->id:J

    long-to-int v3, v6

    invoke-direct {v4, v5, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1016
    :cond_0
    invoke-direct {p0, v1}, Lcom/perm/kate/NewsFragment;->getSelectedFilterPos(Ljava/util/ArrayList;)I

    move-result v2

    .line 1017
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lcom/perm/kate/NewsFragment$22;

    invoke-direct {v4, p0, v1}, Lcom/perm/kate/NewsFragment$22;-><init>(Lcom/perm/kate/NewsFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1023
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showWallPostFromNews(Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 736
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 737
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/WallMessageActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "news_id"

    .line 738
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "dont_refresh"

    const/4 v1, 0x1

    .line 739
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "ad"

    .line 740
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 741
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    if-eqz p2, :cond_0

    .line 743
    invoke-static {p3, p4, p5}, Lcom/perm/utils/AdEvents;->reportOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private storeFrom()V
    .locals 3

    .line 1177
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/NewsFragment;->from:Ljava/lang/String;

    const-string v2, "news_from"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method protected CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V
    .locals 17

    move-object/from16 v10, p0

    move-object/from16 v7, p1

    .line 626
    iget-object v5, v7, Lcom/perm/kate/NewsItemTag;->photo_owner_id:Ljava/lang/String;

    .line 627
    iget-object v6, v7, Lcom/perm/kate/NewsItemTag;->album_id:Ljava/lang/String;

    .line 628
    iget-object v3, v7, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 629
    iget-object v4, v7, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    .line 630
    iget-boolean v0, v7, Lcom/perm/kate/NewsItemTag;->is_graffiti:Z

    .line 631
    iget-object v1, v7, Lcom/perm/kate/NewsItemTag;->friends:Ljava/lang/String;

    .line 632
    iget-object v9, v7, Lcom/perm/kate/NewsItemTag;->friend_ids:Ljava/lang/String;

    .line 635
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 636
    iget-object v8, v7, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v11, "post"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v12, "ads"

    if-nez v8, :cond_0

    iget-object v8, v7, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 637
    :cond_0
    invoke-static {}, Lcom/perm/kate/NewsFragment;->clickOpensNews()Z

    move-result v8

    if-nez v8, :cond_1

    .line 638
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f0f041c

    invoke-virtual {v10, v13}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " ("

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v13, 0x7f0f0319

    invoke-virtual {v10, v13}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ")"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 639
    new-instance v13, Lcom/perm/kate/MenuItemDetails;

    const/16 v14, 0xb

    invoke-direct {v13, v8, v14}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    :cond_1
    iget-boolean v8, v7, Lcom/perm/kate/NewsItemTag;->comment_can_post:Z

    if-eqz v8, :cond_2

    .line 642
    new-instance v8, Lcom/perm/kate/MenuItemDetails;

    const v13, 0x7f0f022c

    const/4 v14, 0x2

    invoke-direct {v8, v13, v14}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    :cond_2
    new-instance v8, Lcom/perm/kate/MenuItemDetails;

    const v13, 0x7f0f05a2

    const/16 v14, 0x8

    invoke-direct {v8, v13, v14}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    new-instance v8, Lcom/perm/kate/MenuItemDetails;

    const v13, 0x7f0f05a3

    const/16 v14, 0x12

    invoke-direct {v8, v13, v14}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v8, ""

    if-nez v0, :cond_4

    if-eqz v6, :cond_4

    .line 646
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 647
    new-instance v13, Lcom/perm/kate/MenuItemDetails;

    const v14, 0x7f0f0234

    const/4 v15, 0x3

    invoke-direct {v13, v14, v15}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    :cond_4
    iget-object v13, v7, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    iget-object v13, v7, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 649
    :cond_5
    new-instance v13, Lcom/perm/kate/MenuItemDetails;

    const v14, 0x7f0f01d9

    const/4 v15, 0x7

    invoke-direct {v13, v14, v15}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    :cond_6
    iget-object v13, v7, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v14, "friend"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v13, ", "

    .line 651
    invoke-virtual {v1, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 652
    array-length v13, v1

    if-lez v13, :cond_7

    const/4 v13, 0x0

    .line 653
    :goto_0
    array-length v14, v1

    if-ge v13, v14, :cond_7

    .line 654
    new-instance v14, Lcom/perm/kate/MenuItemDetails;

    aget-object v15, v1, v13

    move-object/from16 v16, v1

    add-int/lit8 v1, v13, 0x64

    invoke-direct {v14, v15, v1}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v16

    goto :goto_0

    .line 657
    :cond_7
    iget-object v1, v7, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v7, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v13, "photo"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v7, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v7, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v13, "wall_photo"

    .line 658
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v7, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v13, "photo_tag"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 659
    :cond_8
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v13, 0x7f0f011b

    const/16 v14, 0x18

    invoke-direct {v1, v13, v14}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    :cond_9
    iget-object v1, v7, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    if-nez v0, :cond_a

    if-eqz v6, :cond_a

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, v7, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 661
    :cond_b
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f0212

    const/16 v8, 0xe

    invoke-direct {v0, v1, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    :cond_c
    iget-object v0, v7, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v7, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 664
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f01d7

    const/16 v8, 0x17

    invoke-direct {v0, v1, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    :cond_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 668
    :cond_f
    iget-object v0, v7, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 669
    new-instance v11, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v11, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 670
    invoke-static {v2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v12

    new-instance v13, Lcom/perm/kate/NewsFragment$13;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/perm/kate/NewsFragment$13;-><init>(Lcom/perm/kate/NewsFragment;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/NewsItemTag;ZLjava/lang/String;)V

    invoke-virtual {v11, v12, v13}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 723
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 724
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 725
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method Refresh(Z)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 199
    iput-boolean v1, v0, Lcom/perm/kate/NewsFragment;->manual:Z

    .line 200
    iget v1, v0, Lcom/perm/kate/NewsFragment;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 201
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v4, 0x0

    sget v1, Lcom/perm/kate/NewsFragment;->count:I

    int-to-long v5, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/perm/kate/NewsFragment;->max_photos:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/perm/kate/NewsFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-virtual/range {v3 .. v11}, Lcom/perm/kate/session/Session;->getRecommendedNews(Ljava/lang/Long;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 203
    :cond_0
    sget-object v12, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v13, 0x0

    sget v1, Lcom/perm/kate/NewsFragment;->count:I

    int-to-long v14, v1

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v1, v0, Lcom/perm/kate/NewsFragment;->source_ids:Ljava/lang/String;

    iget-object v2, v0, Lcom/perm/kate/NewsFragment;->filter:Ljava/lang/String;

    iget-object v3, v0, Lcom/perm/kate/NewsFragment;->max_photos:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/perm/kate/NewsFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v22

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    invoke-virtual/range {v12 .. v22}, Lcom/perm/kate/session/Session;->getNews(Ljava/lang/Long;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x3d

    const/16 v2, 0x1b58

    const v3, 0x7f0f0335

    .line 815
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public isRefreshNewsOnStartEnabled()Z
    .locals 3

    .line 998
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_refresh_news"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public jumpTop()V
    .locals 2

    .line 979
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 980
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 1203
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1204
    invoke-static {}, Lcom/perm/kate/MainActivity;->isHeaderScrollEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1206
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f090260

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 1210
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1211
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/FixedBottomBehavior;

    .line 1212
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1213
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090233

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/MiniPlayer;

    .line 1214
    invoke-virtual {p1, v0, v1}, Lcom/perm/kate/FixedBottomBehavior;->setLayout(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    .line 985
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p1, "group_id"

    const-wide/16 v0, 0x0

    .line 988
    invoke-virtual {p3, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    const-string v2, "repost_post_id"

    .line 989
    invoke-virtual {p3, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v2, "repost_post_owner_id"

    .line 990
    invoke-virtual {p3, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 992
    new-instance v3, Lcom/perm/utils/RepostHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Lcom/perm/kate/BaseActivity;

    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    invoke-direct {v3, p3, v0}, Lcom/perm/utils/RepostHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/utils/RepostHelper$RepostCallback;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/perm/utils/RepostHelper;->createRepostDialog(JJLjava/lang/Long;Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 86
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 87
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 88
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/NewsFragment;->account_id:J

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "com.perm.kate.post_cursor_position"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/NewsFragment;->scroll_to_pos:I

    :cond_1
    const/4 v0, 0x0

    .line 93
    sput-boolean v0, Lcom/perm/kate/NewsFragment;->redisplay_data:Z

    .line 94
    iput v0, p0, Lcom/perm/kate/NewsFragment;->state:I

    .line 95
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->restoreFrom()V

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/NewsFragment;->old_style_news:Z

    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/NewsCursorAdapter;->getCardStyleFlag(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/NewsFragment;->card_style_news:Z

    .line 99
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->getSelectedFilterId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/perm/kate/NewsFragment;->initFilterParams(I)V

    .line 102
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->fetchData()V

    if-nez p1, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->isRefreshNewsOnStartEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    invoke-virtual {p1}, Lcom/perm/kate/Online;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 111
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/perm/kate/NewsFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewsFragment$1;-><init>(Lcom/perm/kate/NewsFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x3

    .line 116
    iput p1, p0, Lcom/perm/kate/NewsFragment;->state:I

    .line 122
    :cond_2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/perm/kate/NewsFragment$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewsFragment$2;-><init>(Lcom/perm/kate/NewsFragment;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c00fd

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 132
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseFragment;->initSwipeRefreshLayout(Landroid/view/View;)V

    const p2, 0x7f090219

    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    .line 134
    iget-object p3, p0, Lcom/perm/kate/NewsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 135
    iget-object p2, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/perm/kate/NewsFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 136
    iget-object p2, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/perm/kate/NewsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 138
    invoke-static {}, Lcom/perm/kate/MainActivity;->isHeaderScrollEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 139
    iget-object p2, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 140
    :cond_0
    iget-boolean p2, p0, Lcom/perm/kate/NewsFragment;->card_style_news:Z

    iget-boolean p3, p0, Lcom/perm/kate/NewsFragment;->old_style_news:Z

    iget-object v1, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    invoke-static {p2, p3, v1}, Lcom/perm/kate/NewsFragment;->setupWideDivider(ZZLandroid/widget/ListView;)V

    .line 142
    iget-boolean p2, p0, Lcom/perm/kate/NewsFragment;->old_style_news:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/perm/kate/NewsFragment;->card_style_news:Z

    if-eqz p2, :cond_1

    .line 143
    iget-object p2, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->displayData()V

    const p2, 0x7f090233

    .line 148
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/perm/kate/MiniPlayer;

    if-eqz p2, :cond_2

    .line 150
    invoke-virtual {p2, v0}, Lcom/perm/kate/MiniPlayer;->setActive(Z)V

    :cond_2
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->notes:Lcom/perm/kate/NewsCursorAdapter;

    if-eqz v0, :cond_1

    .line 403
    invoke-virtual {v0}, Lcom/perm/kate/NewsCursorAdapter;->destroy()V

    .line 404
    :cond_1
    iput-object v1, p0, Lcom/perm/kate/NewsFragment;->notes:Lcom/perm/kate/NewsCursorAdapter;

    .line 405
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    .line 406
    iput-object v1, p0, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 821
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    .line 826
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 823
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->showSourcesDialog()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 466
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 467
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/NewsFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onRefreshButton()V
    .locals 1

    const/4 v0, 0x1

    .line 176
    invoke-virtual {p0, v0}, Lcom/perm/kate/NewsFragment;->refreshInThread(Z)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 472
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 473
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/NewsFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.perm.kate.intent.action.new_news"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 831
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStart()V

    .line 832
    sget-boolean v0, Lcom/perm/kate/NewsFragment;->redisplay_data:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 833
    sput-boolean v0, Lcom/perm/kate/NewsFragment;->redisplay_data:Z

    .line 834
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->getSelectedFilterId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/perm/kate/NewsFragment;->initFilterParams(I)V

    const/4 v0, 0x1

    .line 835
    invoke-virtual {p0, v0}, Lcom/perm/kate/NewsFragment;->refreshInThread(Z)V

    .line 836
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->notes:Lcom/perm/kate/NewsCursorAdapter;

    iget-object v1, p0, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1167
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStop()V

    .line 1168
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->storeFrom()V

    .line 1170
    invoke-static {}, Lcom/perm/kate/NewsFragment;->shouldDisplayNewPosts()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1171
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->saveScrollPos()V

    :cond_0
    return-void
.end method

.method refreshInThread(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 180
    iput v0, p0, Lcom/perm/kate/NewsFragment;->state:I

    .line 181
    sget v0, Lcom/perm/kate/NewsFragment;->default_count:I

    sput v0, Lcom/perm/kate/NewsFragment;->count:I

    .line 183
    new-instance v0, Lcom/perm/kate/NewsFragment$3;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/NewsFragment$3;-><init>(Lcom/perm/kate/NewsFragment;Z)V

    .line 189
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    if-eqz p1, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->hideSnackbar()V

    :cond_0
    return-void
.end method

.method requeryOnUiThread(Z)V
    .locals 2

    .line 327
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 329
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/NewsFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/NewsFragment$6;-><init>(Lcom/perm/kate/NewsFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
