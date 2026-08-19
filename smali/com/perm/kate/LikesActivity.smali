.class public Lcom/perm/kate/LikesActivity;
.super Lcom/perm/kate/BaseActivity;
.source "LikesActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/LikesAdapter;

.field private callback:Lcom/perm/kate/session/Callback;

.field private callbackViewers:Lcom/perm/kate/session/Callback;

.field private callback_more:Lcom/perm/kate/session/Callback;

.field private filter:Ljava/lang/String;

.field private item_id:Ljava/lang/Long;

.field private item_type:Ljava/lang/String;

.field private lv_user_list:Landroid/widget/ListView;

.field private offset:I

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private owner_id:Ljava/lang/Long;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private state:I

.field private story_id:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/perm/kate/LikesActivity;->filter:Ljava/lang/String;

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/perm/kate/LikesActivity;->state:I

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/perm/kate/LikesActivity;->offset:I

    .line 77
    new-instance v0, Lcom/perm/kate/LikesActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/LikesActivity$2;-><init>(Lcom/perm/kate/LikesActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/LikesActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 123
    new-instance v0, Lcom/perm/kate/LikesActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/LikesActivity$3;-><init>(Lcom/perm/kate/LikesActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/LikesActivity;->callbackViewers:Lcom/perm/kate/session/Callback;

    .line 158
    new-instance v0, Lcom/perm/kate/LikesActivity$5;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/LikesActivity$5;-><init>(Lcom/perm/kate/LikesActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/LikesActivity;->callback_more:Lcom/perm/kate/session/Callback;

    .line 197
    new-instance v0, Lcom/perm/kate/LikesActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/LikesActivity$6;-><init>(Lcom/perm/kate/LikesActivity;)V

    iput-object v0, p0, Lcom/perm/kate/LikesActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 216
    new-instance v0, Lcom/perm/kate/LikesActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/LikesActivity$7;-><init>(Lcom/perm/kate/LikesActivity;)V

    iput-object v0, p0, Lcom/perm/kate/LikesActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/LikesActivity;)J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/perm/kate/LikesActivity;->story_id:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/perm/kate/LikesActivity;)Ljava/lang/Long;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/perm/kate/LikesActivity;->owner_id:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/perm/kate/LikesActivity;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/perm/kate/LikesActivity;->state:I

    return p0
.end method

.method static synthetic access$1002(Lcom/perm/kate/LikesActivity;I)I
    .locals 0

    .line 16
    iput p1, p0, Lcom/perm/kate/LikesActivity;->state:I

    return p1
.end method

.method static synthetic access$1100(Lcom/perm/kate/LikesActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/perm/kate/LikesActivity;->callback_more:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/perm/kate/LikesActivity;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/perm/kate/LikesActivity;->loadMore()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/LikesActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/perm/kate/LikesActivity;->callbackViewers:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/LikesActivity;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/perm/kate/LikesActivity;->item_type:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/perm/kate/LikesActivity;)Ljava/lang/Long;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/perm/kate/LikesActivity;->item_id:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$500(Lcom/perm/kate/LikesActivity;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/perm/kate/LikesActivity;->filter:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/perm/kate/LikesActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/perm/kate/LikesActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/perm/kate/LikesActivity;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/perm/kate/LikesActivity;->offset:I

    return p0
.end method

.method static synthetic access$702(Lcom/perm/kate/LikesActivity;I)I
    .locals 0

    .line 16
    iput p1, p0, Lcom/perm/kate/LikesActivity;->offset:I

    return p1
.end method

.method static synthetic access$800(Lcom/perm/kate/LikesActivity;)Lcom/perm/kate/LikesAdapter;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/perm/kate/LikesActivity;->adapter:Lcom/perm/kate/LikesAdapter;

    return-object p0
.end method

.method static synthetic access$802(Lcom/perm/kate/LikesActivity;Lcom/perm/kate/LikesAdapter;)Lcom/perm/kate/LikesAdapter;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/perm/kate/LikesActivity;->adapter:Lcom/perm/kate/LikesAdapter;

    return-object p1
.end method

.method static synthetic access$900(Lcom/perm/kate/LikesActivity;)Landroid/widget/ListView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/perm/kate/LikesActivity;->lv_user_list:Landroid/widget/ListView;

    return-object p0
.end method

.method private loadMore()V
    .locals 1

    .line 150
    new-instance v0, Lcom/perm/kate/LikesActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/LikesActivity$4;-><init>(Lcom/perm/kate/LikesActivity;)V

    .line 155
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private refreshInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 58
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 59
    iput v0, p0, Lcom/perm/kate/LikesActivity;->state:I

    .line 60
    new-instance v0, Lcom/perm/kate/LikesActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/LikesActivity$1;-><init>(Lcom/perm/kate/LikesActivity;)V

    .line 69
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x17

    const/16 v2, 0x1f4

    const v3, 0x7f0f0422

    .line 246
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 37
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00a4

    .line 38
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    const p1, 0x7f09021e

    .line 40
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/perm/kate/LikesActivity;->lv_user_list:Landroid/widget/ListView;

    .line 41
    iget-object v0, p0, Lcom/perm/kate/LikesActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 42
    iget-object p1, p0, Lcom/perm/kate/LikesActivity;->lv_user_list:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/perm/kate/LikesActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.item_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/LikesActivity;->item_id:Ljava/lang/Long;

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "story_id"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/LikesActivity;->story_id:J

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.owner_id"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/LikesActivity;->owner_id:Ljava/lang/Long;

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.item_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/LikesActivity;->item_type:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.is_copies"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string v0, "copies"

    .line 49
    iput-object v0, p0, Lcom/perm/kate/LikesActivity;->filter:Ljava/lang/String;

    .line 50
    :cond_0
    iget-wide v3, p0, Lcom/perm/kate/LikesActivity;->story_id:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    const p1, 0x7f0f02f5

    .line 51
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    const p1, 0x7f0f05a3

    goto :goto_0

    :cond_2
    const p1, 0x7f0f05a2

    .line 53
    :goto_0
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 54
    :goto_1
    invoke-direct {p0}, Lcom/perm/kate/LikesActivity;->refreshInThread()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 238
    invoke-virtual {p0, p1}, Lcom/perm/kate/LikesActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 239
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/perm/kate/LikesActivity;->lv_user_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 233
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 252
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    .line 257
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 254
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/LikesActivity;->refreshInThread()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/perm/kate/LikesActivity;->refreshInThread()V

    return-void
.end method
