.class public Lcom/perm/kate/SyncSelectionActivity;
.super Lcom/perm/kate/BaseActivity;
.source "SyncSelectionActivity.java"


# instance fields
.field private callback_friendsLists:Lcom/perm/kate/session/Callback;

.field private cancelListener:Landroid/view/View$OnClickListener;

.field private cb_listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private checkedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private friendsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/FriendsList;",
            ">;"
        }
    .end annotation
.end field

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

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 22
    const/4 v0, 0x0

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
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SyncSelectionActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity;->rb_all_friends:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/SyncSelectionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SyncSelectionActivity;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/perm/kate/SyncSelectionActivity;->showFriendsGroups()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/SyncSelectionActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SyncSelectionActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity;->checkedGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/SyncSelectionActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SyncSelectionActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity;->callback_friendsLists:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/perm/kate/SyncSelectionActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SyncSelectionActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity;->friendsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/perm/kate/SyncSelectionActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SyncSelectionActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/perm/kate/SyncSelectionActivity;->friendsList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/perm/kate/SyncSelectionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SyncSelectionActivity;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/perm/kate/SyncSelectionActivity;->generateGroupsCheckboxes()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/SyncSelectionActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SyncSelectionActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity;->ll_checkgroups_placeholder:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/perm/kate/SyncSelectionActivity;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SyncSelectionActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity;->cb_listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method private generateGroupsCheckboxes()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/perm/kate/SyncSelectionActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/SyncSelectionActivity$4;-><init>(Lcom/perm/kate/SyncSelectionActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/SyncSelectionActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method

.method private getFriendsList()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/SyncSelectionActivity;->showProgressBar(Z)V

    .line 81
    new-instance v0, Lcom/perm/kate/SyncSelectionActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/SyncSelectionActivity$2;-><init>(Lcom/perm/kate/SyncSelectionActivity;)V

    .line 86
    invoke-virtual {v0}, Lcom/perm/kate/SyncSelectionActivity$2;->start()V

    .line 87
    return-void
.end method

.method private showFriendsGroups()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity;->ll_checkgroups_placeholder:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity;->friendsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity;->friendsList:Ljava/util/ArrayList;

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

    .line 77
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 33
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f030105

    invoke-virtual {p0, v0}, Lcom/perm/kate/SyncSelectionActivity;->setContentView(I)V

    .line 35
    const v0, 0x7f07043a

    invoke-virtual {p0, v0}, Lcom/perm/kate/SyncSelectionActivity;->setHeaderTitle(I)V

    .line 36
    const v0, 0x7f0e019d

    invoke-virtual {p0, v0}, Lcom/perm/kate/SyncSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/SyncSelectionActivity;->start_button:Landroid/widget/Button;

    .line 37
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity;->start_button:Landroid/widget/Button;

    const v3, 0x7f070334

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 38
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity;->start_button:Landroid/widget/Button;

    iget-object v3, p0, Lcom/perm/kate/SyncSelectionActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const v0, 0x7f0e033e

    invoke-virtual {p0, v0}, Lcom/perm/kate/SyncSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/perm/kate/SyncSelectionActivity;->rg_radiobuttons_placeholder:Landroid/widget/RadioGroup;

    .line 40
    const v0, 0x7f0e033f

    invoke-virtual {p0, v0}, Lcom/perm/kate/SyncSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/perm/kate/SyncSelectionActivity;->rb_all_friends:Landroid/widget/RadioButton;

    .line 41
    const v0, 0x7f0e0340

    invoke-virtual {p0, v0}, Lcom/perm/kate/SyncSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/perm/kate/SyncSelectionActivity;->rb_friends_groups:Landroid/widget/RadioButton;

    .line 42
    iget-object v3, p0, Lcom/perm/kate/SyncSelectionActivity;->rb_all_friends:Landroid/widget/RadioButton;

    sget-object v0, Lcom/perm/kate/SyncActivity;->syncSettings:Lcom/perm/kate/SyncActivity$SyncSettings;

    iget v0, v0, Lcom/perm/kate/SyncActivity$SyncSettings;->sync_type:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 43
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity;->rb_friends_groups:Landroid/widget/RadioButton;

    sget-object v3, Lcom/perm/kate/SyncActivity;->syncSettings:Lcom/perm/kate/SyncActivity$SyncSettings;

    iget v3, v3, Lcom/perm/kate/SyncActivity$SyncSettings;->sync_type:I

    if-ne v3, v1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 44
    const v0, 0x7f0e0341

    invoke-virtual {p0, v0}, Lcom/perm/kate/SyncSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/SyncSelectionActivity;->ll_checkgroups_placeholder:Landroid/widget/LinearLayout;

    .line 45
    const v0, 0x7f0e019b

    invoke-virtual {p0, v0}, Lcom/perm/kate/SyncSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/SyncSelectionActivity;->cancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void

    :cond_0
    move v0, v2

    .line 42
    goto :goto_0

    :cond_1
    move v1, v2

    .line 43
    goto :goto_1
.end method
