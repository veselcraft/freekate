.class public Lcom/perm/kate/FaveUsersFragment;
.super Lcom/perm/kate/BaseFragment;
.source "FaveUsersFragment.java"


# instance fields
.field private account_id:J

.field private btn_clear:Landroid/widget/ImageButton;

.field private callback:Lcom/perm/kate/session/Callback;

.field private current_filter:Ljava/lang/CharSequence;

.field private cursor:Landroid/database/Cursor;

.field private filterText:Landroid/widget/EditText;

.field private filterTextWatcher:Landroid/text/TextWatcher;

.field private load_more_callback:Lcom/perm/kate/session/Callback;

.field private lv_user_list:Landroid/widget/ListView;

.field private offset:I

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private page_size:I

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lcom/perm/kate/FaveUsersFragment;->current_filter:Ljava/lang/CharSequence;

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/perm/kate/FaveUsersFragment;->state:I

    const/16 v0, 0xc8

    .line 44
    iput v0, p0, Lcom/perm/kate/FaveUsersFragment;->page_size:I

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/perm/kate/FaveUsersFragment;->offset:I

    .line 114
    new-instance v0, Lcom/perm/kate/FaveUsersFragment$4;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FaveUsersFragment$4;-><init>(Lcom/perm/kate/FaveUsersFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FaveUsersFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 146
    new-instance v0, Lcom/perm/kate/FaveUsersFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/FaveUsersFragment$5;-><init>(Lcom/perm/kate/FaveUsersFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FaveUsersFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 176
    new-instance v0, Lcom/perm/kate/FaveUsersFragment$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/FaveUsersFragment$7;-><init>(Lcom/perm/kate/FaveUsersFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FaveUsersFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 250
    new-instance v0, Lcom/perm/kate/FaveUsersFragment$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/FaveUsersFragment$10;-><init>(Lcom/perm/kate/FaveUsersFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FaveUsersFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    .line 262
    new-instance v0, Lcom/perm/kate/FaveUsersFragment$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/FaveUsersFragment$11;-><init>(Lcom/perm/kate/FaveUsersFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FaveUsersFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 286
    new-instance v0, Lcom/perm/kate/FaveUsersFragment$13;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FaveUsersFragment$13;-><init>(Lcom/perm/kate/FaveUsersFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FaveUsersFragment;->load_more_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/FaveUsersFragment;)Landroid/widget/EditText;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/perm/kate/FaveUsersFragment;->filterText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/FaveUsersFragment;)Ljava/lang/CharSequence;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/perm/kate/FaveUsersFragment;->current_filter:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/perm/kate/FaveUsersFragment;J)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/FaveUsersFragment;->faveRemoveUser(J)V

    return-void
.end method

.method static synthetic access$102(Lcom/perm/kate/FaveUsersFragment;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/perm/kate/FaveUsersFragment;->current_filter:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/perm/kate/FaveUsersFragment;)Landroid/widget/ListView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/perm/kate/FaveUsersFragment;->lv_user_list:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/perm/kate/FaveUsersFragment;)Landroid/widget/ImageButton;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/perm/kate/FaveUsersFragment;->btn_clear:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/perm/kate/FaveUsersFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/perm/kate/FaveUsersFragment;->load_more_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/FaveUsersFragment;)Landroid/database/Cursor;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/perm/kate/FaveUsersFragment;->cursor:Landroid/database/Cursor;

    return-object p0
.end method

.method static synthetic access$202(Lcom/perm/kate/FaveUsersFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/perm/kate/FaveUsersFragment;->cursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$300(Lcom/perm/kate/FaveUsersFragment;)J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/perm/kate/FaveUsersFragment;->account_id:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/perm/kate/FaveUsersFragment;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/perm/kate/FaveUsersFragment;->page_size:I

    return p0
.end method

.method static synthetic access$500(Lcom/perm/kate/FaveUsersFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/perm/kate/FaveUsersFragment;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/perm/kate/FaveUsersFragment;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/perm/kate/FaveUsersFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/FaveUsersFragment;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/perm/kate/FaveUsersFragment;->offset:I

    return p0
.end method

.method static synthetic access$702(Lcom/perm/kate/FaveUsersFragment;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/perm/kate/FaveUsersFragment;->offset:I

    return p1
.end method

.method static synthetic access$712(Lcom/perm/kate/FaveUsersFragment;I)I
    .locals 1

    .line 28
    iget v0, p0, Lcom/perm/kate/FaveUsersFragment;->offset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/perm/kate/FaveUsersFragment;->offset:I

    return v0
.end method

.method static synthetic access$800(Lcom/perm/kate/FaveUsersFragment;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/perm/kate/FaveUsersFragment;->checkStateOnUiThread(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/FaveUsersFragment;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/perm/kate/FaveUsersFragment;->state:I

    return p0
.end method

.method static synthetic access$902(Lcom/perm/kate/FaveUsersFragment;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/perm/kate/FaveUsersFragment;->state:I

    return p1
.end method

.method private checkStateOnUiThread(I)V
    .locals 2

    .line 307
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 309
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/FaveUsersFragment$14;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/FaveUsersFragment$14;-><init>(Lcom/perm/kate/FaveUsersFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private displayData()V
    .locals 3

    .line 86
    new-instance v0, Lcom/perm/kate/FriendsCursorAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/FaveUsersFragment;->cursor:Landroid/database/Cursor;

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/FriendsCursorAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;)V

    .line 87
    new-instance v1, Lcom/perm/kate/FaveUsersFragment$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/FaveUsersFragment$2;-><init>(Lcom/perm/kate/FaveUsersFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    .line 97
    iget-object v1, p0, Lcom/perm/kate/FaveUsersFragment;->lv_user_list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private faveRemoveUser(J)V
    .locals 4

    .line 214
    new-instance v0, Lcom/perm/kate/FaveUsersFragment$8;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FaveUsersFragment$8;-><init>(Lcom/perm/kate/FaveUsersFragment;Landroid/app/Activity;)V

    .line 231
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f01d8

    .line 232
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0f029b

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/perm/kate/FaveUsersFragment$9;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/perm/kate/FaveUsersFragment$9;-><init>(Lcom/perm/kate/FaveUsersFragment;JLcom/perm/kate/session/Callback;)V

    const p1, 0x7f0f05a7

    .line 233
    invoke-virtual {v2, p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f037a

    const/4 v0, 0x0

    .line 244
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 245
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x1

    .line 246
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 247
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private fetchData()V
    .locals 6

    .line 79
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 80
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v3, p0, Lcom/perm/kate/FaveUsersFragment;->account_id:J

    const-string v5, ""

    invoke-virtual {v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchFaveUsers(JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/FaveUsersFragment;->cursor:Landroid/database/Cursor;

    const-string v3, "fuf_fetchFaveUsers"

    .line 81
    invoke-static {v0, v1, v3, v2}, Lcom/perm/kate/Helper;->reportDbReadDuration(JLjava/lang/String;Landroid/database/Cursor;)V

    .line 82
    iget-object v0, p0, Lcom/perm/kate/FaveUsersFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->startManagingCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private requeryOnUiThread()V
    .locals 2

    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/FaveUsersFragment$6;

    invoke-direct {v1, p0}, Lcom/perm/kate/FaveUsersFragment$6;-><init>(Lcom/perm/kate/FaveUsersFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected ShowProfile(Ljava/lang/String;)V
    .locals 3

    .line 156
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 157
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/ProfileInfoActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.user_id"

    .line 158
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method loadMore()V
    .locals 1

    const/4 v0, 0x1

    .line 276
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 277
    iput v0, p0, Lcom/perm/kate/FaveUsersFragment;->state:I

    .line 278
    new-instance v0, Lcom/perm/kate/FaveUsersFragment$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/FaveUsersFragment$12;-><init>(Lcom/perm/kate/FaveUsersFragment;)V

    .line 283
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 49
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/FaveUsersFragment;->account_id:J

    .line 53
    invoke-direct {p0}, Lcom/perm/kate/FaveUsersFragment;->fetchData()V

    .line 55
    invoke-virtual {p0}, Lcom/perm/kate/FaveUsersFragment;->refreshInThread()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0076

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09021e

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/perm/kate/FaveUsersFragment;->lv_user_list:Landroid/widget/ListView;

    .line 62
    iget-object p3, p0, Lcom/perm/kate/FaveUsersFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    iget-object p2, p0, Lcom/perm/kate/FaveUsersFragment;->lv_user_list:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/perm/kate/FaveUsersFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 64
    iget-object p2, p0, Lcom/perm/kate/FaveUsersFragment;->lv_user_list:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/perm/kate/FaveUsersFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const p2, 0x7f0902bf

    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/perm/kate/FaveUsersFragment;->filterText:Landroid/widget/EditText;

    .line 66
    iget-object p3, p0, Lcom/perm/kate/FaveUsersFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p2, 0x7f0900be

    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/perm/kate/FaveUsersFragment;->btn_clear:Landroid/widget/ImageButton;

    .line 68
    new-instance p3, Lcom/perm/kate/FaveUsersFragment$1;

    invoke-direct {p3, p0}, Lcom/perm/kate/FaveUsersFragment$1;-><init>(Lcom/perm/kate/FaveUsersFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-direct {p0}, Lcom/perm/kate/FaveUsersFragment;->displayData()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/perm/kate/FaveUsersFragment;->lv_user_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/FaveUsersFragment;->filterText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 142
    iget-object v1, p0, Lcom/perm/kate/FaveUsersFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 143
    :cond_1
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 210
    invoke-virtual {p0}, Lcom/perm/kate/FaveUsersFragment;->refreshInThread()V

    return-void
.end method

.method refreshInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 101
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 102
    iput v0, p0, Lcom/perm/kate/FaveUsersFragment;->state:I

    .line 103
    new-instance v0, Lcom/perm/kate/FaveUsersFragment$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/FaveUsersFragment$3;-><init>(Lcom/perm/kate/FaveUsersFragment;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
