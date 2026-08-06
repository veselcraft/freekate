.class public Lcom/perm/kate/PollVotersActivity;
.super Lcom/perm/kate/BaseActivity;
.source "PollVotersActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/UsersListAdapter;

.field private answer_id:J

.field private fields:Ljava/lang/String;

.field private lv_user_list:Landroid/widget/ListView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private owner_id:J

.field private pauser:Lcom/perm/utils/ScrollPauser;

.field private poll_id:J

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private state:I

.field private topic_id:J

.field private user_page_size:J

.field private voters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;"
        }
    .end annotation
.end field

.field private voters_callback:Lcom/perm/kate/session/Callback;

.field private voters_load_more_callback:Lcom/perm/kate/session/Callback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 33
    const-string v0, "first_name,last_name,online,photo_100"

    iput-object v0, p0, Lcom/perm/kate/PollVotersActivity;->fields:Ljava/lang/String;

    .line 35
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/perm/kate/PollVotersActivity;->user_page_size:J

    .line 36
    const/4 v0, -0x1

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
    .param p0, "x0"    # Lcom/perm/kate/PollVotersActivity;

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/perm/kate/PollVotersActivity;->answer_id:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/perm/kate/PollVotersActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/PollVotersActivity;

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/perm/kate/PollVotersActivity;->poll_id:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/PollVotersActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PollVotersActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/perm/kate/PollVotersActivity;->loadMore()V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/PollVotersActivity;)Lcom/perm/utils/ScrollPauser;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PollVotersActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity;->pauser:Lcom/perm/utils/ScrollPauser;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/perm/kate/PollVotersActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PollVotersActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity;->voters_load_more_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/perm/kate/PollVotersActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PollVotersActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/perm/kate/PollVotersActivity;->displayData(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/PollVotersActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/PollVotersActivity;

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/perm/kate/PollVotersActivity;->owner_id:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/perm/kate/PollVotersActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/PollVotersActivity;

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/perm/kate/PollVotersActivity;->user_page_size:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/perm/kate/PollVotersActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PollVotersActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity;->fields:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/perm/kate/PollVotersActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/PollVotersActivity;

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/perm/kate/PollVotersActivity;->topic_id:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/perm/kate/PollVotersActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PollVotersActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity;->voters_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/perm/kate/PollVotersActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PollVotersActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity;->voters:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/perm/kate/PollVotersActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PollVotersActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/perm/kate/PollVotersActivity;->voters:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/perm/kate/PollVotersActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PollVotersActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/perm/kate/PollVotersActivity;->displayDataInUI(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/PollVotersActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PollVotersActivity;

    .prologue
    .line 23
    iget v0, p0, Lcom/perm/kate/PollVotersActivity;->state:I

    return v0
.end method

.method static synthetic access$902(Lcom/perm/kate/PollVotersActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PollVotersActivity;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/perm/kate/PollVotersActivity;->state:I

    return p1
.end method

.method private displayData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/PollVotersActivity;->adapter:Lcom/perm/kate/UsersListAdapter;

    if-nez v1, :cond_0

    .line 242
    new-instance v1, Lcom/perm/kate/UsersListAdapter;

    invoke-direct {v1, p0}, Lcom/perm/kate/UsersListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/perm/kate/PollVotersActivity;->adapter:Lcom/perm/kate/UsersListAdapter;

    .line 243
    iget-object v1, p0, Lcom/perm/kate/PollVotersActivity;->lv_user_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/PollVotersActivity;->adapter:Lcom/perm/kate/UsersListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/PollVotersActivity;->adapter:Lcom/perm/kate/UsersListAdapter;

    invoke-virtual {v1, p1}, Lcom/perm/kate/UsersListAdapter;->displayData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 248
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/PollVotersActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private displayDataInUI(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    invoke-virtual {p0}, Lcom/perm/kate/PollVotersActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 231
    :cond_0
    new-instance v0, Lcom/perm/kate/PollVotersActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/PollVotersActivity$8;-><init>(Lcom/perm/kate/PollVotersActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/PollVotersActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private loadMore()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/perm/kate/PollVotersActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/PollVotersActivity$6;-><init>(Lcom/perm/kate/PollVotersActivity;)V

    .line 199
    invoke-virtual {v0}, Lcom/perm/kate/PollVotersActivity$6;->start()V

    .line 200
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, 0x0

    .line 47
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v1, 0x7f03007c

    invoke-virtual {p0, v1}, Lcom/perm/kate/PollVotersActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/perm/kate/PollVotersActivity;->setupRefreshButton()V

    .line 50
    invoke-virtual {p0}, Lcom/perm/kate/PollVotersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.answer_id"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/PollVotersActivity;->answer_id:J

    .line 51
    invoke-virtual {p0}, Lcom/perm/kate/PollVotersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.poll_id"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/PollVotersActivity;->poll_id:J

    .line 52
    invoke-virtual {p0}, Lcom/perm/kate/PollVotersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.owner_id"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/PollVotersActivity;->owner_id:J

    .line 53
    invoke-virtual {p0}, Lcom/perm/kate/PollVotersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.topic_id"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/PollVotersActivity;->topic_id:J

    .line 54
    invoke-virtual {p0}, Lcom/perm/kate/PollVotersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/perm/kate/PollVotersActivity;->setHeaderTitle(Ljava/lang/String;)V

    .line 56
    const v1, 0x7f0e00d6

    invoke-virtual {p0, v1}, Lcom/perm/kate/PollVotersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/perm/kate/PollVotersActivity;->lv_user_list:Landroid/widget/ListView;

    .line 57
    iget-object v1, p0, Lcom/perm/kate/PollVotersActivity;->lv_user_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/PollVotersActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 58
    iget-object v1, p0, Lcom/perm/kate/PollVotersActivity;->lv_user_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/PollVotersActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 59
    iget-object v1, p0, Lcom/perm/kate/PollVotersActivity;->lv_user_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/PollVotersActivity;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 60
    invoke-virtual {p0}, Lcom/perm/kate/PollVotersActivity;->refreshInThread()V

    .line 61
    const/4 v1, 0x0

    iput v1, p0, Lcom/perm/kate/PollVotersActivity;->state:I

    .line 62
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 119
    const/4 v0, 0x0

    const/16 v1, 0x17

    const/16 v2, 0x1f4

    const v3, 0x7f0703a5

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 120
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity;->lv_user_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 105
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 125
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 130
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 127
    :pswitch_0
    invoke-virtual {p0}, Lcom/perm/kate/PollVotersActivity;->refreshInThread()V

    .line 128
    const/4 v0, 0x1

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/perm/kate/PollVotersActivity;->refreshInThread()V

    .line 67
    return-void
.end method

.method refreshInThread()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/PollVotersActivity;->showProgressBar(Z)V

    .line 71
    new-instance v0, Lcom/perm/kate/PollVotersActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PollVotersActivity$1;-><init>(Lcom/perm/kate/PollVotersActivity;)V

    .line 78
    invoke-virtual {v0}, Lcom/perm/kate/PollVotersActivity$1;->start()V

    .line 79
    return-void
.end method
