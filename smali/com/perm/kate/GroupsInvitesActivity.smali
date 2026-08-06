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

    .prologue
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
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupsInvitesActivity;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/GroupsInvitesActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupsInvitesActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupsInvitesActivity;->requeryOnUiThread(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/GroupsInvitesActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupsInvitesActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupsInvitesActivity;->displayData(Ljava/util/ArrayList;)V

    return-void
.end method

.method private displayData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesActivity;->adapter:Lcom/perm/kate/GroupsInvitesAdapter;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesActivity;->adapter:Lcom/perm/kate/GroupsInvitesAdapter;

    invoke-virtual {v0, p1}, Lcom/perm/kate/GroupsInvitesAdapter;->addData(Ljava/util/ArrayList;)V

    .line 94
    :cond_0
    return-void
.end method

.method private refreshInThread()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/perm/kate/GroupsInvitesActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupsInvitesActivity$1;-><init>(Lcom/perm/kate/GroupsInvitesActivity;)V

    .line 47
    invoke-virtual {v0}, Lcom/perm/kate/GroupsInvitesActivity$1;->start()V

    .line 48
    return-void
.end method

.method private requeryOnUiThread(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    invoke-virtual {p0}, Lcom/perm/kate/GroupsInvitesActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 78
    :cond_0
    new-instance v0, Lcom/perm/kate/GroupsInvitesActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/GroupsInvitesActivity$3;-><init>(Lcom/perm/kate/GroupsInvitesActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupsInvitesActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/perm/kate/GroupsInvitesActivity;->finish()V

    .line 38
    :goto_0
    return-void

    .line 30
    :cond_0
    const v0, 0x7f030092

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupsInvitesActivity;->setContentView(I)V

    .line 31
    const v0, 0x7f07046e

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupsInvitesActivity;->setHeaderTitle(I)V

    .line 32
    const v0, 0x7f0e01f2

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupsInvitesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/perm/kate/GroupsInvitesActivity;->group_list:Landroid/widget/ListView;

    .line 33
    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesActivity;->group_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/GroupsInvitesActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 34
    new-instance v0, Lcom/perm/kate/GroupsInvitesAdapter;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupsInvitesAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupsInvitesActivity;->adapter:Lcom/perm/kate/GroupsInvitesAdapter;

    .line 35
    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesActivity;->group_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/GroupsInvitesActivity;->adapter:Lcom/perm/kate/GroupsInvitesAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    invoke-direct {p0}, Lcom/perm/kate/GroupsInvitesActivity;->refreshInThread()V

    .line 37
    invoke-virtual {p0}, Lcom/perm/kate/GroupsInvitesActivity;->setButtonsBg()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesActivity;->adapter:Lcom/perm/kate/GroupsInvitesAdapter;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesActivity;->adapter:Lcom/perm/kate/GroupsInvitesAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/GroupsInvitesAdapter;->Destroy()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/GroupsInvitesActivity;->adapter:Lcom/perm/kate/GroupsInvitesAdapter;

    .line 116
    :cond_0
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 117
    return-void
.end method
