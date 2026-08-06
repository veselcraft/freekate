.class public Lcom/perm/kate/AccountsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "AccountsActivity.java"


# instance fields
.field private final REQUEST_LOGIN:I

.field private clickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field list:Landroid/widget/ListView;

.field private listener:Landroid/view/View$OnClickListener;

.field private longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 50
    new-instance v0, Lcom/perm/kate/AccountsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/AccountsActivity$1;-><init>(Lcom/perm/kate/AccountsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/AccountsActivity;->listener:Landroid/view/View$OnClickListener;

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/perm/kate/AccountsActivity;->REQUEST_LOGIN:I

    .line 102
    new-instance v0, Lcom/perm/kate/AccountsActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/AccountsActivity$3;-><init>(Lcom/perm/kate/AccountsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/AccountsActivity;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 121
    new-instance v0, Lcom/perm/kate/AccountsActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/AccountsActivity$4;-><init>(Lcom/perm/kate/AccountsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/AccountsActivity;->longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/AccountsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AccountsActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/perm/kate/AccountsActivity;->startLoginActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/AccountsActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AccountsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/perm/kate/AccountsActivity;->removeAccount(I)V

    return-void
.end method

.method private getGroups()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/perm/kate/AccountsActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/AccountsActivity$2;-><init>(Lcom/perm/kate/AccountsActivity;)V

    .line 99
    invoke-virtual {v0}, Lcom/perm/kate/AccountsActivity$2;->start()V

    .line 100
    return-void
.end method

.method private removeAccount(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 148
    sget-object v2, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    iget-object v2, v2, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/account/Account;

    .line 149
    .local v0, "a":Lcom/perm/kate/account/Account;
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    sget-object v2, Lcom/perm/kate/KApplication;->longPoll:Lcom/perm/kate/LongPoll;

    invoke-virtual {v2}, Lcom/perm/kate/LongPoll;->stop()V

    .line 151
    sget-object v2, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/perm/kate/Online;->stop(Z)V

    .line 152
    const/4 v2, 0x0

    sput-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    .line 154
    :cond_0
    sget-object v2, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    iget-object v2, v2, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 155
    sget-object v2, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    invoke-virtual {v2}, Lcom/perm/kate/account/AccountManager;->saveAccounts()V

    .line 156
    sget-object v2, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/session/Session;

    .line 157
    .local v1, "session":Lcom/perm/kate/session/Session;
    sget-object v2, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 158
    iget-object v2, v0, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    invoke-static {v2}, Lcom/perm/kate/KApplication;->removeGroupSessions(Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Lcom/perm/kate/AccountsActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 160
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 161
    invoke-static {p0}, Lcom/perm/kate/KateWidgetMessages;->updateAll(Landroid/content/Context;)V

    .line 163
    :cond_1
    iget-boolean v2, v0, Lcom/perm/kate/account/Account;->push_registered:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/perm/kate/push/Push;->token:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 164
    new-instance v2, Lcom/perm/kate/AccountsActivity$5;

    invoke-direct {v2, p0, v1}, Lcom/perm/kate/AccountsActivity$5;-><init>(Lcom/perm/kate/AccountsActivity;Lcom/perm/kate/session/Session;)V

    .line 169
    invoke-virtual {v2}, Lcom/perm/kate/AccountsActivity$5;->start()V

    .line 170
    :cond_2
    return-void
.end method

.method private startLoginActivity()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/perm/kate/Helper;->getLoginActivity()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 60
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/AccountsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 61
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 67
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 68
    if-ne p2, v1, :cond_1

    .line 70
    invoke-static {v2}, Lcom/perm/kate/audio_cache/AudioCache;->fixCacheIfRequired(Z)V

    .line 71
    invoke-static {v2}, Lcom/perm/kate/video_cache/VideoCache;->fixCacheIfRequired(Z)V

    .line 75
    invoke-direct {p0}, Lcom/perm/kate/AccountsActivity;->getGroups()V

    .line 77
    invoke-virtual {p0, v1}, Lcom/perm/kate/AccountsActivity;->setResult(I)V

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 79
    invoke-static {p0}, Lcom/perm/kate/KateWidgetMessages;->updateAll(Landroid/content/Context;)V

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/AccountsActivity;->finish()V

    .line 83
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v1, 0x7f03001b

    invoke-virtual {p0, v1}, Lcom/perm/kate/AccountsActivity;->setContentView(I)V

    .line 36
    const v1, 0x7f07001a

    invoke-virtual {p0, v1}, Lcom/perm/kate/AccountsActivity;->setHeaderTitle(I)V

    .line 37
    const v1, 0x7f0e0069

    invoke-virtual {p0, v1}, Lcom/perm/kate/AccountsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 38
    .local v0, "b":Landroid/widget/Button;
    iget-object v1, p0, Lcom/perm/kate/AccountsActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const v1, 0x7f0e0067

    invoke-virtual {p0, v1}, Lcom/perm/kate/AccountsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/perm/kate/AccountsActivity;->list:Landroid/widget/ListView;

    .line 41
    iget-object v1, p0, Lcom/perm/kate/AccountsActivity;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/perm/kate/AccountsAdapter;

    invoke-direct {v2, p0}, Lcom/perm/kate/AccountsAdapter;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    iget-object v1, p0, Lcom/perm/kate/AccountsActivity;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/AccountsActivity;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 43
    iget-object v1, p0, Lcom/perm/kate/AccountsActivity;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/AccountsActivity;->longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 45
    sget-object v1, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    iget-object v1, v1, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/perm/kate/AccountsActivity;->startLoginActivity()V

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/AccountsActivity;->setButtonsBg()V

    .line 48
    return-void
.end method
