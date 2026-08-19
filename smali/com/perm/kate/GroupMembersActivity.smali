.class public Lcom/perm/kate/GroupMembersActivity;
.super Lcom/perm/kate/BaseActivity;
.source "GroupMembersActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/UsersListAdapter;

.field private filter:Ljava/lang/String;

.field private gid:J

.field private is_event:Z

.field private is_moder:Z

.field private lv_list:Landroid/widget/ListView;

.field private members:Ljava/util/ArrayList;

.field private members_callback:Lcom/perm/kate/session/Callback;

.field private members_load_more_callback:Lcom/perm/kate/session/Callback;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private pauser:Lcom/perm/utils/ScrollPauser;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private sort:Ljava/lang/String;

.field private state:I

.field private user_page_size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/16 v0, 0x32

    .line 31
    iput v0, p0, Lcom/perm/kate/GroupMembersActivity;->user_page_size:I

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/perm/kate/GroupMembersActivity;->state:I

    .line 38
    new-instance v0, Lcom/perm/utils/ScrollPauser;

    invoke-direct {v0}, Lcom/perm/utils/ScrollPauser;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->pauser:Lcom/perm/utils/ScrollPauser;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->members:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->sort:Ljava/lang/String;

    const/4 v1, 0x0

    .line 42
    iput-boolean v1, p0, Lcom/perm/kate/GroupMembersActivity;->is_moder:Z

    .line 43
    iput-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->filter:Ljava/lang/String;

    .line 44
    iput-boolean v1, p0, Lcom/perm/kate/GroupMembersActivity;->is_event:Z

    .line 85
    new-instance v0, Lcom/perm/kate/GroupMembersActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupMembersActivity$2;-><init>(Lcom/perm/kate/GroupMembersActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->members_callback:Lcom/perm/kate/session/Callback;

    .line 141
    new-instance v0, Lcom/perm/kate/GroupMembersActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupMembersActivity$4;-><init>(Lcom/perm/kate/GroupMembersActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 156
    new-instance v0, Lcom/perm/kate/GroupMembersActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupMembersActivity$5;-><init>(Lcom/perm/kate/GroupMembersActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 201
    new-instance v0, Lcom/perm/kate/GroupMembersActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupMembersActivity$6;-><init>(Lcom/perm/kate/GroupMembersActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 232
    new-instance v0, Lcom/perm/kate/GroupMembersActivity$8;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupMembersActivity$8;-><init>(Lcom/perm/kate/GroupMembersActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->members_load_more_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GroupMembersActivity;)J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/perm/kate/GroupMembersActivity;->gid:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/perm/kate/GroupMembersActivity;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/perm/kate/GroupMembersActivity;->user_page_size:I

    return p0
.end method

.method static synthetic access$1000(Lcom/perm/kate/GroupMembersActivity;)Lcom/perm/utils/ScrollPauser;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/GroupMembersActivity;->pauser:Lcom/perm/utils/ScrollPauser;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/perm/kate/GroupMembersActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/GroupMembersActivity;->members_load_more_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/perm/kate/GroupMembersActivity;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupMembersActivity;->changeSort(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/GroupMembersActivity;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupMembersActivity;->changeFilter(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/GroupMembersActivity;J)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/GroupMembersActivity;->removeMemberInUI(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/GroupMembersActivity;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/GroupMembersActivity;->sort:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/GroupMembersActivity;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/GroupMembersActivity;->filter:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/perm/kate/GroupMembersActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/GroupMembersActivity;->members_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/perm/kate/GroupMembersActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/GroupMembersActivity;->members:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$502(Lcom/perm/kate/GroupMembersActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/perm/kate/GroupMembersActivity;->members:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/perm/kate/GroupMembersActivity;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/perm/kate/GroupMembersActivity;->state:I

    return p0
.end method

.method static synthetic access$602(Lcom/perm/kate/GroupMembersActivity;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/perm/kate/GroupMembersActivity;->state:I

    return p1
.end method

.method static synthetic access$700(Lcom/perm/kate/GroupMembersActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupMembersActivity;->displayDataInUI(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/GroupMembersActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupMembersActivity;->displayData(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/GroupMembersActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/perm/kate/GroupMembersActivity;->loadMore()V

    return-void
.end method

.method private changeFilter(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    const v0, 0x7f0f04fc

    goto :goto_0

    :cond_0
    const v0, 0x7f0f02f0

    const-string p1, "unsure"

    goto :goto_0

    :cond_1
    const v0, 0x7f0f0230

    const-string p1, "friends"

    .line 342
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/GroupMembersActivity;->filter:Ljava/lang/String;

    if-eq v1, p1, :cond_2

    .line 343
    iput-object p1, p0, Lcom/perm/kate/GroupMembersActivity;->filter:Ljava/lang/String;

    .line 344
    iget-object p1, p0, Lcom/perm/kate/GroupMembersActivity;->members:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 345
    iget-object p1, p0, Lcom/perm/kate/GroupMembersActivity;->members:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/perm/kate/GroupMembersActivity;->displayData(Ljava/util/ArrayList;)V

    .line 346
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 347
    invoke-virtual {p0}, Lcom/perm/kate/GroupMembersActivity;->refreshInThread()V

    :cond_2
    return-void
.end method

.method private changeSort(I)V
    .locals 2

    .line 307
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 308
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 309
    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/perm/kate/GroupMembersActivity;->sort:Ljava/lang/String;

    .line 310
    invoke-virtual {p0}, Lcom/perm/kate/GroupMembersActivity;->refreshInThread()V

    :cond_0
    return-void
.end method

.method private displayData(Ljava/util/ArrayList;)V
    .locals 2

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->adapter:Lcom/perm/kate/UsersListAdapter;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/perm/kate/UsersListAdapter;

    invoke-direct {v0, p0}, Lcom/perm/kate/UsersListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->adapter:Lcom/perm/kate/UsersListAdapter;

    .line 131
    iget-object v1, p0, Lcom/perm/kate/GroupMembersActivity;->lv_list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->adapter:Lcom/perm/kate/UsersListAdapter;

    invoke-virtual {v0, p1}, Lcom/perm/kate/UsersListAdapter;->displayData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 135
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 136
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private displayDataInUI(Ljava/util/ArrayList;)V
    .locals 1

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 119
    :cond_0
    new-instance v0, Lcom/perm/kate/GroupMembersActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/GroupMembersActivity$3;-><init>(Lcom/perm/kate/GroupMembersActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadMore()V
    .locals 1

    .line 221
    new-instance v0, Lcom/perm/kate/GroupMembersActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupMembersActivity$7;-><init>(Lcom/perm/kate/GroupMembersActivity;)V

    .line 229
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private removeMemberInUI(J)V
    .locals 5

    .line 375
    iget-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->members:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    .line 376
    iget-wide v2, v1, Lcom/perm/kate/api/User;->uid:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 382
    iget-object p1, p0, Lcom/perm/kate/GroupMembersActivity;->members:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 383
    iget-object p1, p0, Lcom/perm/kate/GroupMembersActivity;->members:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/perm/kate/GroupMembersActivity;->displayDataInUI(Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method private showFilterDialog()V
    .locals 3

    .line 315
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0335

    .line 316
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 317
    iget-boolean v1, p0, Lcom/perm/kate/GroupMembersActivity;->is_event:Z

    if-eqz v1, :cond_0

    const v1, 0x7f030012

    goto :goto_0

    :cond_0
    const v1, 0x7f030011

    :goto_0
    new-instance v2, Lcom/perm/kate/GroupMembersActivity$10;

    invoke-direct {v2, p0}, Lcom/perm/kate/GroupMembersActivity$10;-><init>(Lcom/perm/kate/GroupMembersActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 322
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showSortDialog()V
    .locals 3

    .line 294
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f02ca

    .line 295
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 296
    new-instance v1, Lcom/perm/kate/GroupMembersActivity$9;

    invoke-direct {v1, p0}, Lcom/perm/kate/GroupMembersActivity$9;-><init>(Lcom/perm/kate/GroupMembersActivity;)V

    const v2, 0x7f03001d

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 301
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 302
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 303
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 5

    .line 274
    iget-boolean v0, p0, Lcom/perm/kate/GroupMembersActivity;->is_moder:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x3ec

    const v3, 0x7f0f02ca

    .line 275
    invoke-interface {p1, v2, v1, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    const/16 v0, 0x47

    const/16 v3, 0x1b5d

    const v4, 0x7f0f0335

    .line 276
    invoke-interface {p1, v2, v0, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 48
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0098

    .line 49
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f04fc

    .line 50
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 51
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupSearchButton()V

    .line 52
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.gid"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/GroupMembersActivity;->gid:J

    cmp-long p1, v3, v1

    if-nez p1, :cond_0

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 56
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.is_event"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/GroupMembersActivity;->is_event:Z

    .line 57
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 58
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v2, p0, Lcom/perm/kate/GroupMembersActivity;->gid:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->isModerInGroup(Ljava/lang/Long;J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/GroupMembersActivity;->is_moder:Z

    .line 59
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    const p1, 0x7f090213

    .line 60
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/perm/kate/GroupMembersActivity;->lv_list:Landroid/widget/ListView;

    .line 61
    iget-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 62
    iget-object p1, p0, Lcom/perm/kate/GroupMembersActivity;->lv_list:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    iget-object p1, p0, Lcom/perm/kate/GroupMembersActivity;->lv_list:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/perm/kate/GroupMembersActivity;->refreshInThread()V

    .line 65
    iput v1, p0, Lcom/perm/kate/GroupMembersActivity;->state:I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 268
    invoke-virtual {p0, p1}, Lcom/perm/kate/GroupMembersActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 269
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->lv_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 282
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v2, 0x47

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/GroupMembersActivity;->showFilterDialog()V

    return v1

    .line 284
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/GroupMembersActivity;->showSortDialog()V

    .line 290
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/perm/kate/GroupMembersActivity;->refreshInThread()V

    return-void
.end method

.method protected onSearchButton()V
    .locals 4

    .line 258
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.perm.kate.search_user"

    const/4 v2, 0x1

    .line 259
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 260
    iget-wide v1, p0, Lcom/perm/kate/GroupMembersActivity;->gid:J

    const-string v3, "com.perm.kate.members_for_group"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public refreshInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 75
    new-instance v0, Lcom/perm/kate/GroupMembersActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupMembersActivity$1;-><init>(Lcom/perm/kate/GroupMembersActivity;)V

    .line 82
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public removeUserFromGroup(JJ)V
    .locals 8

    .line 352
    new-instance v6, Lcom/perm/kate/GroupMembersActivity$11;

    invoke-direct {v6, p0, p0, p3, p4}, Lcom/perm/kate/GroupMembersActivity$11;-><init>(Lcom/perm/kate/GroupMembersActivity;Landroid/app/Activity;J)V

    const/4 v0, 0x1

    .line 360
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 361
    new-instance v7, Lcom/perm/kate/GroupMembersActivity$12;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/GroupMembersActivity$12;-><init>(Lcom/perm/kate/GroupMembersActivity;JJLcom/perm/kate/session/Callback;)V

    .line 370
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    return-void
.end method
