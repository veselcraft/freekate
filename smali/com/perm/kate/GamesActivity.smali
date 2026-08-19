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

    .line 15
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 47
    new-instance v0, Lcom/perm/kate/GamesActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GamesActivity$2;-><init>(Lcom/perm/kate/GamesActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GamesActivity;->game_callback:Lcom/perm/kate/session/Callback;

    .line 81
    new-instance v0, Lcom/perm/kate/GamesActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/GamesActivity$3;-><init>(Lcom/perm/kate/GamesActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GamesActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GamesActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/perm/kate/GamesActivity;->game_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/GamesActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/perm/kate/GamesActivity;->removeAds(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/GamesActivity;)Lcom/perm/kate/GamesAdapter;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/perm/kate/GamesActivity;->adapter:Lcom/perm/kate/GamesAdapter;

    return-object p0
.end method

.method static synthetic access$202(Lcom/perm/kate/GamesActivity;Lcom/perm/kate/GamesAdapter;)Lcom/perm/kate/GamesAdapter;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/perm/kate/GamesActivity;->adapter:Lcom/perm/kate/GamesAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/perm/kate/GamesActivity;)Landroid/widget/ListView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/perm/kate/GamesActivity;->lv_list:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/perm/kate/GamesActivity;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/perm/kate/GamesActivity;->tryPlayGame(Ljava/lang/String;)V

    return-void
.end method

.method private refreshInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 37
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 38
    new-instance v0, Lcom/perm/kate/GamesActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/GamesActivity$1;-><init>(Lcom/perm/kate/GamesActivity;)V

    .line 44
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private removeAds(Ljava/util/ArrayList;)V
    .locals 4

    .line 70
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Game;

    .line 71
    iget-object v2, v1, Lcom/perm/kate/api/Game;->platform_id:Ljava/lang/String;

    const-string v3, "com.topface.topface"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private tryPlayGame(Ljava/lang/String;)V
    .locals 4

    const-string v0, "android.intent.action.VIEW"

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 96
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 22
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c008d

    .line 23
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    const p1, 0x7f090212

    .line 25
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/perm/kate/GamesActivity;->lv_list:Landroid/widget/ListView;

    .line 26
    iget-object v0, p0, Lcom/perm/kate/GamesActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p1, 0x7f0f04fa

    .line 27
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 28
    invoke-direct {p0}, Lcom/perm/kate/GamesActivity;->refreshInThread()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/perm/kate/GamesActivity;->adapter:Lcom/perm/kate/GamesAdapter;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/perm/kate/GamesAdapter;->Destroy()V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/GamesActivity;->lv_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/perm/kate/GamesActivity;->refreshInThread()V

    return-void
.end method
