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

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 75
    new-instance v0, Lcom/perm/kate/FaveLinksFragment$2;

    invoke-virtual {p0}, Lcom/perm/kate/FaveLinksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FaveLinksFragment$2;-><init>(Lcom/perm/kate/FaveLinksFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FaveLinksFragment;->links_callback:Lcom/perm/kate/session/Callback;

    .line 100
    new-instance v0, Lcom/perm/kate/FaveLinksFragment$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/FaveLinksFragment$3;-><init>(Lcom/perm/kate/FaveLinksFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FaveLinksFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 139
    new-instance v0, Lcom/perm/kate/FaveLinksFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/FaveLinksFragment$5;-><init>(Lcom/perm/kate/FaveLinksFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FaveLinksFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/FaveLinksFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FaveLinksFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/FaveLinksFragment;->links_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/FaveLinksFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/FaveLinksFragment;

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/perm/kate/FaveLinksFragment;->account_id:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/perm/kate/FaveLinksFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FaveLinksFragment;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/perm/kate/FaveLinksFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/FaveLinksFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FaveLinksFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/FaveLinksFragment;->actionsByLinkUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/FaveLinksFragment;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FaveLinksFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/FaveLinksFragment;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/perm/kate/FaveLinksFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FaveLinksFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/perm/kate/FaveLinksFragment;->faveRemoveLink(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/FaveLinksFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FaveLinksFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/FaveLinksFragment;->faveAddLink(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private actionsByLinkUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "image_src"    # Ljava/lang/String;

    .prologue
    .line 113
    :try_start_0
    invoke-virtual {p0}, Lcom/perm/kate/FaveLinksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/perm/kate/Helper;->openUrl(Ljava/lang/String;Landroid/content/Context;)V

    .line 114
    const-string v1, "FaveLinksFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "link url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private displayData()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lcom/perm/kate/LinksAdapter;

    invoke-virtual {p0}, Lcom/perm/kate/FaveLinksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/FaveLinksFragment;->cursor:Landroid/database/Cursor;

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/LinksAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;)V

    .line 62
    .local v0, "links":Lcom/perm/kate/LinksAdapter;
    iget-object v1, p0, Lcom/perm/kate/FaveLinksFragment;->lv_groups_list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    return-void
.end method

.method private faveAddLink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "link"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 203
    new-instance v0, Lcom/perm/kate/FaveLinksFragment$8;

    invoke-virtual {p0}, Lcom/perm/kate/FaveLinksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FaveLinksFragment$8;-><init>(Lcom/perm/kate/FaveLinksFragment;Landroid/app/Activity;)V

    .line 220
    .local v0, "fave_add_link_callback":Lcom/perm/kate/session/Callback;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/perm/kate/FaveLinksFragment;->showProgressBar(Z)V

    .line 221
    new-instance v1, Lcom/perm/kate/FaveLinksFragment$9;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/perm/kate/FaveLinksFragment$9;-><init>(Lcom/perm/kate/FaveLinksFragment;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;)V

    .line 226
    invoke-virtual {v1}, Lcom/perm/kate/FaveLinksFragment$9;->start()V

    .line 227
    return-void
.end method

.method private faveRemoveLink(Ljava/lang/String;)V
    .locals 6
    .param p1, "link_id"    # Ljava/lang/String;

    .prologue
    .line 166
    new-instance v2, Lcom/perm/kate/FaveLinksFragment$6;

    invoke-virtual {p0}, Lcom/perm/kate/FaveLinksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/perm/kate/FaveLinksFragment$6;-><init>(Lcom/perm/kate/FaveLinksFragment;Landroid/app/Activity;)V

    .line 183
    .local v2, "fave_remove_link_callback":Lcom/perm/kate/session/Callback;
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/FaveLinksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

    new-instance v5, Lcom/perm/kate/FaveLinksFragment$7;

    invoke-direct {v5, p0, p1, v2}, Lcom/perm/kate/FaveLinksFragment$7;-><init>(Lcom/perm/kate/FaveLinksFragment;Ljava/lang/String;Lcom/perm/kate/session/Callback;)V

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
    .line 56
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/FaveLinksFragment;->account_id:J

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchFaveLinks(J)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/FaveLinksFragment;->cursor:Landroid/database/Cursor;

    .line 57
    iget-object v0, p0, Lcom/perm/kate/FaveLinksFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/perm/kate/FaveLinksFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 58
    return-void
.end method

.method private requeryOnUiThread()V
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/perm/kate/FaveLinksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/FaveLinksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/FaveLinksFragment$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/FaveLinksFragment$4;-><init>(Lcom/perm/kate/FaveLinksFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private showAddLinkDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 231
    invoke-virtual {p0}, Lcom/perm/kate/FaveLinksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 232
    .local v4, "factory":Landroid/view/LayoutInflater;
    const v5, 0x7f03001e

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 233
    .local v1, "captcha_view":Landroid/view/View;
    const v5, 0x7f0e006c

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 234
    .local v3, "et_link":Landroid/widget/EditText;
    const v5, 0x7f0e006d

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 235
    .local v2, "et_description":Landroid/widget/EditText;
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/FaveLinksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 236
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v5, 0x7f070116

    invoke-virtual {v0, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f070334

    new-instance v7, Lcom/perm/kate/FaveLinksFragment$10;

    invoke-direct {v7, p0, v3, v2}, Lcom/perm/kate/FaveLinksFragment$10;-><init>(Lcom/perm/kate/FaveLinksFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V

    .line 237
    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f07015d

    .line 244
    invoke-virtual {v5, v6, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 245
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 246
    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 252
    const/4 v0, 0x0

    const/16 v1, 0x3e8

    const/16 v2, 0x1f9

    const v3, 0x7f070116

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 253
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/FaveLinksFragment;->account_id:J

    .line 39
    invoke-direct {p0}, Lcom/perm/kate/FaveLinksFragment;->fetchData()V

    .line 41
    invoke-virtual {p0}, Lcom/perm/kate/FaveLinksFragment;->refreshInThread()V

    .line 42
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    const v1, 0x7f030069

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e0188

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/perm/kate/FaveLinksFragment;->lv_groups_list:Landroid/widget/ListView;

    .line 48
    iget-object v1, p0, Lcom/perm/kate/FaveLinksFragment;->lv_groups_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/FaveLinksFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 49
    iget-object v1, p0, Lcom/perm/kate/FaveLinksFragment;->lv_groups_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/FaveLinksFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 51
    invoke-direct {p0}, Lcom/perm/kate/FaveLinksFragment;->displayData()V

    .line 52
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/perm/kate/FaveLinksFragment;->lv_groups_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/perm/kate/FaveLinksFragment;->lv_groups_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    :cond_0
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    .line 98
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 258
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 263
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 260
    :pswitch_0
    invoke-direct {p0}, Lcom/perm/kate/FaveLinksFragment;->showAddLinkDialog()V

    .line 261
    const/4 v0, 0x1

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/perm/kate/FaveLinksFragment;->refreshInThread()V

    .line 135
    return-void
.end method

.method refreshInThread()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/FaveLinksFragment;->showProgressBar(Z)V

    .line 67
    new-instance v0, Lcom/perm/kate/FaveLinksFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/FaveLinksFragment$1;-><init>(Lcom/perm/kate/FaveLinksFragment;)V

    .line 72
    invoke-virtual {v0}, Lcom/perm/kate/FaveLinksFragment$1;->start()V

    .line 73
    return-void
.end method
