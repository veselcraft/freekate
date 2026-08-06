.class public Lcom/perm/kate/NewsFragment;
.super Lcom/perm/kate/BaseFragment;
.source "NewsFragment.java"


# static fields
.field public static count:I

.field public static default_count:I

.field public static redisplay_data:Z


# instance fields
.field account_id:J

.field private add_callback:Lcom/perm/kate/session/Callback;

.field callback:Lcom/perm/kate/session/Callback;

.field callback_load_more:Lcom/perm/kate/session/Callback;

.field card_style_news:Z

.field cursor:Landroid/database/Cursor;

.field default_filter:Ljava/lang/String;

.field filter:Ljava/lang/String;

.field from:Ljava/lang/String;

.field private lv_posts_news_list:Landroid/widget/ListView;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field manual:Z

.field max_photos:Ljava/lang/Integer;

.field private newsLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/NewsList;",
            ">;"
        }
    .end annotation
.end field

.field private news_list_callback:Lcom/perm/kate/session/Callback;

.field notes:Lcom/perm/kate/NewsCursorAdapter;

.field old_style_news:Z

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field pauser:Lcom/perm/utils/ScrollPauser;

.field private repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field scroll_to_pos:I

.field source_ids:Ljava/lang/String;

.field private state:I

.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/perm/kate/NewsFragment;->redisplay_data:Z

    .line 209
    const/16 v0, 0xa

    sput v0, Lcom/perm/kate/NewsFragment;->default_count:I

    .line 210
    sget v0, Lcom/perm/kate/NewsFragment;->default_count:I

    sput v0, Lcom/perm/kate/NewsFragment;->count:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 62
    iput v0, p0, Lcom/perm/kate/NewsFragment;->state:I

    .line 68
    iput v0, p0, Lcom/perm/kate/NewsFragment;->scroll_to_pos:I

    .line 71
    new-instance v0, Lcom/perm/utils/ScrollPauser;

    invoke-direct {v0}, Lcom/perm/utils/ScrollPauser;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    .line 73
    iput-object v2, p0, Lcom/perm/kate/NewsFragment;->from:Ljava/lang/String;

    .line 74
    iput-object v2, p0, Lcom/perm/kate/NewsFragment;->source_ids:Ljava/lang/String;

    .line 75
    iput-boolean v1, p0, Lcom/perm/kate/NewsFragment;->card_style_news:Z

    .line 76
    iput-boolean v1, p0, Lcom/perm/kate/NewsFragment;->old_style_news:Z

    .line 79
    const-string v0, "post,photo,photo_tag,friend,note"

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->default_filter:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->default_filter:Ljava/lang/String;

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->filter:Ljava/lang/String;

    .line 82
    iput-object v2, p0, Lcom/perm/kate/NewsFragment;->max_photos:Ljava/lang/Integer;

    .line 84
    iput v1, p0, Lcom/perm/kate/NewsFragment;->type:I

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->newsLists:Ljava/util/ArrayList;

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/NewsFragment;->manual:Z

    .line 237
    new-instance v0, Lcom/perm/kate/NewsFragment$4;

    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/NewsFragment$4;-><init>(Lcom/perm/kate/NewsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 336
    iput-object v2, p0, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    .line 418
    new-instance v0, Lcom/perm/kate/NewsFragment$7;

    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

    .line 537
    new-instance v0, Lcom/perm/kate/NewsFragment$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewsFragment$11;-><init>(Lcom/perm/kate/NewsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 561
    new-instance v0, Lcom/perm/kate/NewsFragment$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewsFragment$12;-><init>(Lcom/perm/kate/NewsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 703
    new-instance v0, Lcom/perm/kate/NewsFragment$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewsFragment$14;-><init>(Lcom/perm/kate/NewsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    .line 927
    new-instance v0, Lcom/perm/kate/NewsFragment$21;

    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/NewsFragment$21;-><init>(Lcom/perm/kate/NewsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->add_callback:Lcom/perm/kate/session/Callback;

    .line 1098
    new-instance v0, Lcom/perm/kate/NewsFragment$24;

    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/NewsFragment$24;-><init>(Lcom/perm/kate/NewsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->news_list_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/NewsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewsFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->getNewsLists()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/NewsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewsFragment;

    .prologue
    .line 58
    iget v0, p0, Lcom/perm/kate/NewsFragment;->state:I

    return v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/NewsFragment;Ljava/lang/Long;Lcom/perm/kate/api/Group;Lcom/perm/kate/api/User;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewsFragment;
    .param p1, "x1"    # Ljava/lang/Long;
    .param p2, "x2"    # Lcom/perm/kate/api/Group;
    .param p3, "x3"    # Lcom/perm/kate/api/User;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/NewsFragment;->hidePost(Ljava/lang/Long;Lcom/perm/kate/api/Group;Lcom/perm/kate/api/User;)V

    return-void
.end method

.method static synthetic access$102(Lcom/perm/kate/NewsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/perm/kate/NewsFragment;->state:I

    return p1
.end method

.method static synthetic access$1100(Lcom/perm/kate/NewsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/perm/kate/NewsFragment;->getTypeFromPostType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/perm/kate/NewsFragment;Ljava/lang/Long;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewsFragment;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/perm/kate/NewsFragment;->hidePost(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/NewsFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewsFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->add_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/perm/kate/NewsFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/perm/kate/NewsFragment;->changeSource(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/NewsFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewsFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->news_list_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/perm/kate/NewsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewsFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/perm/kate/NewsFragment;->newsLists:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/perm/kate/NewsFragment;Lcom/perm/kate/api/Newsfeed;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewsFragment;
    .param p1, "x1"    # Lcom/perm/kate/api/Newsfeed;
    .param p2, "x2"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/NewsFragment;->displayNewPosts(Lcom/perm/kate/api/Newsfeed;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/NewsFragment;Lcom/perm/kate/api/Newsfeed;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewsFragment;
    .param p1, "x1"    # Lcom/perm/kate/api/Newsfeed;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/perm/kate/NewsFragment;->displaySnackBar(Lcom/perm/kate/api/Newsfeed;)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/NewsFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/perm/kate/NewsFragment;->lazyReport(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/NewsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewsFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->hideSnackbar()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/NewsFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewsFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/perm/kate/NewsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewsFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->loadMore()V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/NewsFragment;Ljava/lang/Long;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewsFragment;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/perm/kate/NewsFragment;->showWallPostFromNews(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/NewsFragment;Ljava/lang/String;JJJ)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewsFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # J
    .param p6, "x4"    # J

    .prologue
    .line 58
    invoke-direct/range {p0 .. p7}, Lcom/perm/kate/NewsFragment;->ignoreItem(Ljava/lang/String;JJJ)V

    return-void
.end method

.method private addBanInThread(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "gid"    # Ljava/lang/Long;

    .prologue
    .line 904
    new-instance v0, Lcom/perm/kate/NewsFragment$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/NewsFragment$20;-><init>(Lcom/perm/kate/NewsFragment;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 923
    invoke-virtual {v0}, Lcom/perm/kate/NewsFragment$20;->start()V

    .line 924
    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0704bb

    invoke-virtual {p0, v1}, Lcom/perm/kate/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 925
    return-void
.end method

.method private changeSource(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 989
    iget v0, p0, Lcom/perm/kate/NewsFragment;->type:I

    .line 990
    .local v0, "old_type":I
    invoke-direct {p0, p1}, Lcom/perm/kate/NewsFragment;->initFilterParams(I)V

    .line 991
    iget v1, p0, Lcom/perm/kate/NewsFragment;->type:I

    if-eq v1, v0, :cond_0

    .line 992
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->reFetchData()V

    .line 993
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/perm/kate/NewsFragment;->refreshInThread(Z)V

    .line 994
    invoke-direct {p0, p1}, Lcom/perm/kate/NewsFragment;->saveSelectedFilterId(I)V

    .line 995
    return-void
.end method

.method public static clickOpensNews()Z
    .locals 3

    .prologue
    .line 581
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "news_click_key_1"

    const-string v2, "0"

    .line 582
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 583
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 581
    return v0
.end method

.method private displayData()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 340
    :try_start_0
    new-instance v2, Lcom/perm/kate/NewsCursorAdapter;

    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/BaseActivity;

    iget-object v3, p0, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    invoke-direct {v2, v1, v3, p0}, Lcom/perm/kate/NewsCursorAdapter;-><init>(Lcom/perm/kate/BaseActivity;Landroid/database/Cursor;Landroid/support/v4/app/Fragment;)V

    iput-object v2, p0, Lcom/perm/kate/NewsFragment;->notes:Lcom/perm/kate/NewsCursorAdapter;

    .line 341
    iget-object v1, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/NewsFragment;->notes:Lcom/perm/kate/NewsCursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 342
    iget v1, p0, Lcom/perm/kate/NewsFragment;->scroll_to_pos:I

    if-eq v1, v4, :cond_0

    .line 343
    iget-object v1, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    iget v2, p0, Lcom/perm/kate/NewsFragment;->scroll_to_pos:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 344
    const/4 v1, -0x1

    iput v1, p0, Lcom/perm/kate/NewsFragment;->scroll_to_pos:I

    .line 347
    :cond_0
    invoke-static {}, Lcom/perm/kate/NewsFragment;->shouldDisplayNewPosts()Z

    move-result v1

    if-nez v1, :cond_1

    .line 348
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->restoreScrollPos()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :cond_1
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 351
    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 352
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private displayNewPosts(Lcom/perm/kate/api/Newsfeed;Z)V
    .locals 4
    .param p1, "ns"    # Lcom/perm/kate/api/Newsfeed;
    .param p2, "scroll_to_top"    # Z

    .prologue
    .line 266
    iget-object v0, p1, Lcom/perm/kate/api/Newsfeed;->new_from:Ljava/lang/String;

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->from:Ljava/lang/String;

    .line 267
    const-string v0, "NewsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/NewsFragment;->from:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/NewsFragment;->account_id:J

    iget v1, p0, Lcom/perm/kate/NewsFragment;->type:I

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/perm/kate/db/DataHelper;->deleteAndCreateNews(Lcom/perm/kate/api/Newsfeed;JI)V

    .line 270
    invoke-virtual {p0, p2}, Lcom/perm/kate/NewsFragment;->requeryOnUiThread(Z)V

    .line 272
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Lcom/perm/kate/KateWidgetMed;->refresh(Landroid/content/Context;)V

    .line 273
    return-void
.end method

.method private displaySnackBar(Lcom/perm/kate/api/Newsfeed;)V
    .locals 6
    .param p1, "ns"    # Lcom/perm/kate/api/Newsfeed;

    .prologue
    .line 276
    iget-object v2, p1, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, p0, Lcom/perm/kate/NewsFragment;->account_id:J

    iget v3, p0, Lcom/perm/kate/NewsFragment;->type:I

    invoke-virtual {v2, v4, v5, v3}, Lcom/perm/kate/db/DataHelper;->getLastNewsDate2(JI)J

    move-result-wide v0

    .line 283
    .local v0, "date":J
    iget-object v2, p1, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/NewsItem;

    iget-wide v2, v2, Lcom/perm/kate/api/NewsItem;->date:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/perm/kate/NewsFragment$5;

    invoke-direct {v3, p0, p1}, Lcom/perm/kate/NewsFragment$5;-><init>(Lcom/perm/kate/NewsFragment;Lcom/perm/kate/api/Newsfeed;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private fetchData()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    .line 357
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewsFragment;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 359
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 363
    .local v9, "prefs":Landroid/content/SharedPreferences;
    const v0, 0x7f070539

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 364
    .local v1, "show_posts":Z
    const v0, 0x7f070537

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 365
    .local v2, "show_photos":Z
    const v0, 0x7f070538

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 366
    .local v3, "show_photo_tags":Z
    const v0, 0x7f070535

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 367
    .local v4, "show_friends":Z
    const v0, 0x7f070536

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 373
    .local v5, "show_notes":Z
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->filter:Ljava/lang/String;

    const-string v6, "audio"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->filter:Ljava/lang/String;

    const-string v6, "video"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->filter:Ljava/lang/String;

    const-string v6, "wall_photo"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/perm/kate/NewsFragment;->type:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_2

    .line 374
    :cond_1
    const/4 v2, 0x1

    move v3, v2

    .local v3, "show_photo_tags":I
    move v5, v2

    .local v5, "show_notes":I
    move v4, v2

    .local v4, "show_friends":I
    move v1, v2

    .line 376
    .end local v1    # "show_posts":Z
    .end local v3    # "show_photo_tags":I
    .end local v4    # "show_friends":I
    .end local v5    # "show_notes":I
    :cond_2
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v6, p0, Lcom/perm/kate/NewsFragment;->account_id:J

    iget v8, p0, Lcom/perm/kate/NewsFragment;->type:I

    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/db/DataHelper;->fetchPostNews(ZZZZZJI)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    .line 377
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewsFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 378
    return-void
.end method

.method private getNewsLists()V
    .locals 2

    .prologue
    .line 1086
    new-instance v0, Lcom/perm/kate/NewsFragment$23;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewsFragment$23;-><init>(Lcom/perm/kate/NewsFragment;)V

    .line 1094
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1095
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1096
    return-void
.end method

.method private getSelectedFilterId()I
    .locals 3

    .prologue
    .line 1068
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/MenuItemDetails;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1072
    .local p1, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->getSelectedFilterId()I

    move-result v0

    .line 1073
    .local v0, "code":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1074
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/MenuItemDetails;

    iget v2, v2, Lcom/perm/kate/MenuItemDetails;->code:I

    if-ne v2, v0, :cond_0

    .line 1076
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 1073
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1076
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getTypeFromPostType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "post_type"    # Ljava/lang/String;

    .prologue
    .line 840
    const-string v0, "post"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 841
    const-string p1, "wall"

    .line 846
    .end local p1    # "post_type":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 842
    .restart local p1    # "post_type":Ljava/lang/String;
    :cond_1
    const-string v0, "wall_photo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 843
    const-string p1, "photo"

    goto :goto_0

    .line 844
    :cond_2
    const-string v0, "photo_tag"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    const-string p1, "tag"

    goto :goto_0
.end method

.method private hidePost(Ljava/lang/Long;)V
    .locals 5
    .param p1, "post_owner_id"    # Ljava/lang/Long;

    .prologue
    const/4 v4, 0x0

    .line 897
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 898
    invoke-direct {p0, p1, v4}, Lcom/perm/kate/NewsFragment;->addBanInThread(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 901
    :goto_0
    return-void

    .line 900
    :cond_0
    const-wide/16 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/perm/kate/NewsFragment;->addBanInThread(Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private hidePost(Ljava/lang/Long;Lcom/perm/kate/api/Group;Lcom/perm/kate/api/User;)V
    .locals 18
    .param p1, "post_owner_id"    # Ljava/lang/Long;
    .param p2, "copy_owner_group"    # Lcom/perm/kate/api/Group;
    .param p3, "copy_owner_user"    # Lcom/perm/kate/api/User;

    .prologue
    .line 850
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 851
    invoke-direct/range {p0 .. p1}, Lcom/perm/kate/NewsFragment;->hidePost(Ljava/lang/Long;)V

    .line 894
    :goto_0
    return-void

    .line 854
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 855
    .local v4, "sub_menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    const/4 v9, 0x0

    .line 856
    .local v9, "first_item":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v14, 0x0

    cmp-long v2, v2, v14

    if-lez v2, :cond_2

    .line 857
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v11

    .line 858
    .local v11, "u":Lcom/perm/kate/api/User;
    if-eqz v11, :cond_1

    .line 859
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v11, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v11, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 865
    .end local v11    # "u":Lcom/perm/kate/api/User;
    :cond_1
    :goto_1
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const/4 v3, 0x0

    invoke-direct {v2, v9, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    if-eqz p2, :cond_3

    .line 869
    const-wide/16 v2, -0x1

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/perm/kate/api/Group;->gid:J

    mul-long v6, v2, v14

    .line 870
    .local v6, "post_owner_id2":J
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    :goto_2
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0701b6

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v13

    .line 877
    invoke-static {v4}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v14

    new-instance v2, Lcom/perm/kate/NewsFragment$19;

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/perm/kate/NewsFragment$19;-><init>(Lcom/perm/kate/NewsFragment;Ljava/util/ArrayList;Ljava/lang/Long;J)V

    invoke-virtual {v13, v14, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v12

    .line 891
    .local v12, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v12}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v8

    .line 892
    .local v8, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 893
    invoke-virtual {v8}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 861
    .end local v6    # "post_owner_id2":J
    .end local v8    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v12    # "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_2
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const-wide/16 v14, -0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    mul-long v14, v14, v16

    invoke-virtual {v2, v14, v15}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v10

    .line 862
    .local v10, "g":Lcom/perm/kate/api/Group;
    if-eqz v10, :cond_1

    .line 863
    iget-object v9, v10, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    goto :goto_1

    .line 872
    .end local v10    # "g":Lcom/perm/kate/api/Group;
    :cond_3
    move-object/from16 v0, p3

    iget-wide v6, v0, Lcom/perm/kate/api/User;->uid:J

    .line 873
    .restart local v6    # "post_owner_id2":J
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private hideSnackbar()V
    .locals 3

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e02bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 320
    .local v0, "snackBar":Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private ignoreItem(Ljava/lang/String;JJJ)V
    .locals 12
    .param p1, "post_type"    # Ljava/lang/String;
    .param p2, "post_owner_id"    # J
    .param p4, "item_id"    # J
    .param p6, "_id"    # J

    .prologue
    .line 812
    new-instance v10, Lcom/perm/kate/NewsFragment$17;

    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-wide/from16 v0, p6

    invoke-direct {v10, p0, v2, v0, v1}, Lcom/perm/kate/NewsFragment$17;-><init>(Lcom/perm/kate/NewsFragment;Landroid/app/Activity;J)V

    .line 830
    .local v10, "ignore_item_callback":Lcom/perm/kate/session/Callback;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/perm/kate/NewsFragment;->showProgressBar(Z)V

    .line 831
    new-instance v3, Lcom/perm/kate/NewsFragment$18;

    move-object v4, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    invoke-direct/range {v3 .. v10}, Lcom/perm/kate/NewsFragment$18;-><init>(Lcom/perm/kate/NewsFragment;Ljava/lang/String;JJLcom/perm/kate/session/Callback;)V

    .line 836
    invoke-virtual {v3}, Lcom/perm/kate/NewsFragment$18;->start()V

    .line 837
    return-void
.end method

.method private initFilterParams(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 998
    packed-switch p1, :pswitch_data_0

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "list{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->source_ids:Ljava/lang/String;

    .line 1054
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->default_filter:Ljava/lang/String;

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->filter:Ljava/lang/String;

    .line 1055
    iput-object v2, p0, Lcom/perm/kate/NewsFragment;->max_photos:Ljava/lang/Integer;

    .line 1056
    iput v3, p0, Lcom/perm/kate/NewsFragment;->type:I

    .line 1059
    :goto_0
    return-void

    .line 1000
    :pswitch_0
    iput-object v2, p0, Lcom/perm/kate/NewsFragment;->source_ids:Ljava/lang/String;

    .line 1001
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->default_filter:Ljava/lang/String;

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->filter:Ljava/lang/String;

    .line 1002
    iput-object v2, p0, Lcom/perm/kate/NewsFragment;->max_photos:Ljava/lang/Integer;

    .line 1003
    iput v3, p0, Lcom/perm/kate/NewsFragment;->type:I

    goto :goto_0

    .line 1006
    :pswitch_1
    const-string v0, "friends"

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->source_ids:Ljava/lang/String;

    .line 1007
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->default_filter:Ljava/lang/String;

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->filter:Ljava/lang/String;

    .line 1008
    iput-object v2, p0, Lcom/perm/kate/NewsFragment;->max_photos:Ljava/lang/Integer;

    .line 1009
    iput v3, p0, Lcom/perm/kate/NewsFragment;->type:I

    goto :goto_0

    .line 1012
    :pswitch_2
    const-string v0, "groups,pages"

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->source_ids:Ljava/lang/String;

    .line 1013
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->default_filter:Ljava/lang/String;

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->filter:Ljava/lang/String;

    .line 1014
    iput-object v2, p0, Lcom/perm/kate/NewsFragment;->max_photos:Ljava/lang/Integer;

    .line 1015
    iput v3, p0, Lcom/perm/kate/NewsFragment;->type:I

    goto :goto_0

    .line 1019
    :pswitch_3
    const-string v0, "friends,following"

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->source_ids:Ljava/lang/String;

    .line 1020
    const-string v0, "photo,photo_tag,wall_photo"

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->filter:Ljava/lang/String;

    .line 1021
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->max_photos:Ljava/lang/Integer;

    .line 1022
    iput v3, p0, Lcom/perm/kate/NewsFragment;->type:I

    goto :goto_0

    .line 1026
    :pswitch_4
    iput-object v2, p0, Lcom/perm/kate/NewsFragment;->source_ids:Ljava/lang/String;

    .line 1027
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->default_filter:Ljava/lang/String;

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->filter:Ljava/lang/String;

    .line 1028
    iput-object v2, p0, Lcom/perm/kate/NewsFragment;->max_photos:Ljava/lang/Integer;

    .line 1029
    const/4 v0, 0x2

    iput v0, p0, Lcom/perm/kate/NewsFragment;->type:I

    goto :goto_0

    .line 1035
    :pswitch_5
    const-string v0, "friends,following"

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->source_ids:Ljava/lang/String;

    .line 1037
    const-string v0, "audio"

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->filter:Ljava/lang/String;

    .line 1038
    iput-object v2, p0, Lcom/perm/kate/NewsFragment;->max_photos:Ljava/lang/Integer;

    .line 1043
    iput v3, p0, Lcom/perm/kate/NewsFragment;->type:I

    goto :goto_0

    .line 1047
    :pswitch_6
    iput-object v2, p0, Lcom/perm/kate/NewsFragment;->source_ids:Ljava/lang/String;

    .line 1048
    const-string v0, "video"

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->filter:Ljava/lang/String;

    .line 1049
    iput-object v2, p0, Lcom/perm/kate/NewsFragment;->max_photos:Ljava/lang/Integer;

    .line 1050
    iput v3, p0, Lcom/perm/kate/NewsFragment;->type:I

    goto :goto_0

    .line 998
    nop

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
    .locals 8
    .param p1, "event_name"    # Ljava/lang/String;

    .prologue
    .line 1134
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1135
    .local v2, "time":J
    const-wide/16 v4, 0x3e8

    rem-long v4, v2, v4

    const-wide/16 v6, 0x3e7

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 1142
    .end local v2    # "time":J
    :goto_0
    return-void

    .line 1137
    .restart local v2    # "time":J
    :cond_0
    invoke-static {p1}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1138
    .end local v2    # "time":J
    :catch_0
    move-exception v0

    .line 1139
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1140
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private loadMore()V
    .locals 3

    .prologue
    .line 484
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->from:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    const-string v0, "NewsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadMore canceled because from = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/NewsFragment;->from:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Refresh enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->isRefreshNewsOnStartEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const/4 v0, 0x3

    iput v0, p0, Lcom/perm/kate/NewsFragment;->state:I

    .line 487
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewsFragment;->showProgressBar(Z)V

    .line 502
    :goto_0
    return-void

    .line 491
    :cond_0
    new-instance v0, Lcom/perm/kate/NewsFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewsFragment$8;-><init>(Lcom/perm/kate/NewsFragment;)V

    .line 501
    invoke-virtual {v0}, Lcom/perm/kate/NewsFragment$8;->start()V

    goto :goto_0
.end method

.method private reFetchData()V
    .locals 2

    .prologue
    .line 1080
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->fetchData()V

    .line 1081
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->notes:Lcom/perm/kate/NewsCursorAdapter;

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->notes:Lcom/perm/kate/NewsCursorAdapter;

    iget-object v1, p0, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewsCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1083
    :cond_0
    return-void
.end method

.method private restoreFrom()V
    .locals 3

    .prologue
    .line 1124
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "news_from"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/NewsFragment;->from:Ljava/lang/String;

    .line 1125
    return-void
.end method

.method private restoreScrollPos()V
    .locals 6

    .prologue
    .line 398
    :try_start_0
    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "news_pos"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 399
    .local v1, "pos":I
    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "news_offset"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 400
    .local v0, "offset":I
    iget-object v3, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    invoke-virtual {v3, v1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    .end local v0    # "offset":I
    .end local v1    # "pos":I
    :goto_0
    return-void

    .line 401
    :catch_0
    move-exception v2

    .line 402
    .local v2, "th":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 403
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private saveScrollPos()V
    .locals 5

    .prologue
    .line 382
    :try_start_0
    iget-object v3, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 383
    .local v1, "pos":I
    const/4 v0, 0x0

    .line 384
    .local v0, "offset":I
    iget-object v3, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 385
    iget-object v3, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    .line 386
    :cond_0
    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "news_pos"

    .line 387
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "news_offset"

    .line 388
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 389
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .end local v0    # "offset":I
    .end local v1    # "pos":I
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v2

    .line 391
    .local v2, "th":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 392
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private saveSelectedFilterId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1062
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "news_filter"

    .line 1063
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1064
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1065
    return-void
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
    .line 734
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 735
    .local v4, "owner_id":Ljava/lang/Long;
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 737
    .local v3, "post_id":Ljava/lang/Long;
    new-instance v1, Lcom/perm/kate/NewsFragment$15;

    move-object v2, p3

    move v5, p2

    move-wide/from16 v6, p5

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/perm/kate/NewsFragment$15;-><init>(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;ZJLandroid/app/Activity;Landroid/database/Cursor;)V

    .line 769
    .local v1, "callback_like":Lcom/perm/kate/session/Callback;
    invoke-static {p2, v4, v3, v1, p3}, Lcom/perm/kate/NewsFragment;->setLikeInternal(ZLjava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 770
    return-void
.end method

.method public static setLikeInternal(ZLjava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p0, "like"    # Z
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "post_id"    # Ljava/lang/Long;
    .param p3, "callback_like"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 774
    new-instance v0, Lcom/perm/kate/NewsFragment$16;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/NewsFragment$16;-><init>(ZLjava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 782
    invoke-virtual {v0}, Lcom/perm/kate/NewsFragment$16;->start()V

    .line 783
    return-void
.end method

.method public static setupWideDivider(ZZLandroid/widget/ListView;)V
    .locals 4
    .param p0, "card_style_news"    # Z
    .param p1, "old_style_news"    # Z
    .param p2, "list"    # Landroid/widget/ListView;

    .prologue
    .line 163
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lcom/perm/kate/BaseActivity;->Theme:I

    const v2, 0x7f0a00c6

    if-eq v1, v2, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    sget v1, Lcom/perm/kate/BaseActivity;->Theme:I

    const v2, 0x7f0a00cc

    if-eq v1, v2, :cond_0

    .line 171
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f020067

    .line 172
    .local v0, "res":I
    :goto_1
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 173
    const-wide/high16 v2, 0x402a000000000000L    # 13.0

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    goto :goto_0

    .line 171
    .end local v0    # "res":I
    :cond_2
    const v0, 0x7f020068

    goto :goto_1
.end method

.method static shouldDisplayNewPosts()Z
    .locals 3

    .prologue
    .line 1128
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
    .param p0, "postId"    # Ljava/lang/String;
    .param p1, "ownerId"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 719
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/perm/kate/NewsFragment;->showLikes(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;)V

    .line 720
    return-void
.end method

.method public static showLikes(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;)V
    .locals 4
    .param p0, "postId"    # Ljava/lang/String;
    .param p1, "ownerId"    # Ljava/lang/String;
    .param p2, "is_copies"    # Z
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 723
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 724
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/LikesActivity;

    invoke-virtual {v0, p3, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 725
    const-string v1, "com.perm.kate.item_id"

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 726
    const-string v1, "com.perm.kate.owner_id"

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 727
    const-string v1, "com.perm.kate.item_type"

    const-string v2, "post"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 728
    const-string v1, "com.perm.kate.is_copies"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 729
    invoke-virtual {p3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 730
    return-void
.end method

.method private showSourcesDialog()V
    .locals 10

    .prologue
    .line 964
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 965
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v4, 0x7f070316

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 966
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 968
    .local v1, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v4, Lcom/perm/kate/MenuItemDetails;

    const v5, 0x7f07002d

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 969
    new-instance v4, Lcom/perm/kate/MenuItemDetails;

    const v5, 0x7f0701d4

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 970
    new-instance v4, Lcom/perm/kate/MenuItemDetails;

    const v5, 0x7f070074

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    new-instance v4, Lcom/perm/kate/MenuItemDetails;

    const v5, 0x7f07042b

    const/4 v6, -0x3

    invoke-direct {v4, v5, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    new-instance v4, Lcom/perm/kate/MenuItemDetails;

    const v5, 0x7f0703a3

    const/4 v6, -0x4

    invoke-direct {v4, v5, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 973
    new-instance v4, Lcom/perm/kate/MenuItemDetails;

    const v5, 0x7f070136

    const/4 v6, -0x5

    invoke-direct {v4, v5, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    new-instance v4, Lcom/perm/kate/MenuItemDetails;

    const v5, 0x7f07013a

    const/4 v6, -0x6

    invoke-direct {v4, v5, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    iget-object v4, p0, Lcom/perm/kate/NewsFragment;->newsLists:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 976
    iget-object v4, p0, Lcom/perm/kate/NewsFragment;->newsLists:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/NewsList;

    .line 977
    .local v2, "nl":Lcom/perm/kate/api/NewsList;
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    iget-object v6, v2, Lcom/perm/kate/api/NewsList;->title:Ljava/lang/String;

    iget-wide v8, v2, Lcom/perm/kate/api/NewsList;->id:J

    long-to-int v7, v8

    invoke-direct {v5, v6, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 978
    .end local v2    # "nl":Lcom/perm/kate/api/NewsList;
    :cond_0
    invoke-direct {p0, v1}, Lcom/perm/kate/NewsFragment;->getSelectedFilterPos(Ljava/util/ArrayList;)I

    move-result v3

    .line 979
    .local v3, "pos":I
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/NewsFragment$22;

    invoke-direct {v5, p0, v1}, Lcom/perm/kate/NewsFragment$22;-><init>(Lcom/perm/kate/NewsFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v4, v3, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 985
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 986
    return-void
.end method

.method private showWallPostFromNews(Ljava/lang/Long;)V
    .locals 3
    .param p1, "news_id"    # Ljava/lang/Long;

    .prologue
    .line 711
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 712
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/WallMessageActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 713
    const-string v1, "news_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 714
    const-string v1, "dont_refresh"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 715
    invoke-virtual {p0, v0}, Lcom/perm/kate/NewsFragment;->startActivity(Landroid/content/Intent;)V

    .line 716
    return-void
.end method

.method private storeFrom()V
    .locals 3

    .prologue
    .line 1120
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "news_from"

    iget-object v2, p0, Lcom/perm/kate/NewsFragment;->from:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1121
    return-void
.end method


# virtual methods
.method protected CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V
    .locals 21
    .param p1, "tag"    # Lcom/perm/kate/NewsItemTag;

    .prologue
    .line 601
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/perm/kate/NewsItemTag;->photo_owner_id:Ljava/lang/String;

    .line 602
    .local v7, "photo_owner_id":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/perm/kate/NewsItemTag;->album_id:Ljava/lang/String;

    .line 603
    .local v8, "album_id":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 604
    .local v5, "post_id":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    .line 605
    .local v6, "post_owner_id":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/perm/kate/NewsItemTag;->is_graffiti:Z

    move/from16 v16, v0

    .line 606
    .local v16, "is_graffiti":Z
    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/perm/kate/NewsItemTag;->i_like:Z

    .line 607
    .local v15, "i_like":Z
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/perm/kate/NewsItemTag;->friends:Ljava/lang/String;

    .line 608
    .local v12, "friends":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/perm/kate/NewsItemTag;->friend_ids:Ljava/lang/String;

    .line 611
    .local v10, "friend_ids":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .local v4, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v3, "post"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 613
    invoke-static {}, Lcom/perm/kate/NewsFragment;->clickOpensNews()Z

    move-result v2

    if-nez v2, :cond_0

    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0703a1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/perm/kate/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0702bd

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/perm/kate/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 615
    .local v17, "open_title":Ljava/lang/String;
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const/16 v3, 0xb

    move-object/from16 v0, v17

    invoke-direct {v2, v0, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    .end local v17    # "open_title":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/perm/kate/NewsItemTag;->comment_can_post:Z

    if-eqz v2, :cond_1

    .line 618
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0701d0

    const/4 v9, 0x2

    invoke-direct {v2, v3, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    :cond_1
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f070518

    const/16 v9, 0x8

    invoke-direct {v2, v3, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f070519

    const/16 v9, 0x12

    invoke-direct {v2, v3, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    :cond_2
    if-nez v16, :cond_3

    if-eqz v8, :cond_3

    const-string v2, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 623
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0701d8

    const/4 v9, 0x3

    invoke-direct {v2, v3, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v3, "post"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 625
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f070171

    const/4 v9, 0x7

    invoke-direct {v2, v3, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    :cond_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v3, "friend"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 627
    const-string v2, ", "

    invoke-virtual {v12, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 628
    .local v13, "frnds":[Ljava/lang/String;
    if-eqz v13, :cond_5

    array-length v2, v13

    if-lez v2, :cond_5

    .line 629
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    array-length v2, v13

    if-ge v14, v2, :cond_5

    .line 630
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    aget-object v3, v13, v14

    add-int/lit8 v9, v14, 0x64

    invoke-direct {v2, v3, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 633
    .end local v13    # "frnds":[Ljava/lang/String;
    .end local v14    # "i":I
    :cond_5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v3, "post"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v3, "photo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v3, "wall_photo"

    .line 634
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v3, "photo_tag"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 635
    :cond_6
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0700cf

    const/16 v9, 0x18

    invoke-direct {v2, v3, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    :cond_7
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v3, "post"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    if-nez v16, :cond_9

    if-eqz v8, :cond_9

    const-string v2, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 637
    :cond_8
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0701b6

    const/16 v9, 0xe

    invoke-direct {v2, v3, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    :cond_9
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v3, "post"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 640
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f07016f

    const/16 v9, 0x17

    invoke-direct {v2, v3, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_b

    .line 701
    :goto_1
    return-void

    .line 644
    :cond_b
    new-instance v19, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 645
    invoke-static {v4}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v20

    new-instance v2, Lcom/perm/kate/NewsFragment$13;

    move-object/from16 v3, p0

    move-object/from16 v9, p1

    invoke-direct/range {v2 .. v10}, Lcom/perm/kate/NewsFragment$13;-><init>(Lcom/perm/kate/NewsFragment;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/NewsItemTag;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v18

    .line 698
    .local v18, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v11

    .line 699
    .local v11, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 700
    invoke-virtual {v11}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_1
.end method

.method Refresh(Z)V
    .locals 11
    .param p1, "manual"    # Z

    .prologue
    const/4 v1, 0x0

    .line 202
    iput-boolean p1, p0, Lcom/perm/kate/NewsFragment;->manual:Z

    .line 203
    iget v0, p0, Lcom/perm/kate/NewsFragment;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 204
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    sget v2, Lcom/perm/kate/NewsFragment;->count:I

    int-to-long v2, v2

    iget-object v6, p0, Lcom/perm/kate/NewsFragment;->max_photos:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/perm/kate/NewsFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/session/Session;->getRecommendedNews(Ljava/lang/Long;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 207
    :goto_0
    return-void

    .line 206
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    sget v2, Lcom/perm/kate/NewsFragment;->count:I

    int-to-long v2, v2

    iget-object v6, p0, Lcom/perm/kate/NewsFragment;->source_ids:Ljava/lang/String;

    iget-object v7, p0, Lcom/perm/kate/NewsFragment;->filter:Ljava/lang/String;

    iget-object v8, p0, Lcom/perm/kate/NewsFragment;->max_photos:Ljava/lang/Integer;

    iget-object v9, p0, Lcom/perm/kate/NewsFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v10}, Lcom/perm/kate/session/Session;->getNews(Ljava/lang/Long;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 787
    const/4 v0, 0x0

    const/16 v1, 0x3d

    const/16 v2, 0x1b58

    const v3, 0x7f0702d8

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 788
    const/4 v0, 0x1

    return v0
.end method

.method public isRefreshNewsOnStartEnabled()Z
    .locals 3

    .prologue
    .line 960
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

    .prologue
    .line 942
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 944
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1146
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1147
    invoke-static {}, Lcom/perm/kate/MainActivity;->isHeaderScrollEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1158
    :cond_0
    :goto_0
    return-void

    .line 1149
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0e020b

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1151
    .local v2, "pager":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 1153
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1154
    .local v1, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/FixedBottomBehavior;

    .line 1155
    .local v0, "behavior":Lcom/perm/kate/FixedBottomBehavior;
    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0e02bf

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1156
    .local v4, "snackBar":Landroid/view/View;
    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0e02be

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/MiniPlayer;

    .line 1157
    .local v3, "player":Lcom/perm/kate/MiniPlayer;
    invoke-virtual {v0, v4, v3}, Lcom/perm/kate/FixedBottomBehavior;->setLayout(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v6, 0x0

    .line 948
    invoke-super {p0, p1, p2, p3}, Lcom/perm/kate/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 949
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 950
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 951
    const-string v0, "group_id"

    invoke-virtual {p3, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 952
    .local v8, "group_id":J
    const-string v0, "repost_post_id"

    invoke-virtual {p3, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 953
    .local v2, "repost_post_id":J
    const-string v0, "repost_post_owner_id"

    invoke-virtual {p3, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 954
    .local v4, "repost_post_owner_id":J
    new-instance v1, Lcom/perm/utils/RepostHelper;

    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseActivity;

    iget-object v6, p0, Lcom/perm/kate/NewsFragment;->repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    invoke-direct {v1, v0, v6}, Lcom/perm/utils/RepostHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/utils/RepostHelper$RepostCallback;)V

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/perm/utils/RepostHelper;->createRepostDialog(JJLjava/lang/Long;)V

    .line 957
    .end local v2    # "repost_post_id":J
    .end local v4    # "repost_post_owner_id":J
    .end local v8    # "group_id":J
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewsFragment;->setHasOptionsMenu(Z)V

    .line 92
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 94
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/NewsFragment;->account_id:J

    .line 95
    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.post_cursor_position"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/NewsFragment;->scroll_to_pos:I

    .line 97
    :cond_1
    sput-boolean v3, Lcom/perm/kate/NewsFragment;->redisplay_data:Z

    .line 98
    iput v3, p0, Lcom/perm/kate/NewsFragment;->state:I

    .line 99
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->restoreFrom()V

    .line 100
    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/NewsFragment;->old_style_news:Z

    .line 101
    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/NewsCursorAdapter;->getCardStyleFlag(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/NewsFragment;->card_style_news:Z

    .line 103
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->getSelectedFilterId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/perm/kate/NewsFragment;->initFilterParams(I)V

    .line 106
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->fetchData()V

    .line 113
    if-nez p1, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->isRefreshNewsOnStartEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/perm/kate/NewsFragment$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/NewsFragment$1;-><init>(Lcom/perm/kate/NewsFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    const/4 v0, 0x3

    iput v0, p0, Lcom/perm/kate/NewsFragment;->state:I

    .line 126
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/perm/kate/NewsFragment$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/NewsFragment$2;-><init>(Lcom/perm/kate/NewsFragment;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 135
    const v2, 0x7f0300e2

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 136
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/perm/kate/NewsFragment;->initSwipeRefreshLayout(Landroid/view/View;)V

    .line 137
    const v2, 0x7f0e0265

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    .line 138
    iget-object v2, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/perm/kate/NewsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 139
    iget-object v2, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/perm/kate/NewsFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 140
    iget-object v2, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/perm/kate/NewsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 142
    invoke-static {}, Lcom/perm/kate/MainActivity;->isHeaderScrollEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 144
    :cond_0
    iget-boolean v2, p0, Lcom/perm/kate/NewsFragment;->card_style_news:Z

    iget-boolean v3, p0, Lcom/perm/kate/NewsFragment;->old_style_news:Z

    iget-object v4, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    invoke-static {v2, v3, v4}, Lcom/perm/kate/NewsFragment;->setupWideDivider(ZZLandroid/widget/ListView;)V

    .line 146
    iget-boolean v2, p0, Lcom/perm/kate/NewsFragment;->old_style_news:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/perm/kate/NewsFragment;->card_style_news:Z

    if-eqz v2, :cond_1

    .line 147
    iget-object v2, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 149
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->displayData()V

    .line 152
    const v2, 0x7f0e02be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MiniPlayer;

    .line 153
    .local v0, "player":Lcom/perm/kate/MiniPlayer;
    if-eqz v0, :cond_2

    .line 154
    invoke-virtual {v0, v5}, Lcom/perm/kate/MiniPlayer;->setActive(Z)V

    .line 156
    :cond_2
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 409
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 410
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->notes:Lcom/perm/kate/NewsCursorAdapter;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->notes:Lcom/perm/kate/NewsCursorAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/NewsCursorAdapter;->destroy()V

    .line 412
    :cond_0
    iput-object v1, p0, Lcom/perm/kate/NewsFragment;->notes:Lcom/perm/kate/NewsCursorAdapter;

    .line 413
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    .line 414
    iput-object v1, p0, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    .line 415
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 793
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 798
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 795
    :pswitch_0
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->showSourcesDialog()V

    .line 796
    const/4 v0, 0x1

    goto :goto_0

    .line 793
    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 468
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onPause()V

    .line 469
    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/NewsFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 470
    return-void
.end method

.method protected onRefreshButton()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewsFragment;->refreshInThread(Z)V

    .line 180
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 474
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onResume()V

    .line 475
    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/NewsFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.perm.kate.intent.action.new_news"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 476
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 803
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStart()V

    .line 804
    sget-boolean v0, Lcom/perm/kate/NewsFragment;->redisplay_data:Z

    if-eqz v0, :cond_0

    .line 805
    const/4 v0, 0x0

    sput-boolean v0, Lcom/perm/kate/NewsFragment;->redisplay_data:Z

    .line 806
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->fetchData()V

    .line 807
    iget-object v0, p0, Lcom/perm/kate/NewsFragment;->notes:Lcom/perm/kate/NewsCursorAdapter;

    iget-object v1, p0, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewsCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 809
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1110
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStop()V

    .line 1111
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->storeFrom()V

    .line 1113
    invoke-static {}, Lcom/perm/kate/NewsFragment;->shouldDisplayNewPosts()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1114
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->saveScrollPos()V

    .line 1115
    :cond_0
    return-void
.end method

.method refreshInThread(Z)V
    .locals 1
    .param p1, "manual"    # Z

    .prologue
    .line 183
    const/4 v0, 0x1

    iput v0, p0, Lcom/perm/kate/NewsFragment;->state:I

    .line 184
    sget v0, Lcom/perm/kate/NewsFragment;->default_count:I

    sput v0, Lcom/perm/kate/NewsFragment;->count:I

    .line 186
    new-instance v0, Lcom/perm/kate/NewsFragment$3;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/NewsFragment$3;-><init>(Lcom/perm/kate/NewsFragment;Z)V

    .line 192
    invoke-virtual {v0}, Lcom/perm/kate/NewsFragment$3;->start()V

    .line 193
    if-eqz p1, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/perm/kate/NewsFragment;->hideSnackbar()V

    .line 195
    :cond_0
    return-void
.end method

.method requeryOnUiThread(Z)V
    .locals 2
    .param p1, "scroll_to_top"    # Z

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 334
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/NewsFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/NewsFragment$6;-><init>(Lcom/perm/kate/NewsFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
