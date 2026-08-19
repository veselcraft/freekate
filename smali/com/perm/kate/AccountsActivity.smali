.class public Lcom/perm/kate/AccountsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "AccountsActivity.java"


# instance fields
.field private clickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field dropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

.field private itemMenuCLick:Landroid/view/View$OnClickListener;

.field list:Landroid/widget/ListView;

.field private listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 53
    new-instance v0, Lcom/perm/kate/AccountsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/AccountsActivity$1;-><init>(Lcom/perm/kate/AccountsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/AccountsActivity;->listener:Landroid/view/View$OnClickListener;

    .line 108
    new-instance v0, Lcom/perm/kate/AccountsActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/AccountsActivity$3;-><init>(Lcom/perm/kate/AccountsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/AccountsActivity;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 126
    new-instance v0, Lcom/perm/kate/AccountsActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/AccountsActivity$4;-><init>(Lcom/perm/kate/AccountsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/AccountsActivity;->itemMenuCLick:Landroid/view/View$OnClickListener;

    .line 180
    new-instance v0, Lcom/perm/kate/AccountsActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/AccountsActivity$7;-><init>(Lcom/perm/kate/AccountsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/AccountsActivity;->dropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/AccountsActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/perm/kate/AccountsActivity;->startLoginActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/AccountsActivity;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/perm/kate/AccountsActivity;->showAccountMenu(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/AccountsActivity;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/perm/kate/AccountsActivity;->removeAccount(I)V

    return-void
.end method

.method private getGroups()V
    .locals 1

    .line 91
    new-instance v0, Lcom/perm/kate/AccountsActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/AccountsActivity$2;-><init>(Lcom/perm/kate/AccountsActivity;)V

    .line 105
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private removeAccount(I)V
    .locals 3

    .line 156
    sget-object v0, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    iget-object v0, v0, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/account/Account;

    .line 157
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    sget-object v1, Lcom/perm/kate/KApplication;->longPoll:Lcom/perm/kate/LongPoll;

    invoke-virtual {v1}, Lcom/perm/kate/LongPoll;->stop()V

    .line 159
    sget-object v1, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/perm/kate/Online;->stop(Z)V

    const/4 v1, 0x0

    .line 160
    sput-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    .line 161
    invoke-static {}, Lcom/perm/kate/KApplication;->getAudioQueue()Lcom/perm/kate/AudioQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/AudioQueue;->stop()V

    .line 163
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    iget-object v1, v1, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 164
    sget-object v1, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    invoke-virtual {v1}, Lcom/perm/kate/account/AccountManager;->saveAccounts()V

    .line 165
    sget-object v1, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/session/Session;

    .line 166
    sget-object v2, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 167
    iget-object p1, v0, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    invoke-static {p1}, Lcom/perm/kate/KApplication;->removeGroupSessions(Ljava/lang/String;)V

    .line 168
    iget-object p1, p0, Lcom/perm/kate/AccountsActivity;->list:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 169
    invoke-static {p0}, Lcom/perm/kate/KateWidgetMessages;->updateAll(Landroid/content/Context;)V

    .line 171
    iget-boolean p1, v0, Lcom/perm/kate/account/Account;->push_registered:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/perm/kate/push/Push;->token:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 172
    new-instance p1, Lcom/perm/kate/AccountsActivity$6;

    invoke-direct {p1, p0, v1}, Lcom/perm/kate/AccountsActivity$6;-><init>(Lcom/perm/kate/AccountsActivity;Lcom/perm/kate/session/Session;)V

    .line 177
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method private showAccountMenu(I)V
    .locals 5

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f00ba

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v1, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    iget-object v1, v1, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/account/Account;

    iget-object v1, v1, Lcom/perm/kate/account/Account;->user_name:Ljava/lang/String;

    .line 138
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 139
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v4, Lcom/perm/kate/AccountsActivity$5;

    invoke-direct {v4, p0, v0, p1}, Lcom/perm/kate/AccountsActivity$5;-><init>(Lcom/perm/kate/AccountsActivity;Ljava/util/ArrayList;I)V

    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 150
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 151
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 152
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private startLoginActivity()V
    .locals 2

    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 62
    invoke-static {}, Lcom/perm/kate/Helper;->getLoginActivity()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 63
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 70
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 76
    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 77
    invoke-static {p2}, Lcom/perm/kate/video_cache/VideoCache;->fixCacheIfRequired(Z)V

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/AccountsActivity;->getGroups()V

    .line 83
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 84
    invoke-static {p0}, Lcom/perm/kate/KateWidgetMessages;->updateAll(Landroid/content/Context;)V

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 36
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001e

    .line 37
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f002d

    .line 38
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    const p1, 0x7f09005d

    .line 39
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 40
    iget-object v0, p0, Lcom/perm/kate/AccountsActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090008

    .line 42
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/perm/kate/AccountsActivity;->list:Landroid/widget/ListView;

    .line 43
    new-instance v0, Lcom/perm/kate/AccountsAdapter;

    iget-object v1, p0, Lcom/perm/kate/AccountsActivity;->itemMenuCLick:Landroid/view/View$OnClickListener;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/AccountsAdapter;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    iget-object p1, p0, Lcom/perm/kate/AccountsActivity;->list:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/perm/kate/AccountsActivity;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 46
    iget-object p1, p0, Lcom/perm/kate/AccountsActivity;->list:Landroid/widget/ListView;

    check-cast p1, Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v0, p0, Lcom/perm/kate/AccountsActivity;->dropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    invoke-virtual {p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 48
    sget-object p1, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    iget-object p1, p1, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/perm/kate/AccountsActivity;->startLoginActivity()V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setButtonsBg()V

    return-void
.end method
