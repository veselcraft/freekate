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

    .line 19
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 36
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
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/perm/kate/EditGroupManagerActivity;->role:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/perm/kate/EditGroupManagerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity;->role:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/perm/kate/EditGroupManagerActivity;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/perm/kate/EditGroupManagerActivity;->is_contact:Z

    return p0
.end method

.method static synthetic access$102(Lcom/perm/kate/EditGroupManagerActivity;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/perm/kate/EditGroupManagerActivity;->is_contact:Z

    return p1
.end method

.method static synthetic access$200(Lcom/perm/kate/EditGroupManagerActivity;)Landroid/widget/EditText;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/perm/kate/EditGroupManagerActivity;->ed_contact_position:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/EditGroupManagerActivity;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/perm/kate/EditGroupManagerActivity;->doGroupsEditManager()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/EditGroupManagerActivity;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->group_id:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/perm/kate/EditGroupManagerActivity;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->user_id:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/perm/kate/EditGroupManagerActivity;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/perm/kate/EditGroupManagerActivity;->is_creator:Z

    return p0
.end method

.method static synthetic access$700(Lcom/perm/kate/EditGroupManagerActivity;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/perm/kate/EditGroupManagerActivity;->contact_position:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/perm/kate/EditGroupManagerActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/perm/kate/EditGroupManagerActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$900(Lcom/perm/kate/EditGroupManagerActivity;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/perm/kate/EditGroupManagerActivity;->onCompleted()V

    return-void
.end method

.method private displayData()V
    .locals 10

    .line 91
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v1, p0, Lcom/perm/kate/EditGroupManagerActivity;->user_id:J

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/EditGroupManagerActivity;->user_name:Ljava/lang/String;

    .line 94
    iget-object v2, p0, Lcom/perm/kate/EditGroupManagerActivity;->tv_user_name:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v3

    iget-object v4, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/EditGroupManagerActivity;->img_user_photo:Landroid/widget/ImageView;

    const/4 v6, 0x1

    const/16 v7, 0x5a

    const v8, 0x7f080208

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->role:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 98
    iget-boolean v2, p0, Lcom/perm/kate/EditGroupManagerActivity;->is_creator:Z

    if-eqz v2, :cond_1

    .line 99
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->rdgroup_manager_level:Landroid/widget/RadioGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    const v0, 0x7f0f01e1

    .line 100
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 101
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->btn_promote:Landroid/widget/Button;

    const v1, 0x7f0f02a6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_1
    const-string v2, "administrator"

    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->rb_administrator:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->role:Ljava/lang/String;

    const-string v2, "editor"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->rb_editor:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->rb_moderator:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_4
    const-string v0, "moderator"

    .line 109
    iput-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->role:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->rb_moderator:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->cb_is_contact:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/perm/kate/EditGroupManagerActivity;->is_contact:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 113
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->contact_position:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 114
    iget-object v1, p0, Lcom/perm/kate/EditGroupManagerActivity;->ed_contact_position:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method private doGroupsEditManager()V
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->is_contact:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->ed_contact_position:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->contact_position:Ljava/lang/String;

    const/4 v0, 0x1

    .line 126
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 127
    new-instance v0, Lcom/perm/kate/EditGroupManagerActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditGroupManagerActivity$4;-><init>(Lcom/perm/kate/EditGroupManagerActivity;)V

    .line 134
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private onCompleted()V
    .locals 2

    .line 154
    iget-boolean v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->is_creator:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0f0527

    .line 155
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    goto :goto_0

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perm/kate/EditGroupManagerActivity;->user_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0f0524

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 158
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 159
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 160
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 40
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c006e

    .line 41
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0277

    .line 42
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    const p1, 0x7f090188

    .line 43
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity;->img_user_photo:Landroid/widget/ImageView;

    const p1, 0x7f0903e6

    .line 44
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity;->tv_user_name:Landroid/widget/TextView;

    const p1, 0x7f090294

    .line 45
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity;->rb_moderator:Landroid/widget/RadioButton;

    const p1, 0x7f090292

    .line 46
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity;->rb_editor:Landroid/widget/RadioButton;

    const p1, 0x7f090290

    .line 47
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity;->rb_administrator:Landroid/widget/RadioButton;

    .line 48
    iget-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity;->rb_moderator:Landroid/widget/RadioButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    const p1, 0x7f090295

    .line 49
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity;->rdgroup_manager_level:Landroid/widget/RadioGroup;

    .line 50
    iget-object v1, p0, Lcom/perm/kate/EditGroupManagerActivity;->radiogroup_listener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const p1, 0x7f0900ad

    .line 51
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity;->cb_is_contact:Landroid/widget/CheckBox;

    const p1, 0x7f0900fd

    .line 52
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity;->ed_contact_position:Landroid/widget/EditText;

    .line 53
    iget-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity;->cb_is_contact:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/perm/kate/EditGroupManagerActivity;->checkbox_listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p1, 0x7f090090

    .line 54
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity;->btn_promote:Landroid/widget/Button;

    const v1, 0x7f0f0276

    .line 55
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 56
    iget-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity;->btn_promote:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/EditGroupManagerActivity;->button_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "com.perm.kate.user_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/perm/kate/EditGroupManagerActivity;->user_id:J

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "com.perm.kate.group_id"

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/perm/kate/EditGroupManagerActivity;->group_id:J

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "com.perm.kate.role"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity;->role:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "com.perm.kate.is_contact"

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/EditGroupManagerActivity;->is_contact:Z

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "com.perm.kate.contact_position"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity;->contact_position:Ljava/lang/String;

    .line 62
    iget-wide v5, p0, Lcom/perm/kate/EditGroupManagerActivity;->user_id:J

    cmp-long p1, v5, v2

    if-eqz p1, :cond_2

    iget-wide v5, p0, Lcom/perm/kate/EditGroupManagerActivity;->group_id:J

    cmp-long p1, v5, v2

    if-nez p1, :cond_0

    goto :goto_1

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity;->role:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v1, "creator"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/perm/kate/EditGroupManagerActivity;->is_creator:Z

    .line 67
    invoke-direct {p0}, Lcom/perm/kate/EditGroupManagerActivity;->displayData()V

    return-void

    .line 63
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
