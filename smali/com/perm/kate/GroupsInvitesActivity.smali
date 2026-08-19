.class public Lcom/perm/kate/GroupsInvitesActivity;
.super Lcom/perm/kate/BaseActivity;
.source "GroupsInvitesActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/GroupsInvitesAdapter;

.field private callback:Lcom/perm/kate/session/Callback;

.field private group_list:Landroid/widget/ListView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 50
    new-instance v0, Lcom/perm/kate/GroupsInvitesActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupsInvitesActivity$2;-><init>(Lcom/perm/kate/GroupsInvitesActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupsInvitesActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 96
    new-instance v0, Lcom/perm/kate/GroupsInvitesActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupsInvitesActivity$4;-><init>(Lcom/perm/kate/GroupsInvitesActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupsInvitesActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GroupsInvitesActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/perm/kate/GroupsInvitesActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/GroupsInvitesActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupsInvitesActivity;->requeryOnUiThread(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/GroupsInvitesActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupsInvitesActivity;->displayData(Ljava/util/ArrayList;)V

    return-void
.end method

.method private displayData(Ljava/util/ArrayList;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesActivity;->adapter:Lcom/perm/kate/GroupsInvitesAdapter;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0, p1}, Lcom/perm/kate/GroupsInvitesAdapter;->addData(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private refreshInThread()V
    .locals 1

    .line 41
    new-instance v0, Lcom/perm/kate/GroupsInvitesActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupsInvitesActivity$1;-><init>(Lcom/perm/kate/GroupsInvitesActivity;)V

    .line 47
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private requeryOnUiThread(Ljava/util/ArrayList;)V
    .locals 1

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 78
    :cond_0
    new-instance v0, Lcom/perm/kate/GroupsInvitesActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/GroupsInvitesActivity$3;-><init>(Lcom/perm/kate/GroupsInvitesActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 22
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez p1, :cond_0

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0c009f

    .line 30
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f04fd

    .line 31
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    const p1, 0x7f090210

    .line 32
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/perm/kate/GroupsInvitesActivity;->group_list:Landroid/widget/ListView;

    .line 33
    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 34
    new-instance p1, Lcom/perm/kate/GroupsInvitesAdapter;

    invoke-direct {p1, p0}, Lcom/perm/kate/GroupsInvitesAdapter;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/perm/kate/GroupsInvitesActivity;->adapter:Lcom/perm/kate/GroupsInvitesAdapter;

    .line 35
    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesActivity;->group_list:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    invoke-direct {p0}, Lcom/perm/kate/GroupsInvitesActivity;->refreshInThread()V

    .line 37
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setButtonsBg()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesActivity;->adapter:Lcom/perm/kate/GroupsInvitesAdapter;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/perm/kate/GroupsInvitesAdapter;->Destroy()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/perm/kate/GroupsInvitesActivity;->adapter:Lcom/perm/kate/GroupsInvitesAdapter;

    .line 116
    :cond_0
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method
