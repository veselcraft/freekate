.class public Lcom/perm/kate/FavePostsFragment;
.super Lcom/perm/kate/BaseFragment;
.source "FavePostsFragment.java"


# instance fields
.field private account_id:J

.field private callback_load_more:Lcom/perm/kate/session/Callback;

.field card_style_news:Z

.field private cursor:Landroid/database/Cursor;

.field private lv_posts_list:Landroid/widget/ListView;

.field offset:I

.field old_style_news:Z

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field pauser:Lcom/perm/utils/ScrollPauser;

.field private post_page_size:I

.field posts_adapter:Lcom/perm/kate/WallMessageListAdapter;

.field private posts_callback:Lcom/perm/kate/session/Callback;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 31
    const/16 v0, 0xa

    iput v0, p0, Lcom/perm/kate/FavePostsFragment;->post_page_size:I

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/perm/kate/FavePostsFragment;->state:I

    .line 38
    iput v1, p0, Lcom/perm/kate/FavePostsFragment;->offset:I

    .line 39
    iput-boolean v1, p0, Lcom/perm/kate/FavePostsFragment;->card_style_news:Z

    .line 40
    iput-boolean v1, p0, Lcom/perm/kate/FavePostsFragment;->old_style_news:Z

    .line 42
    new-instance v0, Lcom/perm/utils/ScrollPauser;

    invoke-direct {v0}, Lcom/perm/utils/ScrollPauser;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/FavePostsFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    .line 100
    new-instance v0, Lcom/perm/kate/FavePostsFragment$2;

    invoke-virtual {p0}, Lcom/perm/kate/FavePostsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FavePostsFragment$2;-><init>(Lcom/perm/kate/FavePostsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FavePostsFragment;->posts_callback:Lcom/perm/kate/session/Callback;

    .line 142
    new-instance v0, Lcom/perm/kate/FavePostsFragment$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/FavePostsFragment$3;-><init>(Lcom/perm/kate/FavePostsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FavePostsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 157
    new-instance v0, Lcom/perm/kate/FavePostsFragment$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/FavePostsFragment$4;-><init>(Lcom/perm/kate/FavePostsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FavePostsFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 250
    new-instance v0, Lcom/perm/kate/FavePostsFragment$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/FavePostsFragment$7;-><init>(Lcom/perm/kate/FavePostsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FavePostsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 281
    new-instance v0, Lcom/perm/kate/FavePostsFragment$9;

    invoke-virtual {p0}, Lcom/perm/kate/FavePostsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FavePostsFragment$9;-><init>(Lcom/perm/kate/FavePostsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FavePostsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/FavePostsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FavePostsFragment;

    .prologue
    .line 25
    iget v0, p0, Lcom/perm/kate/FavePostsFragment;->post_page_size:I

    return v0
.end method

.method static synthetic access$002(Lcom/perm/kate/FavePostsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FavePostsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/perm/kate/FavePostsFragment;->post_page_size:I

    return p1
.end method

.method static synthetic access$100(Lcom/perm/kate/FavePostsFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FavePostsFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment;->posts_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/FavePostsFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/FavePostsFragment;

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/perm/kate/FavePostsFragment;->account_id:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/perm/kate/FavePostsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FavePostsFragment;

    .prologue
    .line 25
    iget v0, p0, Lcom/perm/kate/FavePostsFragment;->state:I

    return v0
.end method

.method static synthetic access$302(Lcom/perm/kate/FavePostsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FavePostsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/perm/kate/FavePostsFragment;->state:I

    return p1
.end method

.method static synthetic access$400(Lcom/perm/kate/FavePostsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FavePostsFragment;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/perm/kate/FavePostsFragment;->loadMore()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/FavePostsFragment;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FavePostsFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/perm/kate/FavePostsFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FavePostsFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method private displayData()V
    .locals 6

    .prologue
    .line 76
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment;->posts_adapter:Lcom/perm/kate/WallMessageListAdapter;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment;->posts_adapter:Lcom/perm/kate/WallMessageListAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/WallMessageListAdapter;->destroy()V

    .line 78
    :cond_0
    new-instance v0, Lcom/perm/kate/WallMessageListAdapter;

    invoke-virtual {p0}, Lcom/perm/kate/FavePostsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/BaseActivity;

    iget-object v2, p0, Lcom/perm/kate/FavePostsFragment;->cursor:Landroid/database/Cursor;

    const/4 v4, 0x0

    const/16 v5, 0xf

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/WallMessageListAdapter;-><init>(Lcom/perm/kate/BaseActivity;Landroid/database/Cursor;Landroid/support/v4/app/Fragment;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/perm/kate/FavePostsFragment;->posts_adapter:Lcom/perm/kate/WallMessageListAdapter;

    .line 79
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment;->lv_posts_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/FavePostsFragment;->posts_adapter:Lcom/perm/kate/WallMessageListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    return-void
.end method

.method private fetchData()V
    .locals 4

    .prologue
    .line 83
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/FavePostsFragment;->account_id:J

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchFavePosts(J)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/FavePostsFragment;->cursor:Landroid/database/Cursor;

    .line 84
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/perm/kate/FavePostsFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 85
    return-void
.end method

.method private loadMore()V
    .locals 1

    .prologue
    .line 273
    new-instance v0, Lcom/perm/kate/FavePostsFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/FavePostsFragment$8;-><init>(Lcom/perm/kate/FavePostsFragment;)V

    .line 278
    invoke-virtual {v0}, Lcom/perm/kate/FavePostsFragment$8;->start()V

    .line 279
    return-void
.end method

.method private refreshInThread()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 88
    iput v1, p0, Lcom/perm/kate/FavePostsFragment;->state:I

    .line 89
    const/16 v0, 0xa

    iput v0, p0, Lcom/perm/kate/FavePostsFragment;->post_page_size:I

    .line 90
    invoke-virtual {p0, v1}, Lcom/perm/kate/FavePostsFragment;->showProgressBar(Z)V

    .line 91
    new-instance v0, Lcom/perm/kate/FavePostsFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/FavePostsFragment$1;-><init>(Lcom/perm/kate/FavePostsFragment;)V

    .line 97
    invoke-virtual {v0}, Lcom/perm/kate/FavePostsFragment$1;->start()V

    .line 98
    return-void
.end method


# virtual methods
.method protected CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V
    .locals 13
    .param p1, "tag"    # Lcom/perm/kate/NewsItemTag;

    .prologue
    .line 179
    :try_start_0
    iget-object v3, p1, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 180
    .local v3, "post_id":Ljava/lang/String;
    iget-object v4, p1, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    .line 182
    .local v4, "wall_owner_id":Ljava/lang/String;
    iget-boolean v7, p1, Lcom/perm/kate/NewsItemTag;->i_like:Z

    .line 183
    .local v7, "i_like":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v2, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    invoke-static {}, Lcom/perm/kate/NewsFragment;->clickOpensNews()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0703a1

    invoke-virtual {p0, v1}, Lcom/perm/kate/FavePostsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0702bd

    invoke-virtual {p0, v1}, Lcom/perm/kate/FavePostsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 186
    .local v8, "open_title":Ljava/lang/String;
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const/16 v1, 0xb

    invoke-direct {v0, v8, v1}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .end local v8    # "open_title":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0701d2

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0701d0

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    if-nez v7, :cond_1

    .line 191
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0700e0

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :goto_0
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f070518

    const/16 v5, 0x8

    invoke-direct {v0, v1, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f07007e

    const/4 v5, 0x6

    invoke-direct {v0, v1, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v11, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/FavePostsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 197
    invoke-static {v2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v12

    new-instance v0, Lcom/perm/kate/FavePostsFragment$5;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/FavePostsFragment$5;-><init>(Lcom/perm/kate/FavePostsFragment;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/NewsItemTag;)V

    invoke-virtual {v11, v12, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v10

    .line 230
    .local v10, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v10}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v6

    .line 231
    .local v6, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 232
    invoke-virtual {v6}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 237
    .end local v2    # "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .end local v3    # "post_id":Ljava/lang/String;
    .end local v4    # "wall_owner_id":Ljava/lang/String;
    .end local v6    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v7    # "i_like":Z
    .end local v10    # "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    :goto_1
    return-void

    .line 193
    .restart local v2    # "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .restart local v3    # "post_id":Ljava/lang/String;
    .restart local v4    # "wall_owner_id":Ljava/lang/String;
    .restart local v7    # "i_like":Z
    :cond_1
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0700df

    const/4 v5, 0x4

    invoke-direct {v0, v1, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    .end local v2    # "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .end local v3    # "post_id":Ljava/lang/String;
    .end local v4    # "wall_owner_id":Ljava/lang/String;
    .end local v7    # "i_like":Z
    :catch_0
    move-exception v9

    .line 234
    .local v9, "th":Ljava/lang/Throwable;
    invoke-static {v9}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 235
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/FavePostsFragment;->account_id:J

    .line 49
    invoke-virtual {p0}, Lcom/perm/kate/FavePostsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/FavePostsFragment;->old_style_news:Z

    .line 50
    invoke-virtual {p0}, Lcom/perm/kate/FavePostsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/NewsCursorAdapter;->getCardStyleFlag(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/FavePostsFragment;->card_style_news:Z

    .line 53
    invoke-direct {p0}, Lcom/perm/kate/FavePostsFragment;->fetchData()V

    .line 55
    invoke-direct {p0}, Lcom/perm/kate/FavePostsFragment;->refreshInThread()V

    .line 56
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 60
    const v1, 0x7f03006b

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e018a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/perm/kate/FavePostsFragment;->lv_posts_list:Landroid/widget/ListView;

    .line 62
    iget-object v1, p0, Lcom/perm/kate/FavePostsFragment;->lv_posts_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/FavePostsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    iget-object v1, p0, Lcom/perm/kate/FavePostsFragment;->lv_posts_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/FavePostsFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 64
    iget-object v1, p0, Lcom/perm/kate/FavePostsFragment;->lv_posts_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/FavePostsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 65
    iget-boolean v1, p0, Lcom/perm/kate/FavePostsFragment;->old_style_news:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/perm/kate/FavePostsFragment;->card_style_news:Z

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/perm/kate/FavePostsFragment;->lv_posts_list:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 68
    :cond_0
    iget-boolean v1, p0, Lcom/perm/kate/FavePostsFragment;->card_style_news:Z

    iget-boolean v2, p0, Lcom/perm/kate/FavePostsFragment;->old_style_news:Z

    iget-object v3, p0, Lcom/perm/kate/FavePostsFragment;->lv_posts_list:Landroid/widget/ListView;

    invoke-static {v1, v2, v3}, Lcom/perm/kate/NewsFragment;->setupWideDivider(ZZLandroid/widget/ListView;)V

    .line 71
    invoke-direct {p0}, Lcom/perm/kate/FavePostsFragment;->displayData()V

    .line 72
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment;->lv_posts_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment;->lv_posts_list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment;->posts_adapter:Lcom/perm/kate/WallMessageListAdapter;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment;->posts_adapter:Lcom/perm/kate/WallMessageListAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/WallMessageListAdapter;->destroy()V

    .line 138
    :cond_1
    iput-object v1, p0, Lcom/perm/kate/FavePostsFragment;->posts_adapter:Lcom/perm/kate/WallMessageListAdapter;

    .line 139
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    .line 140
    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/perm/kate/FavePostsFragment;->refreshInThread()V

    .line 326
    return-void
.end method

.method requeryOnUiThread()V
    .locals 2

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/perm/kate/FavePostsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/FavePostsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/FavePostsFragment$6;

    invoke-direct {v1, p0}, Lcom/perm/kate/FavePostsFragment$6;-><init>(Lcom/perm/kate/FavePostsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
