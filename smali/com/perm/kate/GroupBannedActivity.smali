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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/GroupBanItem;",
            ">;"
        }
    .end annotation
.end field

.field private lv_banned_list:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
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

    .line 171
    new-instance v0, Lcom/perm/kate/GroupBannedActivity$6;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupBannedActivity$6;-><init>(Lcom/perm/kate/GroupBannedActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupBannedActivity;->delete_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GroupBannedActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/GroupBannedActivity;

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/perm/kate/GroupBannedActivity;->group_id:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/perm/kate/GroupBannedActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupBannedActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/GroupBannedActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupBannedActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/perm/kate/GroupBannedActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupBannedActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/perm/kate/GroupBannedActivity;->items:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/perm/kate/GroupBannedActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupBannedActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/perm/kate/GroupBannedActivity;->displayData()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/GroupBannedActivity;Lcom/perm/kate/api/GroupBanItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupBannedActivity;
    .param p1, "x1"    # Lcom/perm/kate/api/GroupBanItem;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupBannedActivity;->simpleSaveUser(Lcom/perm/kate/api/GroupBanItem;)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/GroupBannedActivity;Lcom/perm/kate/api/GroupBanItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupBannedActivity;
    .param p1, "x1"    # Lcom/perm/kate/api/GroupBanItem;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupBannedActivity;->removeItem(Lcom/perm/kate/api/GroupBanItem;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/GroupBannedActivity;Lcom/perm/kate/api/GroupBanItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupBannedActivity;
    .param p1, "x1"    # Lcom/perm/kate/api/GroupBanItem;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupBannedActivity;->showBanSettings(Lcom/perm/kate/api/GroupBanItem;)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/GroupBannedActivity;)Lcom/perm/kate/GroupBannedAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupBannedActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity;->adapter:Lcom/perm/kate/GroupBannedAdapter;

    return-object v0
.end method

.method static synthetic access$702(Lcom/perm/kate/GroupBannedActivity;Lcom/perm/kate/GroupBannedAdapter;)Lcom/perm/kate/GroupBannedAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupBannedActivity;
    .param p1, "x1"    # Lcom/perm/kate/GroupBannedAdapter;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/perm/kate/GroupBannedActivity;->adapter:Lcom/perm/kate/GroupBannedAdapter;

    return-object p1
.end method

.method static synthetic access$800(Lcom/perm/kate/GroupBannedActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupBannedActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity;->lv_banned_list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/perm/kate/GroupBannedActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupBannedActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity;->delete_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method private displayData()V
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/perm/kate/GroupBannedActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 142
    :cond_0
    new-instance v0, Lcom/perm/kate/GroupBannedActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupBannedActivity$4;-><init>(Lcom/perm/kate/GroupBannedActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupBannedActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private removeItem(Lcom/perm/kate/api/GroupBanItem;)V
    .locals 2
    .param p1, "item"    # Lcom/perm/kate/api/GroupBanItem;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity;->adapter:Lcom/perm/kate/GroupBannedAdapter;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity;->adapter:Lcom/perm/kate/GroupBannedAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/GroupBannedAdapter;->notifyDataSetChanged()V

    .line 136
    :cond_0
    iget-wide v0, p1, Lcom/perm/kate/api/GroupBanItem;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupBannedActivity;->deleteInThread(Ljava/lang/Long;)V

    .line 137
    return-void
.end method

.method private showAddProfileLinkDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 229
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 230
    .local v0, "alert":Landroid/support/v7/app/AlertDialog$Builder;
    const v4, 0x7f0704fd

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 231
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03001e

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 232
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0e006c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 233
    .local v2, "input":Landroid/widget/EditText;
    const v4, 0x7f0e006d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 234
    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 235
    const v4, 0x7f070334

    new-instance v5, Lcom/perm/kate/GroupBannedActivity$7;

    invoke-direct {v5, p0, v2}, Lcom/perm/kate/GroupBannedActivity$7;-><init>(Lcom/perm/kate/GroupBannedActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 251
    const v4, 0x7f07015d

    invoke-virtual {v0, v4, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 252
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 253
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 254
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 255
    return-void
.end method

.method private showBanSettings(Lcom/perm/kate/api/GroupBanItem;)V
    .locals 4
    .param p1, "item"    # Lcom/perm/kate/api/GroupBanItem;

    .prologue
    .line 187
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 188
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/GroupBanActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 189
    const-string v1, "com.perm.kate.group_id"

    iget-wide v2, p0, Lcom/perm/kate/GroupBannedActivity;->group_id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 190
    const-string v1, "com.perm.kate.user_id"

    iget-wide v2, p1, Lcom/perm/kate/api/GroupBanItem;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 191
    const-string v1, "com.perm.kate.ban_info"

    iget-object v2, p1, Lcom/perm/kate/api/GroupBanItem;->banInfo:Lcom/perm/kate/api/BanInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 192
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/GroupBannedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 193
    return-void
.end method

.method private simpleSaveUser(Lcom/perm/kate/api/GroupBanItem;)V
    .locals 4
    .param p1, "item"    # Lcom/perm/kate/api/GroupBanItem;

    .prologue
    .line 163
    new-instance v0, Lcom/perm/kate/api/User;

    invoke-direct {v0}, Lcom/perm/kate/api/User;-><init>()V

    .line 164
    .local v0, "u":Lcom/perm/kate/api/User;
    iget-wide v2, p1, Lcom/perm/kate/api/GroupBanItem;->id:J

    iput-wide v2, v0, Lcom/perm/kate/api/User;->uid:J

    .line 165
    iget-object v1, p1, Lcom/perm/kate/api/GroupBanItem;->first_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    .line 166
    iget-object v1, p1, Lcom/perm/kate/api/GroupBanItem;->last_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    .line 167
    iget-object v1, p1, Lcom/perm/kate/api/GroupBanItem;->photo_100:Ljava/lang/String;

    iput-object v1, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 168
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    .line 169
    return-void
.end method


# virtual methods
.method public deleteInThread(Ljava/lang/Long;)V
    .locals 1
    .param p1, "user_id"    # Ljava/lang/Long;

    .prologue
    .line 153
    new-instance v0, Lcom/perm/kate/GroupBannedActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/GroupBannedActivity$5;-><init>(Lcom/perm/kate/GroupBannedActivity;Ljava/lang/Long;)V

    .line 159
    invoke-virtual {v0}, Lcom/perm/kate/GroupBannedActivity$5;->start()V

    .line 160
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 197
    invoke-super {p0, p1, p2, p3}, Lcom/perm/kate/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 200
    if-ne p2, v6, :cond_4

    const/4 v3, 0x1

    if-ne p1, v3, :cond_4

    if-eqz p3, :cond_4

    .line 201
    const-string v3, "com.perm.kate.user_id"

    const-wide/16 v6, 0x0

    invoke-virtual {p3, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 202
    .local v4, "user_id":J
    const-string v3, "com.perm.kate.ban_info"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/BanInfo;

    .line 203
    .local v0, "banInfo":Lcom/perm/kate/api/BanInfo;
    if-eqz v0, :cond_3

    .line 204
    const/4 v1, 0x0

    .line 205
    .local v1, "edited":Lcom/perm/kate/api/GroupBanItem;
    iget-object v3, p0, Lcom/perm/kate/GroupBannedActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/GroupBanItem;

    .line 206
    .local v2, "item":Lcom/perm/kate/api/GroupBanItem;
    iget-wide v6, v2, Lcom/perm/kate/api/GroupBanItem;->id:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_0

    .line 207
    move-object v1, v2

    .line 212
    .end local v2    # "item":Lcom/perm/kate/api/GroupBanItem;
    :cond_1
    if-eqz v1, :cond_2

    .line 213
    iput-object v0, v1, Lcom/perm/kate/api/GroupBanItem;->banInfo:Lcom/perm/kate/api/BanInfo;

    .line 214
    :cond_2
    iget-object v3, p0, Lcom/perm/kate/GroupBannedActivity;->adapter:Lcom/perm/kate/GroupBannedAdapter;

    if-eqz v3, :cond_3

    .line 215
    iget-object v3, p0, Lcom/perm/kate/GroupBannedActivity;->adapter:Lcom/perm/kate/GroupBannedAdapter;

    invoke-virtual {v3}, Lcom/perm/kate/GroupBannedAdapter;->notifyDataSetChanged()V

    .line 220
    .end local v0    # "banInfo":Lcom/perm/kate/api/BanInfo;
    .end local v1    # "edited":Lcom/perm/kate/api/GroupBanItem;
    .end local v4    # "user_id":J
    :cond_3
    :goto_0
    return-void

    .line 217
    :cond_4
    if-ne p2, v6, :cond_3

    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 218
    invoke-virtual {p0}, Lcom/perm/kate/GroupBannedActivity;->refreshInThread()V

    goto :goto_0
.end method

.method protected onAddButton()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/perm/kate/GroupBannedActivity;->showAddProfileLinkDialog()V

    .line 225
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, 0x0

    .line 32
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v1, 0x7f030088

    invoke-virtual {p0, v1}, Lcom/perm/kate/GroupBannedActivity;->setContentView(I)V

    .line 34
    const v1, 0x7f07014d

    invoke-virtual {p0, v1}, Lcom/perm/kate/GroupBannedActivity;->setHeaderTitle(I)V

    .line 35
    invoke-virtual {p0}, Lcom/perm/kate/GroupBannedActivity;->setupRefreshButton()V

    .line 36
    invoke-virtual {p0}, Lcom/perm/kate/GroupBannedActivity;->setupAddButton()V

    .line 37
    const v1, 0x7f0e01fa

    invoke-virtual {p0, v1}, Lcom/perm/kate/GroupBannedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "fl_button_add":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 39
    const v1, 0x7f07001d

    invoke-virtual {p0, v1}, Lcom/perm/kate/GroupBannedActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 40
    :cond_0
    const v1, 0x7f0e00b0

    invoke-virtual {p0, v1}, Lcom/perm/kate/GroupBannedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/perm/kate/GroupBannedActivity;->lv_banned_list:Landroid/widget/ListView;

    .line 41
    iget-object v1, p0, Lcom/perm/kate/GroupBannedActivity;->lv_banned_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/GroupBannedActivity;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 42
    invoke-virtual {p0}, Lcom/perm/kate/GroupBannedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.group_id"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/GroupBannedActivity;->group_id:J

    .line 43
    iget-wide v2, p0, Lcom/perm/kate/GroupBannedActivity;->group_id:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/perm/kate/GroupBannedActivity;->finish()V

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/GroupBannedActivity;->refreshInThread()V

    goto :goto_0
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/perm/kate/GroupBannedActivity;->refreshInThread()V

    .line 53
    return-void
.end method

.method public refreshInThread()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/perm/kate/GroupBannedActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupBannedActivity$1;-><init>(Lcom/perm/kate/GroupBannedActivity;)V

    .line 62
    invoke-virtual {v0}, Lcom/perm/kate/GroupBannedActivity$1;->start()V

    .line 63
    return-void
.end method

.method public showGroupBlockActivity(J)V
    .locals 1
    .param p1, "user_id"    # J

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/perm/kate/GroupBannedActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 260
    :cond_0
    new-instance v0, Lcom/perm/kate/GroupBannedActivity$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/GroupBannedActivity$8;-><init>(Lcom/perm/kate/GroupBannedActivity;J)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupBannedActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
