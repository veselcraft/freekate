.class public Lcom/perm/kate/GroupLinksActivity;
.super Lcom/perm/kate/BaseActivity;
.source "GroupLinksActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/LinksListAdapter;

.field private group_id:J

.field private links:Ljava/util/ArrayList;

.field private lv_list:Landroid/widget/ListView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 68
    new-instance v0, Lcom/perm/kate/GroupLinksActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupLinksActivity$1;-><init>(Lcom/perm/kate/GroupLinksActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupLinksActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 89
    new-instance v0, Lcom/perm/kate/GroupLinksActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupLinksActivity$2;-><init>(Lcom/perm/kate/GroupLinksActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupLinksActivity;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GroupLinksActivity;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupLinksActivity;->actionsByLinkUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/GroupLinksActivity;Lcom/perm/kate/api/Link;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupLinksActivity;->showEditActivity(Lcom/perm/kate/api/Link;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/GroupLinksActivity;Lcom/perm/kate/api/Link;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupLinksActivity;->onDelete(Lcom/perm/kate/api/Link;)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/GroupLinksActivity;Lcom/perm/kate/api/Link;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupLinksActivity;->deleteLinkInUiThread(Lcom/perm/kate/api/Link;)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/GroupLinksActivity;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/perm/kate/GroupLinksActivity;->group_id:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/perm/kate/GroupLinksActivity;Lcom/perm/kate/api/Link;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupLinksActivity;->deleteLinksItem(Lcom/perm/kate/api/Link;)V

    return-void
.end method

.method private actionsByLinkUrl(Ljava/lang/String;)V
    .locals 3

    .line 79
    :try_start_0
    invoke-static {p1, p0}, Lcom/perm/kate/Helper;->openUrl(Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "Kate.GroupLinksActivity"

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "link url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private deleteLinkInUiThread(Lcom/perm/kate/api/Link;)V
    .locals 1

    .line 150
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 152
    :cond_0
    new-instance v0, Lcom/perm/kate/GroupLinksActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/GroupLinksActivity$5;-><init>(Lcom/perm/kate/GroupLinksActivity;Lcom/perm/kate/api/Link;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private deleteLinksItem(Lcom/perm/kate/api/Link;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/perm/kate/GroupLinksActivity;->links:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 162
    invoke-direct {p0}, Lcom/perm/kate/GroupLinksActivity;->displayData()V

    .line 163
    invoke-direct {p0}, Lcom/perm/kate/GroupLinksActivity;->setResultOk()V

    return-void
.end method

.method private displayData()V
    .locals 2

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/GroupLinksActivity;->adapter:Lcom/perm/kate/LinksListAdapter;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/perm/kate/LinksListAdapter;

    invoke-direct {v0, p0}, Lcom/perm/kate/LinksListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupLinksActivity;->adapter:Lcom/perm/kate/LinksListAdapter;

    .line 58
    iget-object v1, p0, Lcom/perm/kate/GroupLinksActivity;->lv_list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/GroupLinksActivity;->adapter:Lcom/perm/kate/LinksListAdapter;

    iget-object v1, p0, Lcom/perm/kate/GroupLinksActivity;->links:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/perm/kate/LinksListAdapter;->displayData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 62
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private onDelete(Lcom/perm/kate/api/Link;)V
    .locals 3

    const/4 v0, 0x1

    .line 128
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 129
    new-instance v0, Lcom/perm/kate/GroupLinksActivity$3;

    invoke-direct {v0, p0, p0, p1}, Lcom/perm/kate/GroupLinksActivity$3;-><init>(Lcom/perm/kate/GroupLinksActivity;Landroid/app/Activity;Lcom/perm/kate/api/Link;)V

    .line 141
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/perm/kate/GroupLinksActivity$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/perm/kate/GroupLinksActivity$4;-><init>(Lcom/perm/kate/GroupLinksActivity;Lcom/perm/kate/api/Link;Lcom/perm/kate/session/Callback;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 146
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setResultOk()V
    .locals 3

    .line 208
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 209
    iget-object v1, p0, Lcom/perm/kate/GroupLinksActivity;->links:Ljava/util/ArrayList;

    const-string v2, "links"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 210
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private showEditActivity(Lcom/perm/kate/api/Link;)V
    .locals 4

    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 121
    const-class v1, Lcom/perm/kate/EditGroupLinkActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 122
    iget-wide v1, p0, Lcom/perm/kate/GroupLinksActivity;->group_id:J

    const-string v3, "com.perm.kate.group_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.perm.kate.link"

    .line 123
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 124
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .line 179
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_3

    const/4 v0, 0x0

    const-string v1, "link"

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    if-ne p2, v2, :cond_2

    .line 182
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Link;

    if-eqz v3, :cond_2

    .line 185
    iget-object v4, p0, Lcom/perm/kate/GroupLinksActivity;->links:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perm/kate/api/Link;

    .line 186
    iget-object v6, v6, Lcom/perm/kate/api/Link;->id:Ljava/lang/String;

    iget-object v7, v3, Lcom/perm/kate/api/Link;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 190
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/perm/kate/GroupLinksActivity;->links:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 191
    iget-object v4, p0, Lcom/perm/kate/GroupLinksActivity;->links:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 192
    invoke-direct {p0}, Lcom/perm/kate/GroupLinksActivity;->displayData()V

    .line 193
    invoke-direct {p0}, Lcom/perm/kate/GroupLinksActivity;->setResultOk()V

    :cond_2
    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    if-ne p2, v2, :cond_3

    .line 197
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Link;

    if-eqz p1, :cond_3

    .line 199
    iget-object p2, p0, Lcom/perm/kate/GroupLinksActivity;->links:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 200
    invoke-direct {p0}, Lcom/perm/kate/GroupLinksActivity;->displayData()V

    .line 201
    invoke-direct {p0}, Lcom/perm/kate/GroupLinksActivity;->setResultOk()V

    :cond_3
    return-void
.end method

.method protected onAddButton()V
    .locals 4

    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 169
    const-class v1, Lcom/perm/kate/EditGroupLinkActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 170
    iget-wide v1, p0, Lcom/perm/kate/GroupLinksActivity;->group_id:J

    const-string v3, "com.perm.kate.group_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v1, 0x3

    .line 171
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 29
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0098

    .line 30
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0319

    .line 31
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.group_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/GroupLinksActivity;->group_id:J

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.links"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/perm/kate/GroupLinksActivity;->links:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/perm/kate/GroupLinksActivity;->links:Ljava/util/ArrayList;

    :cond_0
    const p1, 0x7f090213

    .line 36
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/perm/kate/GroupLinksActivity;->lv_list:Landroid/widget/ListView;

    .line 37
    iget-object v0, p0, Lcom/perm/kate/GroupLinksActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 38
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 39
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/perm/kate/GroupLinksActivity;->group_id:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->isAdminInGroup(Ljava/lang/Long;J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 40
    iget-object p1, p0, Lcom/perm/kate/GroupLinksActivity;->lv_list:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/perm/kate/GroupLinksActivity;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 41
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupAddButton()V

    const p1, 0x7f090137

    .line 42
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0f0365

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 44
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/GroupLinksActivity;->displayData()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/perm/kate/GroupLinksActivity;->lv_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    :cond_0
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method
