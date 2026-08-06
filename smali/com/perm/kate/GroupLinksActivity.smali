.class public Lcom/perm/kate/GroupLinksActivity;
.super Lcom/perm/kate/BaseActivity;
.source "GroupLinksActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/LinksListAdapter;

.field private group_id:J

.field private links:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Link;",
            ">;"
        }
    .end annotation
.end field

.field private lv_list:Landroid/widget/ListView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
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
    .param p0, "x0"    # Lcom/perm/kate/GroupLinksActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupLinksActivity;->actionsByLinkUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/GroupLinksActivity;Lcom/perm/kate/api/Link;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupLinksActivity;
    .param p1, "x1"    # Lcom/perm/kate/api/Link;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupLinksActivity;->showEditActivity(Lcom/perm/kate/api/Link;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/GroupLinksActivity;Lcom/perm/kate/api/Link;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupLinksActivity;
    .param p1, "x1"    # Lcom/perm/kate/api/Link;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupLinksActivity;->onDelete(Lcom/perm/kate/api/Link;)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/GroupLinksActivity;Lcom/perm/kate/api/Link;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupLinksActivity;
    .param p1, "x1"    # Lcom/perm/kate/api/Link;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupLinksActivity;->deleteLinkInUiThread(Lcom/perm/kate/api/Link;)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/GroupLinksActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/GroupLinksActivity;

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/perm/kate/GroupLinksActivity;->group_id:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/perm/kate/GroupLinksActivity;Lcom/perm/kate/api/Link;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupLinksActivity;
    .param p1, "x1"    # Lcom/perm/kate/api/Link;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupLinksActivity;->deleteLinksItem(Lcom/perm/kate/api/Link;)V

    return-void
.end method

