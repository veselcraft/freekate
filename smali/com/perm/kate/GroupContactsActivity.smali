.class public Lcom/perm/kate/GroupContactsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "GroupContactsActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/ContactsListAdapter;

.field private contacts:Ljava/util/ArrayList;

.field private items:Ljava/util/ArrayList;

.field private lv_list:Landroid/widget/ListView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private profiles_callback:Lcom/perm/kate/session/Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/GroupContactsActivity;->items:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Lcom/perm/kate/GroupContactsActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupContactsActivity$2;-><init>(Lcom/perm/kate/GroupContactsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupContactsActivity;->profiles_callback:Lcom/perm/kate/session/Callback;

    .line 129
    new-instance v0, Lcom/perm/kate/GroupContactsActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupContactsActivity$4;-><init>(Lcom/perm/kate/GroupContactsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupContactsActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 151
    new-instance v0, Lcom/perm/kate/GroupContactsActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupContactsActivity$5;-><init>(Lcom/perm/kate/GroupContactsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupContactsActivity;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GroupContactsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/perm/kate/GroupContactsActivity;->contacts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/GroupContactsActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/perm/kate/GroupContactsActivity;->profiles_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/GroupContactsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/perm/kate/GroupContactsActivity;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/GroupContactsActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupContactsActivity;->displayDataInUI(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/GroupContactsActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupContactsActivity;->displayData(Ljava/util/ArrayList;)V

    return-void
.end method

.method private displayData(Ljava/util/ArrayList;)V
    .locals 2

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/GroupContactsActivity;->adapter:Lcom/perm/kate/ContactsListAdapter;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/perm/kate/ContactsListAdapter;

    invoke-direct {v0, p0}, Lcom/perm/kate/ContactsListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupContactsActivity;->adapter:Lcom/perm/kate/ContactsListAdapter;

    .line 119
    iget-object v1, p0, Lcom/perm/kate/GroupContactsActivity;->lv_list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/GroupContactsActivity;->adapter:Lcom/perm/kate/ContactsListAdapter;

    invoke-virtual {v0, p1}, Lcom/perm/kate/ContactsListAdapter;->displayData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 123
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 124
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private displayDataInUI(Ljava/util/ArrayList;)V
    .locals 1

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 107
    :cond_0
    new-instance v0, Lcom/perm/kate/GroupContactsActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/GroupContactsActivity$3;-><init>(Lcom/perm/kate/GroupContactsActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getProfiles()V
    .locals 1

    const/4 v0, 0x1

    .line 45
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 46
    new-instance v0, Lcom/perm/kate/GroupContactsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupContactsActivity$1;-><init>(Lcom/perm/kate/GroupContactsActivity;)V

    .line 59
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 34
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0098

    .line 35
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f04fb

    .line 36
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.contacts"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/perm/kate/GroupContactsActivity;->contacts:Ljava/util/ArrayList;

    const p1, 0x7f090213

    .line 38
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/perm/kate/GroupContactsActivity;->lv_list:Landroid/widget/ListView;

    .line 39
    iget-object v0, p0, Lcom/perm/kate/GroupContactsActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 40
    iget-object p1, p0, Lcom/perm/kate/GroupContactsActivity;->lv_list:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/perm/kate/GroupContactsActivity;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 41
    invoke-direct {p0}, Lcom/perm/kate/GroupContactsActivity;->getProfiles()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/perm/kate/GroupContactsActivity;->lv_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 100
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    :cond_0
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method
