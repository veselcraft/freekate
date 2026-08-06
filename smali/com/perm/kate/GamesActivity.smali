.class public Lcom/perm/kate/GamesActivity;
.super Lcom/perm/kate/BaseActivity;
.source "GamesActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/GamesAdapter;

.field private game_callback:Lcom/perm/kate/session/Callback;

.field private lv_list:Landroid/widget/ListView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 47
    new-instance v0, Lcom/perm/kate/GamesActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GamesActivity$2;-><init>(Lcom/perm/kate/GamesActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GamesActivity;->game_callback:Lcom/perm/kate/session/Callback;

    .line 63
    new-instance v0, Lcom/perm/kate/GamesActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/GamesActivity$3;-><init>(Lcom/perm/kate/GamesActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GamesActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GamesActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GamesActivity;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/perm/kate/GamesActivity;->game_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/GamesActivity;)Lcom/perm/kate/GamesAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GamesActivity;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/perm/kate/GamesActivity;->adapter:Lcom/perm/kate/GamesAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/perm/kate/GamesActivity;Lcom/perm/kate/GamesAdapter;)Lcom/perm/kate/GamesAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GamesActivity;
    .param p1, "x1"    # Lcom/perm/kate/GamesAdapter;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/perm/kate/GamesActivity;->adapter:Lcom/perm/kate/GamesAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/perm/kate/GamesActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GamesActivity;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/perm/kate/GamesActivity;->lv_list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/GamesActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GamesActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/perm/kate/GamesActivity;->tryPlayGame(Ljava/lang/String;)V

    return-void
.end method

.method private refreshInThread()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/GamesActivity;->showProgressBar(Z)V

    .line 38
    new-instance v0, Lcom/perm/kate/GamesActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/GamesActivity$1;-><init>(Lcom/perm/kate/GamesActivity;)V

    .line 44
    invoke-virtual {v0}, Lcom/perm/kate/GamesActivity$1;->start()V

    .line 45
    return-void
.end method

.method private tryPlayGame(Ljava/lang/String;)V
    .locals 6
    .param p1, "platform_id"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/perm/kate/GamesActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 74
    .local v0, "LaunchIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0, v0}, Lcom/perm/kate/GamesActivity;->startActivity(Landroid/content/Intent;)V

    .line 83
    :goto_0
    return-void

    .line 78
    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "market://details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/perm/kate/GamesActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "anfe":Landroid/content/ActivityNotFoundException;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/perm/kate/GamesActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f030080

    invoke-virtual {p0, v0}, Lcom/perm/kate/GamesActivity;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lcom/perm/kate/GamesActivity;->setupRefreshButton()V

    .line 25
    const v0, 0x7f0e01a5

    invoke-virtual {p0, v0}, Lcom/perm/kate/GamesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/perm/kate/GamesActivity;->lv_list:Landroid/widget/ListView;

    .line 26
    iget-object v0, p0, Lcom/perm/kate/GamesActivity;->lv_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/GamesActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 27
    const v0, 0x7f07046a

    invoke-virtual {p0, v0}, Lcom/perm/kate/GamesActivity;->setHeaderTitle(I)V

    .line 28
    invoke-direct {p0}, Lcom/perm/kate/GamesActivity;->refreshInThread()V

    .line 29
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/perm/kate/GamesActivity;->adapter:Lcom/perm/kate/GamesAdapter;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/perm/kate/GamesActivity;->adapter:Lcom/perm/kate/GamesAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/GamesAdapter;->Destroy()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/GamesActivity;->lv_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 91
    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/perm/kate/GamesActivity;->refreshInThread()V

    .line 34
    return-void
.end method