.method private actionsByLinkUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 79
    :try_start_0
    invoke-static {p1, p0}, Lcom/perm/kate/Helper;->openUrl(Ljava/lang/String;Landroid/content/Context;)V

    .line 80
    const-string v1, "Kate.GroupLinksActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "link url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private deleteLinkInUiThread(Lcom/perm/kate/api/Link;)V
    .locals 1
    .param p1, "link"    # Lcom/perm/kate/api/Link;

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/perm/kate/GroupLinksActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 152
    :cond_0
    new-instance v0, Lcom/perm/kate/GroupLinksActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/GroupLinksActivity$5;-><init>(Lcom/perm/kate/GroupLinksActivity;Lcom/perm/kate/api/Link;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupLinksActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private deleteLinksItem(Lcom/perm/kate/api/Link;)V
    .locals 1
    .param p1, "link"    # Lcom/perm/kate/api/Link;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/perm/kate/GroupLinksActivity;->links:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 162
    invoke-direct {p0}, Lcom/perm/kate/GroupLinksActivity;->displayData()V

    .line 163
    invoke-direct {p0}, Lcom/perm/kate/GroupLinksActivity;->setResultOk()V

    .line 164
    return-void
.end method

.method private displayData()V
    .locals 3

    .prologue
    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/GroupLinksActivity;->adapter:Lcom/perm/kate/LinksListAdapter;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/perm/kate/LinksListAdapter;

    invoke-direct {v1, p0}, Lcom/perm/kate/LinksListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/perm/kate/GroupLinksActivity;->adapter:Lcom/perm/kate/LinksListAdapter;

    .line 58
    iget-object v1, p0, Lcom/perm/kate/GroupLinksActivity;->lv_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/GroupLinksActivity;->adapter:Lcom/perm/kate/LinksListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/GroupLinksActivity;->adapter:Lcom/perm/kate/LinksListAdapter;

    iget-object v2, p0, Lcom/perm/kate/GroupLinksActivity;->links:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/perm/kate/LinksListAdapter;->displayData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/GroupLinksActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private onDelete(Lcom/perm/kate/api/Link;)V
    .locals 3
    .param p1, "link"    # Lcom/perm/kate/api/Link;

    .prologue
    .line 128
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/perm/kate/GroupLinksActivity;->showProgressBar(Z)V

    .line 129
    new-instance v0, Lcom/perm/kate/GroupLinksActivity$3;

    invoke-direct {v0, p0, p0, p1}, Lcom/perm/kate/GroupLinksActivity$3;-><init>(Lcom/perm/kate/GroupLinksActivity;Landroid/app/Activity;Lcom/perm/kate/api/Link;)V

    .line 141
    .local v0, "delete_callback":Lcom/perm/kate/session/Callback;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/perm/kate/GroupLinksActivity$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/perm/kate/GroupLinksActivity$4;-><init>(Lcom/perm/kate/GroupLinksActivity;Lcom/perm/kate/api/Link;Lcom/perm/kate/session/Callback;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 146
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 147
    return-void
.end method

.method private setResultOk()V
    .locals 3

    .prologue
    .line 208
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 209
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "links"

    iget-object v2, p0, Lcom/perm/kate/GroupLinksActivity;->links:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 210
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/perm/kate/GroupLinksActivity;->setResult(ILandroid/content/Intent;)V

    .line 211
    return-void
.end method

.method private showEditActivity(Lcom/perm/kate/api/Link;)V
    .locals 4
    .param p1, "link"    # Lcom/perm/kate/api/Link;

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 121
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/EditGroupLinkActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 122
    const-string v1, "com.perm.kate.group_id"

    iget-wide v2, p0, Lcom/perm/kate/GroupLinksActivity;->group_id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 123
    const-string v1, "com.perm.kate.link"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 124
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/GroupLinksActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 125
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    .line 179
    invoke-super {p0, p1, p2, p3}, Lcom/perm/kate/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 180
    if-eqz p3, :cond_2

    .line 181
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    if-ne p2, v7, :cond_1

    .line 182
    const-string v4, "link"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Link;

    .line 183
    .local v3, "updated_link":Lcom/perm/kate/api/Link;
    if-eqz v3, :cond_1

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "index":I
    iget-object v4, p0, Lcom/perm/kate/GroupLinksActivity;->links:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Link;

    .line 186
    .local v1, "l":Lcom/perm/kate/api/Link;
    iget-object v5, v1, Lcom/perm/kate/api/Link;->id:Ljava/lang/String;

    iget-object v6, v3, Lcom/perm/kate/api/Link;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 190
    .end local v1    # "l":Lcom/perm/kate/api/Link;
    :cond_0
    iget-object v4, p0, Lcom/perm/kate/GroupLinksActivity;->links:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 191
    iget-object v4, p0, Lcom/perm/kate/GroupLinksActivity;->links:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 192
    invoke-direct {p0}, Lcom/perm/kate/GroupLinksActivity;->displayData()V

    .line 193
    invoke-direct {p0}, Lcom/perm/kate/GroupLinksActivity;->setResultOk()V

    .line 196
    .end local v0    # "index":I
    .end local v3    # "updated_link":Lcom/perm/kate/api/Link;
    :cond_1
    const/4 v4, 0x3

    if-ne p1, v4, :cond_2

    if-ne p2, v7, :cond_2

    .line 197
    const-string v4, "link"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Link;

    .line 198
    .local v2, "new_link":Lcom/perm/kate/api/Link;
    if-eqz v2, :cond_2

    .line 199
    iget-object v4, p0, Lcom/perm/kate/GroupLinksActivity;->links:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 200
    invoke-direct {p0}, Lcom/perm/kate/GroupLinksActivity;->displayData()V

    .line 201
    invoke-direct {p0}, Lcom/perm/kate/GroupLinksActivity;->setResultOk()V

    .line 205
    .end local v2    # "new_link":Lcom/perm/kate/api/Link;
    :cond_2
    return-void

    .line 188
    .restart local v0    # "index":I
    .restart local v1    # "l":Lcom/perm/kate/api/Link;
    .restart local v3    # "updated_link":Lcom/perm/kate/api/Link;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 189
    goto :goto_0
.end method

.method protected onAddButton()V
    .locals 4

    .prologue
    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/EditGroupLinkActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 170
    const-string v1, "com.perm.kate.group_id"

    iget-wide v2, p0, Lcom/perm/kate/GroupLinksActivity;->group_id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 171
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/GroupLinksActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 172
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v2, 0x7f03008b

    invoke-virtual {p0, v2}, Lcom/perm/kate/GroupLinksActivity;->setContentView(I)V

    .line 31
    const v2, 0x7f0702bd

    invoke-virtual {p0, v2}, Lcom/perm/kate/GroupLinksActivity;->setHeaderTitle(I)V

    .line 32
    invoke-virtual {p0}, Lcom/perm/kate/GroupLinksActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.perm.kate.group_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/GroupLinksActivity;->group_id:J

    .line 33
    invoke-virtual {p0}, Lcom/perm/kate/GroupLinksActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.perm.kate.links"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/perm/kate/GroupLinksActivity;->links:Ljava/util/ArrayList;

    .line 34
    iget-object v2, p0, Lcom/perm/kate/GroupLinksActivity;->links:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/perm/kate/GroupLinksActivity;->links:Ljava/util/ArrayList;

    .line 36
    :cond_0
    const v2, 0x7f0e00c8

    invoke-virtual {p0, v2}, Lcom/perm/kate/GroupLinksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/perm/kate/GroupLinksActivity;->lv_list:Landroid/widget/ListView;

    .line 37
    iget-object v2, p0, Lcom/perm/kate/GroupLinksActivity;->lv_list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/perm/kate/GroupLinksActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 38
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 39
    .local v0, "account_id":J
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Lcom/perm/kate/GroupLinksActivity;->group_id:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->isAdminInGroup(Ljava/lang/Long;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    iget-object v2, p0, Lcom/perm/kate/GroupLinksActivity;->lv_list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/perm/kate/GroupLinksActivity;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 41
    invoke-virtual {p0}, Lcom/perm/kate/GroupLinksActivity;->setupAddButton()V

    .line 42
    const v2, 0x7f0e01fa

    invoke-virtual {p0, v2}, Lcom/perm/kate/GroupLinksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f070303

    invoke-virtual {p0, v3}, Lcom/perm/kate/GroupLinksActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 44
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/GroupLinksActivity;->displayData()V

    .line 45
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/perm/kate/GroupLinksActivity;->lv_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/perm/kate/GroupLinksActivity;->lv_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    :cond_0
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 52
    return-void
.end method
