.class public Lcom/perm/kate/FavePostsFragment;
.super Lcom/perm/kate/BaseFragment;
.source "FavePostsFragment.java"


# instance fields
.field private account_id:J

.field private callback_load_more:Lcom/perm/kate/session/Callback;

.field card_style_news:Z

.field private cursor:Landroid/database/Cursor;

.field is_fave:Z

.field private lv_posts_list:Landroid/widget/ListView;

.field offset:I

.field old_style_news:Z

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field pauser:Lcom/perm/utils/ScrollPauser;

.field private post_page_size:I

.field posts_adapter:Lcom/perm/kate/FavePostsFragment$WallMessageListAdapter;

.field private posts_callback:Lcom/perm/kate/session/Callback;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private state:I


# direct methods
.method public static synthetic $r8$lambda$IyDPeZbXywy-XBTfPjJrzzX3MfU(Lcom/perm/kate/FavePostsFragment;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/perm/kate/FavePostsFragment;->lambda$removeFromFaves$0(Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    const/16 v0, 0xa

    .line 31
    iput v0, p0, Lcom/perm/kate/FavePostsFragment;->post_page_size:I

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/perm/kate/FavePostsFragment;->state:I

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/perm/kate/FavePostsFragment;->offset:I

    .line 39
    iput-boolean v0, p0, Lcom/perm/kate/FavePostsFragment;->card_style_news:Z

    .line 40
    iput-boolean v0, p0, Lcom/perm/kate/FavePostsFragment;->old_style_news:Z

    .line 41
    iput-boolean v0, p0, Lcom/perm/kate/FavePostsFragment;->is_fave:Z

    .line 43
    new-instance v0, Lcom/perm/utils/ScrollPauser;

    invoke-direct {v0}, Lcom/perm/utils/ScrollPauser;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/FavePostsFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    .line 115
    new-instance v0, Lcom/perm/kate/FavePostsFragment$2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FavePostsFragment$2;-><init>(Lcom/perm/kate/FavePostsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FavePostsFragment;->posts_callback:Lcom/perm/kate/session/Callback;

    .line 159
    new-instance v0, Lcom/perm/kate/FavePostsFragment$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/FavePostsFragment$3;-><init>(Lcom/perm/kate/FavePostsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FavePostsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 174
    new-instance v0, Lcom/perm/kate/FavePostsFragment$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/FavePostsFragment$4;-><init>(Lcom/perm/kate/FavePostsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FavePostsFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 292
    new-instance v0, Lcom/perm/kate/FavePostsFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/FavePostsFragment$8;-><init>(Lcom/perm/kate/FavePostsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FavePostsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 326
    new-instance v0, Lcom/perm/kate/FavePostsFragment$10;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FavePostsFragment$10;-><init>(Lcom/perm/kate/FavePostsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FavePostsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/FavePostsFragment;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/perm/kate/FavePostsFragment;->post_page_size:I

    return p0
.end method

.method static synthetic access$002(Lcom/perm/kate/FavePostsFragment;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/perm/kate/FavePostsFragment;->post_page_size:I

    return p1
.end method

.method static synthetic access$028(Lcom/perm/kate/FavePostsFragment;I)I
    .locals 1

    .line 25
    iget v0, p0, Lcom/perm/kate/FavePostsFragment;->post_page_size:I

    mul-int v0, v0, p1

    iput v0, p0, Lcom/perm/kate/FavePostsFragment;->post_page_size:I

    return v0
.end method

.method static synthetic access$100(Lcom/perm/kate/FavePostsFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/FavePostsFragment;->posts_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/FavePostsFragment;)J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/perm/kate/FavePostsFragment;->account_id:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/perm/kate/FavePostsFragment;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/perm/kate/FavePostsFragment;->state:I

    return p0
.end method

.method static synthetic access$302(Lcom/perm/kate/FavePostsFragment;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/perm/kate/FavePostsFragment;->state:I

    return p1
.end method

.method static synthetic access$400(Lcom/perm/kate/FavePostsFragment;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/perm/kate/FavePostsFragment;->loadMore()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/FavePostsFragment;)Landroid/database/Cursor;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/FavePostsFragment;->cursor:Landroid/database/Cursor;

    return-object p0
.end method

.method static synthetic access$600(Lcom/perm/kate/FavePostsFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/FavePostsFragment;->removeFromFaves(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/FavePostsFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/FavePostsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method private displayData()V
    .locals 7

    .line 86
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment;->posts_adapter:Lcom/perm/kate/FavePostsFragment$WallMessageListAdapter;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/perm/kate/WallMessageListAdapter;->destroy()V

    .line 88
    :cond_0
    new-instance v0, Lcom/perm/kate/FavePostsFragment$WallMessageListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/perm/kate/BaseActivity;

    iget-object v3, p0, Lcom/perm/kate/FavePostsFragment;->cursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    const/16 v6, 0xf

    move-object v1, v0

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/perm/kate/FavePostsFragment$WallMessageListAdapter;-><init>(Lcom/perm/kate/BaseActivity;Landroid/database/Cursor;Landroidx/fragment/app/Fragment;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/perm/kate/FavePostsFragment;->posts_adapter:Lcom/perm/kate/FavePostsFragment$WallMessageListAdapter;

    .line 89
    iget-object v1, p0, Lcom/perm/kate/FavePostsFragment;->lv_posts_list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private fetchData()V
    .locals 6

    .line 93
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 94
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v3, p0, Lcom/perm/kate/FavePostsFragment;->account_id:J

    iget-boolean v5, p0, Lcom/perm/kate/FavePostsFragment;->is_fave:Z

    invoke-virtual {v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchFavePosts(JZ)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/FavePostsFragment;->cursor:Landroid/database/Cursor;

    const-string v3, "fpf_fetchFavePosts"

    .line 95
    invoke-static {v0, v1, v3, v2}, Lcom/perm/kate/Helper;->reportDbReadDuration(JLjava/lang/String;Landroid/database/Cursor;)V

    .line 96
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->startManagingCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private synthetic lambda$removeFromFaves$0(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 6

    .line 265
    new-instance v4, Lcom/perm/kate/FavePostsFragment$6;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v4, p0, v0, p1, p2}, Lcom/perm/kate/FavePostsFragment$6;-><init>(Lcom/perm/kate/FavePostsFragment;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;)V

    const/4 v0, 0x1

    .line 275
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 276
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->faveRemovePost(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 277
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method private loadMore()V
    .locals 1

    .line 315
    new-instance v0, Lcom/perm/kate/FavePostsFragment$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/FavePostsFragment$9;-><init>(Lcom/perm/kate/FavePostsFragment;)V

    .line 323
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private refreshInThread()V
    .locals 2

    const/4 v0, 0x1

    .line 100
    iput v0, p0, Lcom/perm/kate/FavePostsFragment;->state:I

    const/16 v1, 0xa

    .line 101
    iput v1, p0, Lcom/perm/kate/FavePostsFragment;->post_page_size:I

    .line 102
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 103
    new-instance v0, Lcom/perm/kate/FavePostsFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/FavePostsFragment$1;-><init>(Lcom/perm/kate/FavePostsFragment;)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private removeFromFaves(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 262
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 263
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 264
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/FavePostsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/perm/kate/FavePostsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/FavePostsFragment;Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 278
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V
    .locals 10

    .line 197
    :try_start_0
    iget-object v3, p1, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 198
    iget-object v4, p1, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    .line 200
    iget-boolean v0, p1, Lcom/perm/kate/NewsItemTag;->i_like:Z

    .line 201
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 202
    invoke-static {}, Lcom/perm/kate/NewsFragment;->clickOpensNews()Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0f041c

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f0f0319

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const/16 v6, 0xb

    invoke-direct {v5, v1, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_0
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v5, 0x7f0f022e

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v5, 0x7f0f022c

    const/4 v7, 0x2

    invoke-direct {v1, v5, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_1

    .line 209
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f012a

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    :cond_1
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f0129

    const/4 v5, 0x4

    invoke-direct {v0, v1, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :goto_0
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f05a2

    const/16 v5, 0x8

    invoke-direct {v0, v1, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f00b2

    const/4 v5, 0x6

    invoke-direct {v0, v1, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f029b

    const/16 v5, 0xc

    invoke-direct {v0, v1, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v7, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v7, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 216
    invoke-static {v2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v8

    new-instance v9, Lcom/perm/kate/FavePostsFragment$5;

    move-object v0, v9

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/FavePostsFragment$5;-><init>(Lcom/perm/kate/FavePostsFragment;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/NewsItemTag;)V

    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 253
    invoke-virtual {p1, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 254
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 256
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 257
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 55
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/FavePostsFragment;->account_id:J

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/FavePostsFragment;->old_style_news:Z

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/perm/kate/NewsCursorAdapter;->getCardStyleFlag(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/FavePostsFragment;->card_style_news:Z

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "is_fave"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/FavePostsFragment;->is_fave:Z

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/FavePostsFragment;->fetchData()V

    .line 65
    invoke-direct {p0}, Lcom/perm/kate/FavePostsFragment;->refreshInThread()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0075

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090218

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/perm/kate/FavePostsFragment;->lv_posts_list:Landroid/widget/ListView;

    .line 72
    iget-object p3, p0, Lcom/perm/kate/FavePostsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 73
    iget-object p2, p0, Lcom/perm/kate/FavePostsFragment;->lv_posts_list:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/perm/kate/FavePostsFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 74
    iget-object p2, p0, Lcom/perm/kate/FavePostsFragment;->lv_posts_list:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/perm/kate/FavePostsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 75
    iget-boolean p2, p0, Lcom/perm/kate/FavePostsFragment;->old_style_news:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/perm/kate/FavePostsFragment;->card_style_news:Z

    if-eqz p2, :cond_0

    .line 76
    iget-object p2, p0, Lcom/perm/kate/FavePostsFragment;->lv_posts_list:Landroid/widget/ListView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 78
    :cond_0
    iget-boolean p2, p0, Lcom/perm/kate/FavePostsFragment;->card_style_news:Z

    iget-boolean p3, p0, Lcom/perm/kate/FavePostsFragment;->old_style_news:Z

    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment;->lv_posts_list:Landroid/widget/ListView;

    invoke-static {p2, p3, v0}, Lcom/perm/kate/NewsFragment;->setupWideDivider(ZZLandroid/widget/ListView;)V

    .line 81
    invoke-direct {p0}, Lcom/perm/kate/FavePostsFragment;->displayData()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment;->lv_posts_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment;->posts_adapter:Lcom/perm/kate/FavePostsFragment$WallMessageListAdapter;

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {v0}, Lcom/perm/kate/WallMessageListAdapter;->destroy()V

    .line 155
    :cond_1
    iput-object v1, p0, Lcom/perm/kate/FavePostsFragment;->posts_adapter:Lcom/perm/kate/FavePostsFragment$WallMessageListAdapter;

    .line 156
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 370
    invoke-direct {p0}, Lcom/perm/kate/FavePostsFragment;->refreshInThread()V

    return-void
.end method

.method requeryOnUiThread()V
    .locals 2

    .line 282
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 284
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/FavePostsFragment$7;

    invoke-direct {v1, p0}, Lcom/perm/kate/FavePostsFragment$7;-><init>(Lcom/perm/kate/FavePostsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
