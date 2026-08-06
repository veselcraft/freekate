.class public Lcom/perm/kate/RequestsToGroupActivity;
.super Lcom/perm/kate/BaseActivity;
.source "RequestsToGroupActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/RequestsToGroupListAdapter;

.field private callback:Lcom/perm/kate/session/Callback;

.field private group_id:J

.field private load_more_callback:Lcom/perm/kate/session/Callback;

.field private lv_list:Landroid/widget/ListView;

.field private members:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private pauser:Lcom/perm/utils/ScrollPauser;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private state:I

.field private user_page_size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 25
    const/16 v0, 0x32

    iput v0, p0, Lcom/perm/kate/RequestsToGroupActivity;->user_page_size:I

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/perm/kate/RequestsToGroupActivity;->state:I

    .line 32
    new-instance v0, Lcom/perm/utils/ScrollPauser;

    invoke-direct {v0}, Lcom/perm/utils/ScrollPauser;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/RequestsToGroupActivity;->pauser:Lcom/perm/utils/ScrollPauser;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/RequestsToGroupActivity;->members:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Lcom/perm/kate/RequestsToGroupActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/RequestsToGroupActivity$2;-><init>(Lcom/perm/kate/RequestsToGroupActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/RequestsToGroupActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 116
    new-instance v0, Lcom/perm/kate/RequestsToGroupActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/RequestsToGroupActivity$4;-><init>(Lcom/perm/kate/RequestsToGroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/RequestsToGroupActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 130
    new-instance v0, Lcom/perm/kate/RequestsToGroupActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/RequestsToGroupActivity$5;-><init>(Lcom/perm/kate/RequestsToGroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/RequestsToGroupActivity;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 166
    new-instance v0, Lcom/perm/kate/RequestsToGroupActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/RequestsToGroupActivity$6;-><init>(Lcom/perm/kate/RequestsToGroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/RequestsToGroupActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 196
    new-instance v0, Lcom/perm/kate/RequestsToGroupActivity$8;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/RequestsToGroupActivity$8;-><init>(Lcom/perm/kate/RequestsToGroupActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/RequestsToGroupActivity;->load_more_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/RequestsToGroupActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/RequestsToGroupActivity;

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/perm/kate/RequestsToGroupActivity;->group_id:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/perm/kate/RequestsToGroupActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/RequestsToGroupActivity;

    .prologue
    .line 20
    iget v0, p0, Lcom/perm/kate/RequestsToGroupActivity;->user_page_size:I

    return v0
.end method

.method static synthetic access$200(Lcom/perm/kate/RequestsToGroupActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/RequestsToGroupActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/RequestsToGroupActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/RequestsToGroupActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupActivity;->members:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/perm/kate/RequestsToGroupActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/RequestsToGroupActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/perm/kate/RequestsToGroupActivity;->members:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/perm/kate/RequestsToGroupActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/RequestsToGroupActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/perm/kate/RequestsToGroupActivity;->displayDataInUI(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/RequestsToGroupActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/RequestsToGroupActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/perm/kate/RequestsToGroupActivity;->displayData(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/RequestsToGroupActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/RequestsToGroupActivity;

    .prologue
    .line 20
    iget v0, p0, Lcom/perm/kate/RequestsToGroupActivity;->state:I

    return v0
.end method

.method static synthetic access$602(Lcom/perm/kate/RequestsToGroupActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/RequestsToGroupActivity;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/perm/kate/RequestsToGroupActivity;->state:I

    return p1
.end method

.method static synthetic access$700(Lcom/perm/kate/RequestsToGroupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/RequestsToGroupActivity;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/perm/kate/RequestsToGroupActivity;->loadMore()V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/RequestsToGroupActivity;)Lcom/perm/utils/ScrollPauser;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/RequestsToGroupActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupActivity;->pauser:Lcom/perm/utils/ScrollPauser;

    return-object v0
.end method

.method static synthetic access$900(Lcom/perm/kate/RequestsToGroupActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/RequestsToGroupActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupActivity;->load_more_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method private displayData(Ljava/util/ArrayList;)V
    .locals 4
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
    .line 104
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/RequestsToGroupActivity;->adapter:Lcom/perm/kate/RequestsToGroupListAdapter;

    if-nez v1, :cond_0

    .line 105
    new-instance v1, Lcom/perm/kate/RequestsToGroupListAdapter;

    iget-wide v2, p0, Lcom/perm/kate/RequestsToGroupActivity;->group_id:J

    invoke-direct {v1, v2, v3, p0}, Lcom/perm/kate/RequestsToGroupListAdapter;-><init>(JLandroid/app/Activity;)V

    iput-object v1, p0, Lcom/perm/kate/RequestsToGroupActivity;->adapter:Lcom/perm/kate/RequestsToGroupListAdapter;

    .line 106
    iget-object v1, p0, Lcom/perm/kate/RequestsToGroupActivity;->lv_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/RequestsToGroupActivity;->adapter:Lcom/perm/kate/RequestsToGroupListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/RequestsToGroupActivity;->adapter:Lcom/perm/kate/RequestsToGroupListAdapter;

    invoke-virtual {v1, p1}, Lcom/perm/kate/RequestsToGroupListAdapter;->displayData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/RequestsToGroupActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 112
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
    .line 92
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    invoke-virtual {p0}, Lcom/perm/kate/RequestsToGroupActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 94
    :cond_0
    new-instance v0, Lcom/perm/kate/RequestsToGroupActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/RequestsToGroupActivity$3;-><init>(Lcom/perm/kate/RequestsToGroupActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/RequestsToGroupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private loadMore()V
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lcom/perm/kate/RequestsToGroupActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/RequestsToGroupActivity$7;-><init>(Lcom/perm/kate/RequestsToGroupActivity;)V

    .line 193
    invoke-virtual {v0}, Lcom/perm/kate/RequestsToGroupActivity$7;->start()V

    .line 194
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f03008b

    invoke-virtual {p0, v0}, Lcom/perm/kate/RequestsToGroupActivity;->setContentView(I)V

    .line 40
    const v0, 0x7f070248

    invoke-virtual {p0, v0}, Lcom/perm/kate/RequestsToGroupActivity;->setHeaderTitle(I)V

    .line 41
    invoke-virtual {p0}, Lcom/perm/kate/RequestsToGroupActivity;->setupRefreshButton()V

    .line 42
    invoke-virtual {p0}, Lcom/perm/kate/RequestsToGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.group_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/RequestsToGroupActivity;->group_id:J

    .line 43
    iget-wide v0, p0, Lcom/perm/kate/RequestsToGroupActivity;->group_id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/perm/kate/RequestsToGroupActivity;->finish()V

    .line 45
    :cond_0
    const v0, 0x7f0e00c8

    invoke-virtual {p0, v0}, Lcom/perm/kate/RequestsToGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/perm/kate/RequestsToGroupActivity;->lv_list:Landroid/widget/ListView;

    .line 46
    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupActivity;->lv_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/RequestsToGroupActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 47
    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupActivity;->lv_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/RequestsToGroupActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupActivity;->lv_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/RequestsToGroupActivity;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 49
    invoke-virtual {p0}, Lcom/perm/kate/RequestsToGroupActivity;->refreshInThread()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/perm/kate/RequestsToGroupActivity;->state:I

    .line 51
    invoke-virtual {p0}, Lcom/perm/kate/RequestsToGroupActivity;->refreshInThread()V

    .line 52
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 224
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 225
    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupActivity;->lv_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupActivity;->lv_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 227
    :cond_0
    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/perm/kate/RequestsToGroupActivity;->refreshInThread()V

    .line 57
    return-void
.end method

.method public refreshInThread()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/RequestsToGroupActivity;->showProgressBar(Z)V

    .line 61
    new-instance v0, Lcom/perm/kate/RequestsToGroupActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/RequestsToGroupActivity$1;-><init>(Lcom/perm/kate/RequestsToGroupActivity;)V

    .line 68
    invoke-virtual {v0}, Lcom/perm/kate/RequestsToGroupActivity$1;->start()V

    .line 69
    return-void
.end method
