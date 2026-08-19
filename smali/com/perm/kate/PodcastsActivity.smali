.class public Lcom/perm/kate/PodcastsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "PodcastsActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/AudioListAdapter;

.field private audioHelper:Lcom/perm/kate/AudioClickHelper;

.field private btn_clear:Landroid/widget/ImageButton;

.field private callback:Lcom/perm/kate/session/Callback;

.field private filterText:Landroid/widget/EditText;

.field private filterTextWatcher:Landroid/text/TextWatcher;

.field private list:Landroid/widget/ListView;

.field private load_more_callback:Lcom/perm/kate/session/Callback;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private owner_id:J

.field private page_size:I

.field private podcast:Lcom/perm/kate/api/Audio;

.field private podcasts:Ljava/util/ArrayList;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private state:I


# direct methods
.method public static synthetic $r8$lambda$d5Pc1qv96fyw-gEIjZuXeqQ5MNs(Lcom/perm/kate/PodcastsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/perm/kate/PodcastsActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PodcastsActivity;->podcasts:Ljava/util/ArrayList;

    const/16 v0, 0x32

    .line 27
    iput v0, p0, Lcom/perm/kate/PodcastsActivity;->page_size:I

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/perm/kate/PodcastsActivity;->state:I

    .line 68
    new-instance v0, Lcom/perm/kate/PodcastsActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PodcastsActivity$2;-><init>(Lcom/perm/kate/PodcastsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PodcastsActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 105
    new-instance v0, Lcom/perm/kate/PodcastsActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/PodcastsActivity$4;-><init>(Lcom/perm/kate/PodcastsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PodcastsActivity;->filterTextWatcher:Landroid/text/TextWatcher;

    .line 133
    new-instance v0, Lcom/perm/kate/PodcastsActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/PodcastsActivity$5;-><init>(Lcom/perm/kate/PodcastsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PodcastsActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 149
    new-instance v0, Lcom/perm/kate/AudioClickHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/AudioClickHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;)V

    iput-object v0, p0, Lcom/perm/kate/PodcastsActivity;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    .line 150
    new-instance v0, Lcom/perm/kate/PodcastsActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/PodcastsActivity$6;-><init>(Lcom/perm/kate/PodcastsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PodcastsActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 173
    new-instance v0, Lcom/perm/kate/PodcastsActivity$8;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PodcastsActivity$8;-><init>(Lcom/perm/kate/PodcastsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PodcastsActivity;->load_more_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PodcastsActivity;)J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/perm/kate/PodcastsActivity;->owner_id:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/perm/kate/PodcastsActivity;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/perm/kate/PodcastsActivity;->page_size:I

    return p0
.end method

.method static synthetic access$1000(Lcom/perm/kate/PodcastsActivity;)Lcom/perm/kate/api/Audio;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/PodcastsActivity;->podcast:Lcom/perm/kate/api/Audio;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/perm/kate/PodcastsActivity;Lcom/perm/kate/api/Audio;)Lcom/perm/kate/api/Audio;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/perm/kate/PodcastsActivity;->podcast:Lcom/perm/kate/api/Audio;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/perm/kate/PodcastsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/perm/kate/PodcastsActivity;->filter(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/perm/kate/PodcastsActivity;)Lcom/perm/kate/AudioClickHelper;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/PodcastsActivity;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/perm/kate/PodcastsActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/PodcastsActivity;->load_more_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/PodcastsActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/PodcastsActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/PodcastsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/PodcastsActivity;->podcasts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$302(Lcom/perm/kate/PodcastsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/perm/kate/PodcastsActivity;->podcasts:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/perm/kate/PodcastsActivity;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/perm/kate/PodcastsActivity;->state:I

    return p0
.end method

.method static synthetic access$402(Lcom/perm/kate/PodcastsActivity;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/perm/kate/PodcastsActivity;->state:I

    return p1
.end method

.method static synthetic access$500(Lcom/perm/kate/PodcastsActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/perm/kate/PodcastsActivity;->displayDataInUiThread()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/PodcastsActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/perm/kate/PodcastsActivity;->displayData()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/PodcastsActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/PodcastsActivity;->btn_clear:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$800(Lcom/perm/kate/PodcastsActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/perm/kate/PodcastsActivity;->loadMore()V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/PodcastsActivity;)Lcom/perm/kate/AudioListAdapter;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/PodcastsActivity;->adapter:Lcom/perm/kate/AudioListAdapter;

    return-object p0
.end method

.method private displayData()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/perm/kate/PodcastsActivity;->adapter:Lcom/perm/kate/AudioListAdapter;

    iget-object v1, p0, Lcom/perm/kate/PodcastsActivity;->podcasts:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/perm/kate/PodcastsActivity;->filter(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/AudioListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    return-void
.end method

.method private displayDataInUiThread()V
    .locals 1

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 88
    :cond_0
    new-instance v0, Lcom/perm/kate/PodcastsActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/PodcastsActivity$3;-><init>(Lcom/perm/kate/PodcastsActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private filter(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/perm/kate/PodcastsActivity;->filterText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Audio;

    .line 125
    iget-object v3, v2, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    return-object p1
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 1

    .line 50
    iget-object p1, p0, Lcom/perm/kate/PodcastsActivity;->filterText:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private loadMore()V
    .locals 1

    .line 162
    new-instance v0, Lcom/perm/kate/PodcastsActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/PodcastsActivity$7;-><init>(Lcom/perm/kate/PodcastsActivity;)V

    .line 170
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private refresh()V
    .locals 1

    .line 59
    new-instance v0, Lcom/perm/kate/PodcastsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PodcastsActivity$1;-><init>(Lcom/perm/kate/PodcastsActivity;)V

    .line 65
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 198
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 p2, 0xc

    if-ne p1, p2, :cond_0

    const-wide/16 p1, 0x0

    const-string v0, "group_id"

    .line 200
    invoke-virtual {p3, v0, p1, p2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    .line 201
    iget-object p3, p0, Lcom/perm/kate/PodcastsActivity;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    iget-object v0, p0, Lcom/perm/kate/PodcastsActivity;->podcast:Lcom/perm/kate/api/Audio;

    const-wide/16 v1, -0x1

    mul-long p1, p1, v1

    invoke-virtual {p3, v0, p1, p2}, Lcom/perm/kate/AudioClickHelper;->sendToWall(Lcom/perm/kate/api/Audio;J)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 40
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00f8

    .line 41
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f03f6

    .line 42
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 43
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    const p1, 0x7f09020a

    .line 44
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/perm/kate/PodcastsActivity;->list:Landroid/widget/ListView;

    .line 45
    iget-object v0, p0, Lcom/perm/kate/PodcastsActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 46
    iget-object p1, p0, Lcom/perm/kate/PodcastsActivity;->list:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/perm/kate/PodcastsActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p1, 0x7f090132

    .line 47
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/PodcastsActivity;->filterText:Landroid/widget/EditText;

    .line 48
    iget-object v0, p0, Lcom/perm/kate/PodcastsActivity;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p1, 0x7f0900be

    .line 49
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/perm/kate/PodcastsActivity;->btn_clear:Landroid/widget/ImageButton;

    .line 50
    new-instance v0, Lcom/perm/kate/PodcastsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/perm/kate/PodcastsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/PodcastsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.owner_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/PodcastsActivity;->owner_id:J

    .line 53
    new-instance p1, Lcom/perm/kate/AudioListAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/perm/kate/AudioListAdapter;-><init>(Landroid/app/Activity;I)V

    iput-object p1, p0, Lcom/perm/kate/PodcastsActivity;->adapter:Lcom/perm/kate/AudioListAdapter;

    .line 54
    iget-object v0, p0, Lcom/perm/kate/PodcastsActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    invoke-direct {p0}, Lcom/perm/kate/PodcastsActivity;->refresh()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/perm/kate/PodcastsActivity;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    invoke-virtual {v0}, Lcom/perm/kate/AudioClickHelper;->destroy()V

    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Lcom/perm/kate/PodcastsActivity;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    .line 209
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/perm/kate/PodcastsActivity;->refresh()V

    return-void
.end method
