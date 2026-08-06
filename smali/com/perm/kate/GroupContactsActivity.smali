.class public Lcom/perm/kate/GroupContactsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "GroupContactsActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/ContactsListAdapter;

.field private contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/ContactsListAdapter$ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private lv_list:Landroid/widget/ListView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private profiles_callback:Lcom/perm/kate/session/Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
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

    .line 145
    new-instance v0, Lcom/perm/kate/GroupContactsActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupContactsActivity$5;-><init>(Lcom/perm/kate/GroupContactsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupContactsActivity;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GroupContactsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupContactsActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/perm/kate/GroupContactsActivity;->contacts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/GroupContactsActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupContactsActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/perm/kate/GroupContactsActivity;->profiles_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/GroupContactsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupContactsActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/perm/kate/GroupContactsActivity;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/GroupContactsActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupContactsActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupContactsActivity;->displayDataInUI(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/GroupContactsActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupContactsActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupContactsActivity;->displayData(Ljava/util/ArrayList;)V

    return-void
.end method

.method private displayData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/ContactsListAdapter$ContactItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/ContactsListAdapter$ContactItem;>;"
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/GroupContactsActivity;->adapter:Lcom/perm/kate/ContactsListAdapter;

    if-nez v1, :cond_0

    .line 118
    new-instance v1, Lcom/perm/kate/ContactsListAdapter;

    invoke-direct {v1, p0}, Lcom/perm/kate/ContactsListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/perm/kate/GroupContactsActivity;->adapter:Lcom/perm/kate/ContactsListAdapter;

    .line 119
    iget-object v1, p0, Lcom/perm/kate/GroupContactsActivity;->lv_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/GroupContactsActivity;->adapter:Lcom/perm/kate/ContactsListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/GroupContactsActivity;->adapter:Lcom/perm/kate/ContactsListAdapter;

    invoke-virtual {v1, p1}, Lcom/perm/kate/ContactsListAdapter;->displayData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/GroupContactsActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 125
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
            "Lcom/perm/kate/ContactsListAdapter$ContactItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/ContactsListAdapter$ContactItem;>;"
    invoke-virtual {p0}, Lcom/perm/kate/GroupContactsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 107
    :cond_0
    new-instance v0, Lcom/perm/kate/GroupContactsActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/GroupContactsActivity$3;-><init>(Lcom/perm/kate/GroupContactsActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupContactsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private getProfiles()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupContactsActivity;->showProgressBar(Z)V

    .line 46
    new-instance v0, Lcom/perm/kate/GroupContactsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupContactsActivity$1;-><init>(Lcom/perm/kate/GroupContactsActivity;)V

    .line 59
    invoke-virtual {v0}, Lcom/perm/kate/GroupContactsActivity$1;->start()V

    .line 60
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f03008b

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupContactsActivity;->setContentView(I)V

    .line 36
    const v0, 0x7f07046c

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupContactsActivity;->setHeaderTitle(I)V

    .line 37
    invoke-virtual {p0}, Lcom/perm/kate/GroupContactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.contacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/perm/kate/GroupContactsActivity;->contacts:Ljava/util/ArrayList;

    .line 38
    const v0, 0x7f0e00c8

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/perm/kate/GroupContactsActivity;->lv_list:Landroid/widget/ListView;

    .line 39
    iget-object v0, p0, Lcom/perm/kate/GroupContactsActivity;->lv_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/GroupContactsActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/perm/kate/GroupContactsActivity;->lv_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/GroupContactsActivity;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 41
    invoke-direct {p0}, Lcom/perm/kate/GroupContactsActivity;->getProfiles()V

    .line 42
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/perm/kate/GroupContactsActivity;->lv_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/perm/kate/GroupContactsActivity;->lv_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    :cond_0
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 102
    return-void
.end method
