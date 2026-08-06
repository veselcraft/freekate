.class public Lcom/perm/kate/DashConfigActivity;
.super Lcom/perm/kate/BaseActivity;
.source "DashConfigActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/DashConfigAdapter;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 66
    new-instance v0, Lcom/perm/kate/DashConfigActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashConfigActivity$1;-><init>(Lcom/perm/kate/DashConfigActivity;)V

    iput-object v0, p0, Lcom/perm/kate/DashConfigActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/DashConfigActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/DashConfigActivity;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/perm/kate/DashConfigActivity;->selectFriend()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/DashConfigActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/DashConfigActivity;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/perm/kate/DashConfigActivity;->selectGroup()V

    return-void
.end method

.method private selectFriend()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/MembersActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 101
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/DashConfigActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 102
    return-void
.end method

.method private selectGroup()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/GroupsActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 107
    const-string v1, "select_group_all"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v0, v2}, Lcom/perm/kate/DashConfigActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 109
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/perm/kate/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 48
    if-nez p1, :cond_0

    const/4 v6, -0x1

    if-ne p2, v6, :cond_0

    .line 49
    const-string v6, "com.perm.kate.member_id"

    const-wide/16 v8, 0x0

    invoke-virtual {p3, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 50
    .local v4, "user_id":J
    sget-object v6, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v6, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v1

    .line 51
    .local v1, "user":Lcom/perm/kate/api/User;
    sget-object v6, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    new-instance v7, Lcom/perm/kate/DashboardItem;

    const/16 v8, 0xc

    iget-wide v10, v1, Lcom/perm/kate/api/User;->uid:J

    long-to-int v9, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/perm/kate/DashboardItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-static {}, Lcom/perm/kate/DashboardItems;->save()V

    .line 54
    iget-object v6, p0, Lcom/perm/kate/DashConfigActivity;->adapter:Lcom/perm/kate/DashConfigAdapter;

    invoke-virtual {v6}, Lcom/perm/kate/DashConfigAdapter;->notifyDataSetChanged()V

    .line 56
    .end local v1    # "user":Lcom/perm/kate/api/User;
    .end local v4    # "user_id":J
    :cond_0
    const/4 v6, 0x1

    if-ne p1, v6, :cond_1

    const/4 v6, -0x1

    if-ne p2, v6, :cond_1

    .line 57
    const-string v6, "group_id"

    const-wide/16 v8, 0x0

    invoke-virtual {p3, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 58
    .local v2, "group_id":J
    sget-object v6, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v6, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v0

    .line 59
    .local v0, "group":Lcom/perm/kate/api/Group;
    sget-object v6, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    new-instance v7, Lcom/perm/kate/DashboardItem;

    const/16 v8, 0xd

    iget-wide v10, v0, Lcom/perm/kate/api/Group;->gid:J

    long-to-int v9, v10

    iget-object v10, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    iget-object v11, v0, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/perm/kate/DashboardItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-static {}, Lcom/perm/kate/DashboardItems;->save()V

    .line 62
    iget-object v6, p0, Lcom/perm/kate/DashConfigActivity;->adapter:Lcom/perm/kate/DashConfigAdapter;

    invoke-virtual {v6}, Lcom/perm/kate/DashConfigAdapter;->notifyDataSetChanged()V

    .line 64
    .end local v0    # "group":Lcom/perm/kate/api/Group;
    .end local v2    # "group_id":J
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v1, 0x7f03008b

    invoke-virtual {p0, v1}, Lcom/perm/kate/DashConfigActivity;->setContentView(I)V

    .line 29
    const v1, 0x7f0702bd

    invoke-virtual {p0, v1}, Lcom/perm/kate/DashConfigActivity;->setHeaderTitle(I)V

    .line 30
    const v1, 0x7f0e00c8

    invoke-virtual {p0, v1}, Lcom/perm/kate/DashConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 31
    .local v0, "lv_list":Landroid/widget/ListView;
    iget-object v1, p0, Lcom/perm/kate/DashConfigActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 33
    new-instance v1, Lcom/perm/kate/DashConfigAdapter;

    invoke-direct {v1, p0}, Lcom/perm/kate/DashConfigAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/perm/kate/DashConfigActivity;->adapter:Lcom/perm/kate/DashConfigAdapter;

    .line 34
    iget-object v1, p0, Lcom/perm/kate/DashConfigActivity;->adapter:Lcom/perm/kate/DashConfigAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    const/4 v1, 0x1

    sput-boolean v1, Lcom/perm/kate/DashboardFragment;->redisplayCustomItems:Z

    .line 36
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/perm/kate/DashConfigActivity;->adapter:Lcom/perm/kate/DashConfigAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/DashConfigAdapter;->destroy()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/DashConfigActivity;->adapter:Lcom/perm/kate/DashConfigAdapter;

    .line 42
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 43
    return-void
.end method
