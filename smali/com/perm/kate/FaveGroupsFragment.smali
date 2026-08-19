.class public Lcom/perm/kate/FaveGroupsFragment;
.super Lcom/perm/kate/BaseFragment;
.source "FaveGroupsFragment.java"


# instance fields
.field private account_id:J

.field private callback:Lcom/perm/kate/session/Callback;

.field private cursor:Landroid/database/Cursor;

.field private lv_group_list:Landroid/widget/ListView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 71
    new-instance v0, Lcom/perm/kate/FaveGroupsFragment$2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FaveGroupsFragment$2;-><init>(Lcom/perm/kate/FaveGroupsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FaveGroupsFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 99
    new-instance v0, Lcom/perm/kate/FaveGroupsFragment$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/FaveGroupsFragment$3;-><init>(Lcom/perm/kate/FaveGroupsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FaveGroupsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 124
    new-instance v0, Lcom/perm/kate/FaveGroupsFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/FaveGroupsFragment$5;-><init>(Lcom/perm/kate/FaveGroupsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FaveGroupsFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/FaveGroupsFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/perm/kate/FaveGroupsFragment;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/FaveGroupsFragment;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/perm/kate/FaveGroupsFragment;->account_id:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/perm/kate/FaveGroupsFragment;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/perm/kate/FaveGroupsFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/FaveGroupsFragment;)Landroid/database/Cursor;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/perm/kate/FaveGroupsFragment;->cursor:Landroid/database/Cursor;

    return-object p0
.end method

.method static synthetic access$400(Lcom/perm/kate/FaveGroupsFragment;J)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/FaveGroupsFragment;->faveRemoveGroup(J)V

    return-void
.end method

.method private displayData()V
    .locals 4

    .line 57
    new-instance v0, Lcom/perm/kate/GroupsAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/FaveGroupsFragment;->cursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/perm/kate/GroupsAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;Ljava/util/HashSet;)V

    .line 58
    iget-object v1, p0, Lcom/perm/kate/FaveGroupsFragment;->lv_group_list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private faveRemoveGroup(J)V
    .locals 4

    .line 161
    new-instance v0, Lcom/perm/kate/FaveGroupsFragment$6;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FaveGroupsFragment$6;-><init>(Lcom/perm/kate/FaveGroupsFragment;Landroid/app/Activity;)V

    .line 178
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f01d8

    .line 179
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0f029b

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/perm/kate/FaveGroupsFragment$7;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/perm/kate/FaveGroupsFragment$7;-><init>(Lcom/perm/kate/FaveGroupsFragment;JLcom/perm/kate/session/Callback;)V

    const p1, 0x7f0f05a7

    .line 180
    invoke-virtual {v2, p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f037a

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 192
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x1

    .line 193
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 194
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private fetchData()V
    .locals 5

    .line 50
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 51
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v3, p0, Lcom/perm/kate/FaveGroupsFragment;->account_id:J

    invoke-virtual {v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->fetchFaveGroups(J)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/FaveGroupsFragment;->cursor:Landroid/database/Cursor;

    const-string v3, "fgf_fetchFaveGroups"

    .line 52
    invoke-static {v0, v1, v3, v2}, Lcom/perm/kate/Helper;->reportDbReadDuration(JLjava/lang/String;Landroid/database/Cursor;)V

    .line 53
    iget-object v0, p0, Lcom/perm/kate/FaveGroupsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->startManagingCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private requeryOnUiThread()V
    .locals 2

    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/FaveGroupsFragment$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/FaveGroupsFragment$4;-><init>(Lcom/perm/kate/FaveGroupsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 28
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/FaveGroupsFragment;->account_id:J

    .line 32
    invoke-direct {p0}, Lcom/perm/kate/FaveGroupsFragment;->fetchData()V

    .line 34
    invoke-virtual {p0}, Lcom/perm/kate/FaveGroupsFragment;->refreshInThread()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0076

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090150

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f09021e

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/perm/kate/FaveGroupsFragment;->lv_group_list:Landroid/widget/ListView;

    .line 42
    iget-object p3, p0, Lcom/perm/kate/FaveGroupsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 43
    iget-object p2, p0, Lcom/perm/kate/FaveGroupsFragment;->lv_group_list:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/perm/kate/FaveGroupsFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 45
    invoke-direct {p0}, Lcom/perm/kate/FaveGroupsFragment;->displayData()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/perm/kate/FaveGroupsFragment;->lv_group_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    :cond_0
    iput-object v1, p0, Lcom/perm/kate/FaveGroupsFragment;->cursor:Landroid/database/Cursor;

    .line 96
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 157
    invoke-virtual {p0}, Lcom/perm/kate/FaveGroupsFragment;->refreshInThread()V

    return-void
.end method

.method refreshInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 63
    new-instance v0, Lcom/perm/kate/FaveGroupsFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/FaveGroupsFragment$1;-><init>(Lcom/perm/kate/FaveGroupsFragment;)V

    .line 68
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
