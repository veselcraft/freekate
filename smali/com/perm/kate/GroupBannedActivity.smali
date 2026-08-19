.class public Lcom/perm/kate/GroupBannedActivity;
.super Lcom/perm/kate/BaseActivity;
.source "GroupBannedActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/GroupBannedAdapter;

.field private callback:Lcom/perm/kate/session/Callback;

.field private delete_callback:Lcom/perm/kate/session/Callback;

.field private group_id:J

.field private itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private items:Ljava/util/ArrayList;

.field private lv_banned_list:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/GroupBannedActivity;->items:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Lcom/perm/kate/GroupBannedActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupBannedActivity$2;-><init>(Lcom/perm/kate/GroupBannedActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupBannedActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 90
    new-instance v0, Lcom/perm/kate/GroupBannedActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupBannedActivity$3;-><init>(Lcom/perm/kate/GroupBannedActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupBannedActivity;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 172
    new-instance v0, Lcom/perm/kate/GroupBannedActivity$6;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupBannedActivity$6;-><init>(Lcom/perm/kate/GroupBannedActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupBannedActivity;->delete_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GroupBannedActivity;)J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/perm/kate/GroupBannedActivity;->group_id:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/perm/kate/GroupBannedActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/perm/kate/GroupBannedActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/GroupBannedActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/perm/kate/GroupBannedActivity;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$202(Lcom/perm/kate/GroupBannedActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/perm/kate/GroupBannedActivity;->items:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/perm/kate/GroupBannedActivity;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/perm/kate/GroupBannedActivity;->displayData()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/GroupBannedActivity;Lcom/perm/kate/api/GroupBanItem;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupBannedActivity;->simpleSaveUser(Lcom/perm/kate/api/GroupBanItem;)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/GroupBannedActivity;Lcom/perm/kate/api/GroupBanItem;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupBannedActivity;->showBanSettings(Lcom/perm/kate/api/GroupBanItem;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/GroupBannedActivity;Lcom/perm/kate/api/GroupBanItem;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupBannedActivity;->removeItem(Lcom/perm/kate/api/GroupBanItem;)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/GroupBannedActivity;)Lcom/perm/kate/GroupBannedAdapter;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/perm/kate/GroupBannedActivity;->adapter:Lcom/perm/kate/GroupBannedAdapter;

    return-object p0
.end method

.method static synthetic access$702(Lcom/perm/kate/GroupBannedActivity;Lcom/perm/kate/GroupBannedAdapter;)Lcom/perm/kate/GroupBannedAdapter;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/perm/kate/GroupBannedActivity;->adapter:Lcom/perm/kate/GroupBannedAdapter;

    return-object p1
.end method

.method static synthetic access$800(Lcom/perm/kate/GroupBannedActivity;)Landroid/widget/ListView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/perm/kate/GroupBannedActivity;->lv_banned_list:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/perm/kate/GroupBannedActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/perm/kate/GroupBannedActivity;->delete_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method private displayData()V
    .locals 1

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 145
    :cond_0
    new-instance v0, Lcom/perm/kate/GroupBannedActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupBannedActivity$4;-><init>(Lcom/perm/kate/GroupBannedActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeItem(Lcom/perm/kate/api/GroupBanItem;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity;->adapter:Lcom/perm/kate/GroupBannedAdapter;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 139
    :cond_0
    invoke-virtual {p1}, Lcom/perm/kate/api/GroupBanItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perm/kate/GroupBannedActivity;->deleteInThread(Ljava/lang/Long;)V

    return-void
.end method

.method private showAddProfileLinkDialog()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 230
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0582

    .line 231
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 232
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0020

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09011c

    .line 233
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 234
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 235
    new-instance v1, Lcom/perm/kate/GroupBannedActivity$7;

    invoke-direct {v1, p0, v2}, Lcom/perm/kate/GroupBannedActivity$7;-><init>(Lcom/perm/kate/GroupBannedActivity;Landroid/widget/EditText;)V

    const v2, 0x7f0f0398

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f0f01c5

    .line 251
    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 252
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 253
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 254
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showBanSettings(Lcom/perm/kate/api/GroupBanItem;)V
    .locals 4

    .line 188
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 189
    const-class v1, Lcom/perm/kate/GroupBanActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 190
    iget-wide v1, p0, Lcom/perm/kate/GroupBannedActivity;->group_id:J

    const-string v3, "com.perm.kate.group_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 191
    invoke-virtual {p1}, Lcom/perm/kate/api/GroupBanItem;->getId()J

    move-result-wide v1

    const-string v3, "com.perm.kate.user_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 192
    iget-object p1, p1, Lcom/perm/kate/api/GroupBanItem;->banInfo:Lcom/perm/kate/api/BanInfo;

    const-string v1, "com.perm.kate.ban_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 193
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private simpleSaveUser(Lcom/perm/kate/api/GroupBanItem;)V
    .locals 3

    .line 166
    iget-object v0, p1, Lcom/perm/kate/api/GroupBanItem;->user:Lcom/perm/kate/api/User;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 167
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2, v0, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    .line 168
    :cond_0
    iget-object p1, p1, Lcom/perm/kate/api/GroupBanItem;->group:Lcom/perm/kate/api/Group;

    if-eqz p1, :cond_1

    .line 169
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p1, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateGroup(Lcom/perm/kate/api/Group;Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public deleteInThread(Ljava/lang/Long;)V
    .locals 1

    .line 156
    new-instance v0, Lcom/perm/kate/GroupBannedActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/GroupBannedActivity$5;-><init>(Lcom/perm/kate/GroupBannedActivity;Ljava/lang/Long;)V

    .line 162
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 198
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    if-eqz p3, :cond_3

    const-wide/16 p1, 0x0

    const-string v0, "com.perm.kate.user_id"

    .line 202
    invoke-virtual {p3, v0, p1, p2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    const-string v0, "com.perm.kate.ban_info"

    .line 203
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p3

    check-cast p3, Lcom/perm/kate/api/BanInfo;

    if-eqz p3, :cond_4

    const/4 v0, 0x0

    .line 206
    iget-object v1, p0, Lcom/perm/kate/GroupBannedActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/GroupBanItem;

    .line 207
    invoke-virtual {v2}, Lcom/perm/kate/api/GroupBanItem;->getId()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    move-object v0, v2

    :cond_1
    if-eqz v0, :cond_2

    .line 214
    iput-object p3, v0, Lcom/perm/kate/api/GroupBanItem;->banInfo:Lcom/perm/kate/api/BanInfo;

    .line 215
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/GroupBannedActivity;->adapter:Lcom/perm/kate/GroupBannedAdapter;

    if-eqz p1, :cond_4

    .line 216
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    if-ne p2, v0, :cond_4

    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    .line 219
    invoke-virtual {p0}, Lcom/perm/kate/GroupBannedActivity;->refreshInThread()V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onAddButton()V
    .locals 0

    .line 225
    invoke-direct {p0}, Lcom/perm/kate/GroupBannedActivity;->showAddProfileLinkDialog()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 32
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0095

    .line 33
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f01b6

    .line 34
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 35
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    .line 36
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupAddButton()V

    const p1, 0x7f090137

    .line 37
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f0f0030

    .line 39
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    const p1, 0x7f09020b

    .line 40
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/perm/kate/GroupBannedActivity;->lv_banned_list:Landroid/widget/ListView;

    .line 41
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.group_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/GroupBannedActivity;->group_id:J

    cmp-long p1, v3, v1

    if-nez p1, :cond_1

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/GroupBannedActivity;->refreshInThread()V

    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/perm/kate/GroupBannedActivity;->refreshInThread()V

    return-void
.end method

.method public refreshInThread()V
    .locals 1

    .line 56
    new-instance v0, Lcom/perm/kate/GroupBannedActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupBannedActivity$1;-><init>(Lcom/perm/kate/GroupBannedActivity;)V

    .line 62
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public showGroupBlockActivity(J)V
    .locals 1

    .line 258
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 260
    :cond_0
    new-instance v0, Lcom/perm/kate/GroupBannedActivity$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/GroupBannedActivity$8;-><init>(Lcom/perm/kate/GroupBannedActivity;J)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
