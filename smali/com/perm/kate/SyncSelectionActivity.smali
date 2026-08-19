.class public Lcom/perm/kate/SyncSelectionActivity;
.super Lcom/perm/kate/BaseActivity;
.source "SyncSelectionActivity.java"


# instance fields
.field private callback_friendsLists:Lcom/perm/kate/session/Callback;

.field private cancelListener:Landroid/view/View$OnClickListener;

.field private cb_listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private checkedGroups:Ljava/util/ArrayList;

.field private friendsList:Ljava/util/ArrayList;

.field private listener:Landroid/view/View$OnClickListener;

.field private ll_checkgroups_placeholder:Landroid/widget/LinearLayout;

.field private rb_all_friends:Landroid/widget/RadioButton;

.field private rb_friends_groups:Landroid/widget/RadioButton;

.field private rg_radiobuttons_placeholder:Landroid/widget/RadioGroup;

.field private start_button:Landroid/widget/Button;

.field step:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/perm/kate/SyncSelectionActivity;->step:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/SyncSelectionActivity;->checkedGroups:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Lcom/perm/kate/SyncSelectionActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/SyncSelectionActivity$1;-><init>(Lcom/perm/kate/SyncSelectionActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SyncSelectionActivity;->listener:Landroid/view/View$OnClickListener;

    .line 89
    new-instance v0, Lcom/perm/kate/SyncSelectionActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/SyncSelectionActivity$3;-><init>(Lcom/perm/kate/SyncSelectionActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SyncSelectionActivity;->callback_friendsLists:Lcom/perm/kate/session/Callback;

    .line 124
    new-instance v0, Lcom/perm/kate/SyncSelectionActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/SyncSelectionActivity$5;-><init>(Lcom/perm/kate/SyncSelectionActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SyncSelectionActivity;->cb_listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 137
    new-instance v0, Lcom/perm/kate/SyncSelectionActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/SyncSelectionActivity$6;-><init>(Lcom/perm/kate/SyncSelectionActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SyncSelectionActivity;->cancelListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/SyncSelectionActivity;)Landroid/widget/RadioButton;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/SyncSelectionActivity;->rb_all_friends:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/SyncSelectionActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/perm/kate/SyncSelectionActivity;->showFriendsGroups()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/SyncSelectionActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/SyncSelectionActivity;->checkedGroups:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/SyncSelectionActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/SyncSelectionActivity;->callback_friendsLists:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/perm/kate/SyncSelectionActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/SyncSelectionActivity;->friendsList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$402(Lcom/perm/kate/SyncSelectionActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/perm/kate/SyncSelectionActivity;->friendsList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/perm/kate/SyncSelectionActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/perm/kate/SyncSelectionActivity;->generateGroupsCheckboxes()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/SyncSelectionActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/SyncSelectionActivity;->ll_checkgroups_placeholder:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/perm/kate/SyncSelectionActivity;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/SyncSelectionActivity;->cb_listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

.method private generateGroupsCheckboxes()V
    .locals 1

    .line 106
    new-instance v0, Lcom/perm/kate/SyncSelectionActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/SyncSelectionActivity$4;-><init>(Lcom/perm/kate/SyncSelectionActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getFriendsList()V
    .locals 1

    const/4 v0, 0x1

    .line 80
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 81
    new-instance v0, Lcom/perm/kate/SyncSelectionActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/SyncSelectionActivity$2;-><init>(Lcom/perm/kate/SyncSelectionActivity;)V

    .line 86
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private showFriendsGroups()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity;->ll_checkgroups_placeholder:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity;->friendsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/SyncSelectionActivity;->getFriendsList()V

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity;->rg_radiobuttons_placeholder:Landroid/widget/RadioGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 33
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0124

    .line 34
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f04cd

    .line 35
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    const p1, 0x7f090078

    .line 36
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/SyncSelectionActivity;->start_button:Landroid/widget/Button;

    const v0, 0x7f0f0398

    .line 37
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 38
    iget-object p1, p0, Lcom/perm/kate/SyncSelectionActivity;->start_button:Landroid/widget/Button;

    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0902a5

    .line 39
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/perm/kate/SyncSelectionActivity;->rg_radiobuttons_placeholder:Landroid/widget/RadioGroup;

    const p1, 0x7f090291

    .line 40
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/perm/kate/SyncSelectionActivity;->rb_all_friends:Landroid/widget/RadioButton;

    const p1, 0x7f090293

    .line 41
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/perm/kate/SyncSelectionActivity;->rb_friends_groups:Landroid/widget/RadioButton;

    .line 42
    iget-object p1, p0, Lcom/perm/kate/SyncSelectionActivity;->rb_all_friends:Landroid/widget/RadioButton;

    sget-object v0, Lcom/perm/kate/SyncActivity;->syncSettings:Lcom/perm/kate/SyncActivity$SyncSettings;

    iget v0, v0, Lcom/perm/kate/SyncActivity$SyncSettings;->sync_type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 43
    iget-object p1, p0, Lcom/perm/kate/SyncSelectionActivity;->rb_friends_groups:Landroid/widget/RadioButton;

    sget-object v0, Lcom/perm/kate/SyncActivity;->syncSettings:Lcom/perm/kate/SyncActivity$SyncSettings;

    iget v0, v0, Lcom/perm/kate/SyncActivity$SyncSettings;->sync_type:I

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const p1, 0x7f0901cb

    .line 44
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/perm/kate/SyncSelectionActivity;->ll_checkgroups_placeholder:Landroid/widget/LinearLayout;

    const p1, 0x7f09006a

    .line 45
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity;->cancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
