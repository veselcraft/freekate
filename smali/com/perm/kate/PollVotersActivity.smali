.class public Lcom/perm/kate/PollVotersActivity;
.super Lcom/perm/kate/BaseActivity;
.source "PollVotersActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/UsersListAdapter;

.field private answer_id:J

.field private fields:Ljava/lang/String;

.field private is_board:Z

.field private lv_user_list:Landroid/widget/ListView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private owner_id:J

.field private pauser:Lcom/perm/utils/ScrollPauser;

.field private poll_id:J

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private state:I

.field private user_page_size:J

.field private voters:Ljava/util/ArrayList;

.field private voters_callback:Lcom/perm/kate/session/Callback;

.field private voters_load_more_callback:Lcom/perm/kate/session/Callback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const-string v0, "first_name,last_name,online,photo_100"

    .line 33
    iput-object v0, p0, Lcom/perm/kate/PollVotersActivity;->fields:Ljava/lang/String;

    const-wide/16 v0, 0x32

    .line 35
    iput-wide v0, p0, Lcom/perm/kate/PollVotersActivity;->user_page_size:J

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/perm/kate/PollVotersActivity;->state:I

    .line 42
    new-instance v0, Lcom/perm/utils/ScrollPauser;

    invoke-direct {v0}, Lcom/perm/utils/ScrollPauser;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PollVotersActivity;->pauser:Lcom/perm/utils/ScrollPauser;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PollVotersActivity;->voters:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Lcom/perm/kate/PollVotersActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PollVotersActivity$2;-><init>(Lcom/perm/kate/PollVotersActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PollVotersActivity;->voters_callback:Lcom/perm/kate/session/Callback;

    .line 107
    new-instance v0, Lcom/perm/kate/PollVotersActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/PollVotersActivity$3;-><init>(Lcom/perm/kate/PollVotersActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PollVotersActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 136
    new-instance v0, Lcom/perm/kate/PollVotersActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/PollVotersActivity$4;-><init>(Lcom/perm/kate/PollVotersActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PollVotersActivity;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 169
    new-instance v0, Lcom/perm/kate/PollVotersActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/PollVotersActivity$5;-><init>(Lcom/perm/kate/PollVotersActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PollVotersActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 202
    new-instance v0, Lcom/perm/kate/PollVotersActivity$7;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PollVotersActivity$7;-><init>(Lcom/perm/kate/PollVotersActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PollVotersActivity;->voters_load_more_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PollVotersActivity;)J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/perm/kate/PollVotersActivity;->answer_id:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/perm/kate/PollVotersActivity;)J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/perm/kate/PollVotersActivity;->poll_id:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/PollVotersActivity;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/perm/kate/PollVotersActivity;->loadMore()V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/PollVotersActivity;)Lcom/perm/utils/ScrollPauser;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/perm/kate/PollVotersActivity;->pauser:Lcom/perm/utils/ScrollPauser;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/perm/kate/PollVotersActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/perm/kate/PollVotersActivity;->voters_load_more_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/perm/kate/PollVotersActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/perm/kate/PollVotersActivity;->displayData(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/PollVotersActivity;)J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/perm/kate/PollVotersActivity;->owner_id:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/perm/kate/PollVotersActivity;)J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/perm/kate/PollVotersActivity;->user_page_size:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/perm/kate/PollVotersActivity;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/perm/kate/PollVotersActivity;->fields:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/perm/kate/PollVotersActivity;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/perm/kate/PollVotersActivity;->is_board:Z

    return p0
.end method

.method static synthetic access$600(Lcom/perm/kate/PollVotersActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/perm/kate/PollVotersActivity;->voters_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/perm/kate/PollVotersActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/perm/kate/PollVotersActivity;->voters:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$702(Lcom/perm/kate/PollVotersActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/perm/kate/PollVotersActivity;->voters:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/perm/kate/PollVotersActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/perm/kate/PollVotersActivity;->displayDataInUI(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/PollVotersActivity;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/perm/kate/PollVotersActivity;->state:I

    return p0
.end method

.method static synthetic access$902(Lcom/perm/kate/PollVotersActivity;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/perm/kate/PollVotersActivity;->state:I

    return p1
.end method

.method private displayData(Ljava/util/ArrayList;)V
    .locals 2

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity;->adapter:Lcom/perm/kate/UsersListAdapter;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Lcom/perm/kate/UsersListAdapter;

    invoke-direct {v0, p0}, Lcom/perm/kate/UsersListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PollVotersActivity;->adapter:Lcom/perm/kate/UsersListAdapter;

    .line 243
    iget-object v1, p0, Lcom/perm/kate/PollVotersActivity;->lv_user_list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity;->adapter:Lcom/perm/kate/UsersListAdapter;

    invoke-virtual {v0, p1}, Lcom/perm/kate/UsersListAdapter;->displayData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 247
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 248
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private displayDataInUI(Ljava/util/ArrayList;)V
    .locals 1

    .line 229
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 231
    :cond_0
    new-instance v0, Lcom/perm/kate/PollVotersActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/PollVotersActivity$8;-><init>(Lcom/perm/kate/PollVotersActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadMore()V
    .locals 1

    .line 189
    new-instance v0, Lcom/perm/kate/PollVotersActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/PollVotersActivity$6;-><init>(Lcom/perm/kate/PollVotersActivity;)V

    .line 199
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 47
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0089

    .line 48
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.answer_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/PollVotersActivity;->answer_id:J

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.poll_id"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/PollVotersActivity;->poll_id:J

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.owner_id"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/PollVotersActivity;->owner_id:J

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.is_board"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/PollVotersActivity;->is_board:Z

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(Ljava/lang/String;)V

    const p1, 0x7f09021e

    .line 56
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/perm/kate/PollVotersActivity;->lv_user_list:Landroid/widget/ListView;

    .line 57
    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 58
    iget-object p1, p0, Lcom/perm/kate/PollVotersActivity;->lv_user_list:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 59
    iget-object p1, p0, Lcom/perm/kate/PollVotersActivity;->lv_user_list:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 60
    invoke-virtual {p0}, Lcom/perm/kate/PollVotersActivity;->refreshInThread()V

    .line 61
    iput v1, p0, Lcom/perm/kate/PollVotersActivity;->state:I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x17

    const/16 v2, 0x1f4

    const v3, 0x7f0f0422

    .line 119
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 120
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity;->lv_user_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 125
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/PollVotersActivity;->refreshInThread()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/perm/kate/PollVotersActivity;->refreshInThread()V

    return-void
.end method

.method refreshInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 70
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 71
    new-instance v0, Lcom/perm/kate/PollVotersActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PollVotersActivity$1;-><init>(Lcom/perm/kate/PollVotersActivity;)V

    .line 78
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
