.class public Lcom/perm/kate/FaveLinksFragment;
.super Lcom/perm/kate/BaseFragment;
.source "FaveLinksFragment.java"


# instance fields
.field private account_id:J

.field private cursor:Landroid/database/Cursor;

.field private links_callback:Lcom/perm/kate/session/Callback;

.field private lv_groups_list:Landroid/widget/ListView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 73
    new-instance v0, Lcom/perm/kate/FaveLinksFragment$2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FaveLinksFragment$2;-><init>(Lcom/perm/kate/FaveLinksFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FaveLinksFragment;->links_callback:Lcom/perm/kate/session/Callback;

    .line 98
    new-instance v0, Lcom/perm/kate/FaveLinksFragment$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/FaveLinksFragment$3;-><init>(Lcom/perm/kate/FaveLinksFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FaveLinksFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 127
    new-instance v0, Lcom/perm/kate/FaveLinksFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/FaveLinksFragment$5;-><init>(Lcom/perm/kate/FaveLinksFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FaveLinksFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/FaveLinksFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/perm/kate/FaveLinksFragment;->links_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/FaveLinksFragment;)J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/perm/kate/FaveLinksFragment;->account_id:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/perm/kate/FaveLinksFragment;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/perm/kate/FaveLinksFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/FaveLinksFragment;)Landroid/database/Cursor;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/perm/kate/FaveLinksFragment;->cursor:Landroid/database/Cursor;

    return-object p0
.end method

.method static synthetic access$400(Lcom/perm/kate/FaveLinksFragment;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/perm/kate/FaveLinksFragment;->faveRemoveLink(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/FaveLinksFragment;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/perm/kate/FaveLinksFragment;->faveAddLink(Ljava/lang/String;)V

    return-void
.end method

.method private displayData()V
    .locals 3

    .line 59
    new-instance v0, Lcom/perm/kate/LinksAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/FaveLinksFragment;->cursor:Landroid/database/Cursor;

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/LinksAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;)V

    .line 60
    iget-object v1, p0, Lcom/perm/kate/FaveLinksFragment;->lv_groups_list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private faveAddLink(Ljava/lang/String;)V
    .locals 2

    .line 200
    new-instance v0, Lcom/perm/kate/FaveLinksFragment$8;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FaveLinksFragment$8;-><init>(Lcom/perm/kate/FaveLinksFragment;Landroid/app/Activity;)V

    const/4 v1, 0x1

    .line 217
    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 218
    new-instance v1, Lcom/perm/kate/FaveLinksFragment$9;

    invoke-direct {v1, p0, p1, v0}, Lcom/perm/kate/FaveLinksFragment$9;-><init>(Lcom/perm/kate/FaveLinksFragment;Ljava/lang/String;Lcom/perm/kate/session/Callback;)V

    .line 223
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private faveRemoveLink(Ljava/lang/String;)V
    .locals 4

    .line 163
    new-instance v0, Lcom/perm/kate/FaveLinksFragment$6;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FaveLinksFragment$6;-><init>(Lcom/perm/kate/FaveLinksFragment;Landroid/app/Activity;)V

    .line 180
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f01d8

    .line 181
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0f029b

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/perm/kate/FaveLinksFragment$7;

    invoke-direct {v3, p0, p1, v0}, Lcom/perm/kate/FaveLinksFragment$7;-><init>(Lcom/perm/kate/FaveLinksFragment;Ljava/lang/String;Lcom/perm/kate/session/Callback;)V

    const p1, 0x7f0f05a7

    .line 182
    invoke-virtual {v2, p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0f037a

    const/4 v2, 0x0

    .line 193
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 194
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 195
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 196
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private fetchData()V
    .locals 3

    .line 54
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v1, p0, Lcom/perm/kate/FaveLinksFragment;->account_id:J

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchFaveLinks(J)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/FaveLinksFragment;->cursor:Landroid/database/Cursor;

    .line 55
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->startManagingCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private requeryOnUiThread()V
    .locals 2

    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/FaveLinksFragment$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/FaveLinksFragment$4;-><init>(Lcom/perm/kate/FaveLinksFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showAddLinkDialog()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0020

    const/4 v2, 0x0

    .line 229
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09011c

    .line 230
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v3, ""

    .line 231
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 232
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f0184

    .line 233
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v4, Lcom/perm/kate/FaveLinksFragment$10;

    invoke-direct {v4, p0, v1}, Lcom/perm/kate/FaveLinksFragment$10;-><init>(Lcom/perm/kate/FaveLinksFragment;Landroid/widget/EditText;)V

    const v1, 0x7f0f0398

    .line 234
    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f01c5

    .line 239
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 240
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    const/16 v2, 0x1f9

    const v3, 0x7f0f0184

    .line 247
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 33
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/FaveLinksFragment;->account_id:J

    .line 37
    invoke-direct {p0}, Lcom/perm/kate/FaveLinksFragment;->fetchData()V

    .line 39
    invoke-virtual {p0}, Lcom/perm/kate/FaveLinksFragment;->refreshInThread()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0073

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090211

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/perm/kate/FaveLinksFragment;->lv_groups_list:Landroid/widget/ListView;

    .line 46
    iget-object p3, p0, Lcom/perm/kate/FaveLinksFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 47
    iget-object p2, p0, Lcom/perm/kate/FaveLinksFragment;->lv_groups_list:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/perm/kate/FaveLinksFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 49
    invoke-direct {p0}, Lcom/perm/kate/FaveLinksFragment;->displayData()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/perm/kate/FaveLinksFragment;->lv_groups_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    :cond_0
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 253
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 258
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/FaveLinksFragment;->showAddLinkDialog()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 119
    invoke-virtual {p0}, Lcom/perm/kate/FaveLinksFragment;->refreshInThread()V

    return-void
.end method

.method refreshInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 65
    new-instance v0, Lcom/perm/kate/FaveLinksFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/FaveLinksFragment$1;-><init>(Lcom/perm/kate/FaveLinksFragment;)V

    .line 70
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
