.class public Lcom/perm/kate/FaveUsersFragment;
.super Lcom/perm/kate/BaseFragment;
.source "FaveUsersFragment.java"


# instance fields
.field private account_id:J

.field private callback:Lcom/perm/kate/session/Callback;

.field private cursor:Landroid/database/Cursor;

.field private lv_user_list:Landroid/widget/ListView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 73
    new-instance v0, Lcom/perm/kate/FaveUsersFragment$2;

    invoke-virtual {p0}, Lcom/perm/kate/FaveUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FaveUsersFragment$2;-><init>(Lcom/perm/kate/FaveUsersFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FaveUsersFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 98
    new-instance v0, Lcom/perm/kate/FaveUsersFragment$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/FaveUsersFragment$3;-><init>(Lcom/perm/kate/FaveUsersFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FaveUsersFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 128
    new-instance v0, Lcom/perm/kate/FaveUsersFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/FaveUsersFragment$5;-><init>(Lcom/perm/kate/FaveUsersFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FaveUsersFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/FaveUsersFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FaveUsersFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/perm/kate/FaveUsersFragment;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/FaveUsersFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/FaveUsersFragment;

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/perm/kate/FaveUsersFragment;->account_id:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/perm/kate/FaveUsersFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FaveUsersFragment;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/perm/kate/FaveUsersFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/FaveUsersFragment;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FaveUsersFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/perm/kate/FaveUsersFragment;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/perm/kate/FaveUsersFragment;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FaveUsersFragment;
    .param p1, "x1"    # J

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/FaveUsersFragment;->faveRemoveUser(J)V

    return-void
.end method

.method private displayData()V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Lcom/perm/kate/FriendsCursorAdapter;

    invoke-virtual {p0}, Lcom/perm/kate/FaveUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/FaveUsersFragment;->cursor:Landroid/database/Cursor;

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/FriendsCursorAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;)V

    .line 57
    .local v0, "adapter":Lcom/perm/kate/FriendsCursorAdapter;
    iget-object v1, p0, Lcom/perm/kate/FaveUsersFragment;->lv_user_list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    return-void
.end method

.method private faveRemoveUser(J)V
    .locals 7
    .param p1, "user_id"    # J

    .prologue
    .line 166
    new-instance v2, Lcom/perm/kate/FaveUsersFragment$6;

    invoke-virtual {p0}, Lcom/perm/kate/FaveUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/perm/kate/FaveUsersFragment$6;-><init>(Lcom/perm/kate/FaveUsersFragment;Landroid/app/Activity;)V

    .line 183
    .local v2, "fave_remove_user_callback":Lcom/perm/kate/session/Callback;
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/FaveUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 184
    .local v1, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v3, 0x7f070452

    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070241

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07051d

    new-instance v5, Lcom/perm/kate/FaveUsersFragment$7;

    invoke-direct {v5, p0, p1, p2, v2}, Lcom/perm/kate/FaveUsersFragment$7;-><init>(Lcom/perm/kate/FaveUsersFragment;JLcom/perm/kate/session/Callback;)V

    .line 185
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070319

    const/4 v5, 0x0

    .line 196
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 197
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 198
    .local v0, "alert":Landroid/support/v7/app/AlertDialog;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 199
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 200
    return-void
.end method

.method private fetchData()V
    .locals 4

    .prologue
    .line 51
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/FaveUsersFragment;->account_id:J

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchFaveUsers(J)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/FaveUsersFragment;->cursor:Landroid/database/Cursor;

    .line 52
    iget-object v0, p0, Lcom/perm/kate/FaveUsersFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/perm/kate/FaveUsersFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 53
    return-void
.end method

.method private requeryOnUiThread()V
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/perm/kate/FaveUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/FaveUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/FaveUsersFragment$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/FaveUsersFragment$4;-><init>(Lcom/perm/kate/FaveUsersFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method protected ShowProfile(Ljava/lang/String;)V
    .locals 3
    .param p1, "user_id"    # Ljava/lang/String;

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 109
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/FaveUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/ProfileInfoActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 110
    const-string v1, "com.perm.kate.user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v0}, Lcom/perm/kate/FaveUsersFragment;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/FaveUsersFragment;->account_id:J

    .line 34
    invoke-direct {p0}, Lcom/perm/kate/FaveUsersFragment;->fetchData()V

    .line 36
    invoke-virtual {p0}, Lcom/perm/kate/FaveUsersFragment;->refreshInThread()V

    .line 37
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    const v1, 0x7f03006c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e00d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/perm/kate/FaveUsersFragment;->lv_user_list:Landroid/widget/ListView;

    .line 43
    iget-object v1, p0, Lcom/perm/kate/FaveUsersFragment;->lv_user_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/FaveUsersFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 44
    iget-object v1, p0, Lcom/perm/kate/FaveUsersFragment;->lv_user_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/FaveUsersFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 46
    invoke-direct {p0}, Lcom/perm/kate/FaveUsersFragment;->displayData()V

    .line 47
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/perm/kate/FaveUsersFragment;->lv_user_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/perm/kate/FaveUsersFragment;->lv_user_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    :cond_0
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    .line 96
    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/perm/kate/FaveUsersFragment;->refreshInThread()V

    .line 163
    return-void
.end method

.method refreshInThread()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/FaveUsersFragment;->showProgressBar(Z)V

    .line 62
    new-instance v0, Lcom/perm/kate/FaveUsersFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/FaveUsersFragment$1;-><init>(Lcom/perm/kate/FaveUsersFragment;)V

    .line 70
    invoke-virtual {v0}, Lcom/perm/kate/FaveUsersFragment$1;->start()V

    .line 71
    return-void
.end method
