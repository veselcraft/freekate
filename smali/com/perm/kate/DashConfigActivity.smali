.class public Lcom/perm/kate/DashConfigActivity;
.super Lcom/perm/kate/BaseActivity;
.source "DashConfigActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/DashConfigAdapter;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 65
    new-instance v0, Lcom/perm/kate/DashConfigActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashConfigActivity$1;-><init>(Lcom/perm/kate/DashConfigActivity;)V

    iput-object v0, p0, Lcom/perm/kate/DashConfigActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/DashConfigActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/perm/kate/DashConfigActivity;->selectFriend()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/DashConfigActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/perm/kate/DashConfigActivity;->selectGroup()V

    return-void
.end method

.method private selectFriend()V
    .locals 2

    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    const-class v1, Lcom/perm/kate/MembersActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private selectGroup()V
    .locals 3

    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 105
    const-class v1, Lcom/perm/kate/GroupsActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "select_group_all"

    const/4 v2, 0x1

    .line 106
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    .line 46
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    if-nez p1, :cond_0

    if-ne p2, v2, :cond_0

    const-string v3, "com.perm.kate.member_id"

    .line 48
    invoke-virtual {p3, v3, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 49
    sget-object v5, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v5, v3, v4}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v3

    .line 50
    sget-object v4, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    new-instance v5, Lcom/perm/kate/DashboardItem;

    const/16 v6, 0xc

    iget-wide v7, v3, Lcom/perm/kate/api/User;->uid:J

    long-to-int v8, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v3, v3, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    invoke-direct {v5, v6, v8, v7, v3}, Lcom/perm/kate/DashboardItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-static {}, Lcom/perm/kate/DashboardItems;->save()V

    .line 53
    iget-object v3, p0, Lcom/perm/kate/DashConfigActivity;->adapter:Lcom/perm/kate/DashConfigAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    if-ne p2, v2, :cond_1

    const-string p1, "group_id"

    .line 56
    invoke-virtual {p3, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    .line 57
    sget-object p3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p3, p1, p2}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object p1

    .line 58
    sget-object p2, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    new-instance p3, Lcom/perm/kate/DashboardItem;

    const/16 v0, 0xd

    iget-wide v1, p1, Lcom/perm/kate/api/Group;->gid:J

    long-to-int v2, v1

    iget-object v1, p1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    invoke-direct {p3, v0, v2, v1, p1}, Lcom/perm/kate/DashboardItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-static {}, Lcom/perm/kate/DashboardItems;->save()V

    .line 61
    iget-object p1, p0, Lcom/perm/kate/DashConfigActivity;->adapter:Lcom/perm/kate/DashConfigAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0098

    .line 27
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0319

    .line 28
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    const p1, 0x7f090213

    .line 29
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 30
    iget-object v0, p0, Lcom/perm/kate/DashConfigActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 32
    new-instance v0, Lcom/perm/kate/DashConfigAdapter;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashConfigAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/DashConfigActivity;->adapter:Lcom/perm/kate/DashConfigAdapter;

    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 p1, 0x1

    .line 34
    sput-boolean p1, Lcom/perm/kate/DashboardFragment;->redisplayCustomItems:Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/perm/kate/DashConfigActivity;->adapter:Lcom/perm/kate/DashConfigAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/DashConfigAdapter;->destroy()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/perm/kate/DashConfigActivity;->adapter:Lcom/perm/kate/DashConfigAdapter;

    .line 41
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method
