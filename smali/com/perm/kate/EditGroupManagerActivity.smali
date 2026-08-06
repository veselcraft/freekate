.class public Lcom/perm/kate/EditGroupManagerActivity;
.super Lcom/perm/kate/BaseActivity;
.source "EditGroupManagerActivity.java"


# instance fields
.field private btn_promote:Landroid/widget/Button;

.field private button_listener:Landroid/view/View$OnClickListener;

.field private callback:Lcom/perm/kate/session/Callback;

.field private cb_is_contact:Landroid/widget/CheckBox;

.field private checkbox_listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private contact_position:Ljava/lang/String;

.field private ed_contact_position:Landroid/widget/EditText;

.field private group_id:J

.field private img_user_photo:Landroid/widget/ImageView;

.field private is_contact:Z

.field private is_creator:Z

.field private radiogroup_listener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private rb_administrator:Landroid/widget/RadioButton;

.field private rb_editor:Landroid/widget/RadioButton;

.field private rb_moderator:Landroid/widget/RadioButton;

.field private rdgroup_manager_level:Landroid/widget/RadioGroup;

.field private role:Ljava/lang/String;

.field private tv_user_name:Landroid/widget/TextView;

.field private user_id:J

.field private user_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->is_creator:Z

    .line 70
    new-instance v0, Lcom/perm/kate/EditGroupManagerActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditGroupManagerActivity$1;-><init>(Lcom/perm/kate/EditGroupManagerActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->radiogroup_listener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 82
    new-instance v0, Lcom/perm/kate/EditGroupManagerActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditGroupManagerActivity$2;-><init>(Lcom/perm/kate/EditGroupManagerActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->checkbox_listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 117
    new-instance v0, Lcom/perm/kate/EditGroupManagerActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditGroupManagerActivity$3;-><init>(Lcom/perm/kate/EditGroupManagerActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->button_listener:Landroid/view/View$OnClickListener;

    .line 137
    new-instance v0, Lcom/perm/kate/EditGroupManagerActivity$5;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/EditGroupManagerActivity$5;-><init>(Lcom/perm/kate/EditGroupManagerActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/EditGroupManagerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditGroupManagerActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->role:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/perm/kate/EditGroupManagerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditGroupManagerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity;->role:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/perm/kate/EditGroupManagerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditGroupManagerActivity;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->is_contact:Z

    return v0
.end method

.method static synthetic access$102(Lcom/perm/kate/EditGroupManagerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditGroupManagerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/perm/kate/EditGroupManagerActivity;->is_contact:Z

    return p1
.end method

.method static synthetic access$200(Lcom/perm/kate/EditGroupManagerActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditGroupManagerActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->ed_contact_position:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/EditGroupManagerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditGroupManagerActivity;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/perm/kate/EditGroupManagerActivity;->doGroupsEditManager()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/EditGroupManagerActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/EditGroupManagerActivity;

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->group_id:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/perm/kate/EditGroupManagerActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/EditGroupManagerActivity;

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->user_id:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/perm/kate/EditGroupManagerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditGroupManagerActivity;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->is_creator:Z

    return v0
.end method

.method static synthetic access$700(Lcom/perm/kate/EditGroupManagerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditGroupManagerActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->contact_position:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/perm/kate/EditGroupManagerActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditGroupManagerActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/perm/kate/EditGroupManagerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditGroupManagerActivity;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/perm/kate/EditGroupManagerActivity;->onCompleted()V

    return-void
.end method

.method private displayData()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 91
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, p0, Lcom/perm/kate/EditGroupManagerActivity;->user_id:J

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v7

    .line 92
    .local v7, "user":Lcom/perm/kate/api/User;
    if-eqz v7, :cond_0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v7, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->user_name:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->tv_user_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/perm/kate/EditGroupManagerActivity;->user_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v1, v7, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/EditGroupManagerActivity;->img_user_photo:Landroid/widget/ImageView;

    const/16 v4, 0x5a

    const v5, 0x7f020143

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->role:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 98
    iget-boolean v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->is_creator:Z

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->rdgroup_manager_level:Landroid/widget/RadioGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 100
    const v0, 0x7f070181

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupManagerActivity;->setHeaderTitle(I)V

    .line 101
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->btn_promote:Landroid/widget/Button;

    const v1, 0x7f07024c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->cb_is_contact:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/perm/kate/EditGroupManagerActivity;->is_contact:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 113
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->contact_position:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->ed_contact_position:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/perm/kate/EditGroupManagerActivity;->contact_position:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_1
    return-void

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->role:Ljava/lang/String;

    const-string v1, "administrator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->rb_administrator:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->role:Ljava/lang/String;

    const-string v1, "editor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->rb_editor:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 107
    :cond_4
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->rb_moderator:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 109
    :cond_5
    const-string v0, "moderator"

    iput-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->role:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->rb_moderator:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private doGroupsEditManager()V
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->is_contact:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->ed_contact_position:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->contact_position:Ljava/lang/String;

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupManagerActivity;->showProgressBar(Z)V

    .line 127
    new-instance v0, Lcom/perm/kate/EditGroupManagerActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditGroupManagerActivity$4;-><init>(Lcom/perm/kate/EditGroupManagerActivity;)V

    .line 134
    invoke-virtual {v0}, Lcom/perm/kate/EditGroupManagerActivity$4;->start()V

    .line 135
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCompleted()V
    .locals 2

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->is_creator:Z

    if-eqz v0, :cond_1

    .line 155
    const v0, 0x7f07049d

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupManagerActivity;->displayToast(I)V

    .line 158
    :goto_0
    invoke-virtual {p0}, Lcom/perm/kate/EditGroupManagerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupManagerActivity;->setResult(I)V

    .line 160
    invoke-virtual {p0}, Lcom/perm/kate/EditGroupManagerActivity;->finish()V

    .line 162
    :cond_0
    return-void

    .line 157
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perm/kate/EditGroupManagerActivity;->user_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f07049a

    invoke-virtual {p0, v1}, Lcom/perm/kate/EditGroupManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupManagerActivity;->displayToast(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    .line 40
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f030064

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupManagerActivity;->setContentView(I)V

    .line 42
    const v0, 0x7f07021d

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupManagerActivity;->setHeaderTitle(I)V

    .line 43
    const v0, 0x7f0e0064

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->img_user_photo:Landroid/widget/ImageView;

    .line 44
    const v0, 0x7f0e0065

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->tv_user_name:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0e014f

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->rb_moderator:Landroid/widget/RadioButton;

    .line 46
    const v0, 0x7f0e0150

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->rb_editor:Landroid/widget/RadioButton;

    .line 47
    const v0, 0x7f0e0151

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->rb_administrator:Landroid/widget/RadioButton;

    .line 48
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->rb_moderator:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 49
    const v0, 0x7f0e014e

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->rdgroup_manager_level:Landroid/widget/RadioGroup;

    .line 50
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->rdgroup_manager_level:Landroid/widget/RadioGroup;

    iget-object v3, p0, Lcom/perm/kate/EditGroupManagerActivity;->radiogroup_listener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 51
    const v0, 0x7f0e0152

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->cb_is_contact:Landroid/widget/CheckBox;

    .line 52
    const v0, 0x7f0e0153

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->ed_contact_position:Landroid/widget/EditText;

    .line 53
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->cb_is_contact:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/perm/kate/EditGroupManagerActivity;->checkbox_listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 54
    const v0, 0x7f0e019f

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->btn_promote:Landroid/widget/Button;

    .line 55
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->btn_promote:Landroid/widget/Button;

    const v3, 0x7f07021c

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 56
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->btn_promote:Landroid/widget/Button;

    iget-object v3, p0, Lcom/perm/kate/EditGroupManagerActivity;->button_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/perm/kate/EditGroupManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.perm.kate.user_id"

    invoke-virtual {v0, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/perm/kate/EditGroupManagerActivity;->user_id:J

    .line 58
    invoke-virtual {p0}, Lcom/perm/kate/EditGroupManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.perm.kate.group_id"

    invoke-virtual {v0, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/perm/kate/EditGroupManagerActivity;->group_id:J

    .line 59
    invoke-virtual {p0}, Lcom/perm/kate/EditGroupManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.perm.kate.role"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->role:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/perm/kate/EditGroupManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.perm.kate.is_contact"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->is_contact:Z

    .line 61
    invoke-virtual {p0}, Lcom/perm/kate/EditGroupManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.perm.kate.contact_position"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->contact_position:Ljava/lang/String;

    .line 62
    iget-wide v4, p0, Lcom/perm/kate/EditGroupManagerActivity;->user_id:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lcom/perm/kate/EditGroupManagerActivity;->group_id:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/EditGroupManagerActivity;->finish()V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->role:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->role:Ljava/lang/String;

    const-string v3, "creator"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->is_creator:Z

    .line 67
    invoke-direct {p0}, Lcom/perm/kate/EditGroupManagerActivity;->displayData()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 66
    goto :goto_1
.end method
