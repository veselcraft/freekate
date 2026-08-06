.class public Lcom/perm/kate/GroupBanActivity;
.super Lcom/perm/kate/BaseActivity;
.source "GroupBanActivity.java"


# instance fields
.field private banInfo:Lcom/perm/kate/api/BanInfo;

.field private ban_clickListener:Landroid/view/View$OnClickListener;

.field private btn_ban_user:Landroid/widget/Button;

.field private btn_cancel:Landroid/widget/Button;

.field private callback:Lcom/perm/kate/session/Callback;

.field private cancel_OnClickListerer:Landroid/view/View$OnClickListener;

.field private cb_comment_visible:Landroid/widget/CheckBox;

.field private df:Ljava/text/SimpleDateFormat;

.field private ed_comment:Landroid/widget/EditText;

.field private end_date_listener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private group_id:J

.field private hasEndDate:Z

.field private img_user_photo:Landroid/widget/ImageView;

.field private sp_ban_reason:Landroid/widget/Spinner;

.field private sp_end_date:Landroid/widget/Spinner;

.field private tv_end_date:Landroid/widget/TextView;

.field private tv_group_text:Landroid/widget/TextView;

.field private tv_user_name:Landroid/widget/TextView;

.field private user_id:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d MMMM yyyy h:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perm/kate/GroupBanActivity;->df:Ljava/text/SimpleDateFormat;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/GroupBanActivity;->hasEndDate:Z

    .line 161
    new-instance v0, Lcom/perm/kate/GroupBanActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupBanActivity$4;-><init>(Lcom/perm/kate/GroupBanActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupBanActivity;->end_date_listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 172
    new-instance v0, Lcom/perm/kate/GroupBanActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupBanActivity$5;-><init>(Lcom/perm/kate/GroupBanActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupBanActivity;->ban_clickListener:Landroid/view/View$OnClickListener;

    .line 198
    new-instance v0, Lcom/perm/kate/GroupBanActivity$6;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupBanActivity$6;-><init>(Lcom/perm/kate/GroupBanActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupBanActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 291
    new-instance v0, Lcom/perm/kate/GroupBanActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupBanActivity$8;-><init>(Lcom/perm/kate/GroupBanActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupBanActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GroupBanActivity;Lcom/perm/kate/api/GroupBanItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupBanActivity;
    .param p1, "x1"    # Lcom/perm/kate/api/GroupBanItem;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupBanActivity;->displayBanInfoInUi(Lcom/perm/kate/api/GroupBanItem;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/GroupBanActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/GroupBanActivity;

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/perm/kate/GroupBanActivity;->group_id:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/GroupBanActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupBanActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->btn_ban_user:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/perm/kate/GroupBanActivity;)Lcom/perm/kate/api/BanInfo;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupBanActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->banInfo:Lcom/perm/kate/api/BanInfo;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/perm/kate/GroupBanActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupBanActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/perm/kate/GroupBanActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupBanActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/perm/kate/GroupBanActivity;->finishOnUiThread()V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/GroupBanActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupBanActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/perm/kate/GroupBanActivity;->enableButtonOnUiThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/GroupBanActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/GroupBanActivity;

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/perm/kate/GroupBanActivity;->user_id:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/perm/kate/GroupBanActivity;Lcom/perm/kate/api/GroupBanItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupBanActivity;
    .param p1, "x1"    # Lcom/perm/kate/api/GroupBanItem;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupBanActivity;->displayBanInfo(Lcom/perm/kate/api/GroupBanItem;)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/GroupBanActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupBanActivity;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupBanActivity;->updateEndDateLabel(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/GroupBanActivity;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupBanActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/perm/kate/GroupBanActivity;->getEndDate()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/perm/kate/GroupBanActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupBanActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/perm/kate/GroupBanActivity;->getReason()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/perm/kate/GroupBanActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupBanActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/perm/kate/GroupBanActivity;->getComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/perm/kate/GroupBanActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupBanActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/perm/kate/GroupBanActivity;->getCommentVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/perm/kate/GroupBanActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupBanActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->btn_cancel:Landroid/widget/Button;

    return-object v0
.end method

.method private displayBanInfo(Lcom/perm/kate/api/GroupBanItem;)V
    .locals 2
    .param p1, "banItem"    # Lcom/perm/kate/api/GroupBanItem;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->btn_ban_user:Landroid/widget/Button;

    const v1, 0x7f07024c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 120
    iget-object v0, p1, Lcom/perm/kate/api/GroupBanItem;->banInfo:Lcom/perm/kate/api/BanInfo;

    iput-object v0, p0, Lcom/perm/kate/GroupBanActivity;->banInfo:Lcom/perm/kate/api/BanInfo;

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/GroupBanActivity;->fillFields()V

    .line 122
    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupBanActivity;->displayToast(I)V

    .line 123
    return-void
.end method

.method private displayBanInfoInUi(Lcom/perm/kate/api/GroupBanItem;)V
    .locals 1
    .param p1, "banItem"    # Lcom/perm/kate/api/GroupBanItem;

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/perm/kate/GroupBanActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 110
    :cond_0
    new-instance v0, Lcom/perm/kate/GroupBanActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/GroupBanActivity$3;-><init>(Lcom/perm/kate/GroupBanActivity;Lcom/perm/kate/api/GroupBanItem;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupBanActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private displayInfo()V
    .locals 10

    .prologue
    const/4 v3, 0x1

    .line 148
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, p0, Lcom/perm/kate/GroupBanActivity;->user_id:J

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v9

    .line 149
    .local v9, "user":Lcom/perm/kate/api/User;
    if-eqz v9, :cond_0

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v9, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v9, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, "display_name":Ljava/lang/String;
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->tv_user_name:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v1, v9, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/GroupBanActivity;->img_user_photo:Landroid/widget/ImageView;

    const/16 v4, 0x5a

    .line 153
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v5

    move v6, v3

    .line 152
    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 155
    .end local v7    # "display_name":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/GroupBanActivity;->group_id:J

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v8

    .line 156
    .local v8, "group":Lcom/perm/kate/api/Group;
    if-eqz v8, :cond_1

    .line 157
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->tv_group_text:Landroid/widget/TextView;

    iget-object v1, v8, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_1
    return-void
.end method

.method private enableButtonOnUiThread()V
    .locals 1

    .prologue
    .line 218
    new-instance v0, Lcom/perm/kate/GroupBanActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupBanActivity$7;-><init>(Lcom/perm/kate/GroupBanActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupBanActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 224
    return-void
.end method

.method private fillEndDateSpinner()V
    .locals 12

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/perm/kate/GroupBanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "end_date_values":[Ljava/lang/String;
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    .line 128
    .local v2, "end_date_values2":[Ljava/lang/String;
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/perm/kate/GroupBanActivity;->df:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    iget-object v7, p0, Lcom/perm/kate/GroupBanActivity;->banInfo:Lcom/perm/kate/api/BanInfo;

    iget-wide v8, v7, Lcom/perm/kate/api/BanInfo;->end_date:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 129
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 130
    add-int/lit8 v4, v3, 0x1

    aget-object v5, v1, v3

    aput-object v5, v2, v4

    .line 129
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v0, p0, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 132
    .local v0, "end_date_ArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 133
    iget-object v4, p0, Lcom/perm/kate/GroupBanActivity;->sp_end_date:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 134
    return-void
.end method

.method private fillFields()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 137
    iget-object v2, p0, Lcom/perm/kate/GroupBanActivity;->banInfo:Lcom/perm/kate/api/BanInfo;

    iget-wide v2, v2, Lcom/perm/kate/api/BanInfo;->end_date:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/perm/kate/GroupBanActivity;->fillEndDateSpinner()V

    .line 139
    iput-boolean v0, p0, Lcom/perm/kate/GroupBanActivity;->hasEndDate:Z

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/GroupBanActivity;->sp_end_date:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 142
    iget-object v2, p0, Lcom/perm/kate/GroupBanActivity;->sp_ban_reason:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/perm/kate/GroupBanActivity;->banInfo:Lcom/perm/kate/api/BanInfo;

    iget v3, v3, Lcom/perm/kate/api/BanInfo;->reason:I

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 143
    iget-object v2, p0, Lcom/perm/kate/GroupBanActivity;->ed_comment:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/perm/kate/GroupBanActivity;->banInfo:Lcom/perm/kate/api/BanInfo;

    iget-object v3, v3, Lcom/perm/kate/api/BanInfo;->comment:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v2, p0, Lcom/perm/kate/GroupBanActivity;->cb_comment_visible:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/perm/kate/GroupBanActivity;->banInfo:Lcom/perm/kate/api/BanInfo;

    iget v3, v3, Lcom/perm/kate/api/BanInfo;->comment_visible:I

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 145
    return-void

    :cond_1
    move v0, v1

    .line 144
    goto :goto_0
.end method

.method private finishOnUiThread()V
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/perm/kate/GroupBanActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 301
    :cond_0
    new-instance v0, Lcom/perm/kate/GroupBanActivity$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupBanActivity$9;-><init>(Lcom/perm/kate/GroupBanActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupBanActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->ed_comment:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->ed_comment:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->ed_comment:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCommentVisible()Z
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->cb_comment_visible:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->cb_comment_visible:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->cb_comment_visible:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 263
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getEndDate()Ljava/lang/Long;
    .locals 8

    .prologue
    .line 279
    iget-object v3, p0, Lcom/perm/kate/GroupBanActivity;->sp_end_date:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 280
    .local v2, "pos":I
    iget-boolean v3, p0, Lcom/perm/kate/GroupBanActivity;->hasEndDate:Z

    if-eqz v3, :cond_0

    .line 281
    add-int/lit8 v2, v2, -0x1

    .line 282
    :cond_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget-object v3, p0, Lcom/perm/kate/GroupBanActivity;->banInfo:Lcom/perm/kate/api/BanInfo;

    if-eqz v3, :cond_1

    .line 283
    iget-object v3, p0, Lcom/perm/kate/GroupBanActivity;->banInfo:Lcom/perm/kate/api/BanInfo;

    iget-wide v4, v3, Lcom/perm/kate/api/BanInfo;->end_date:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 288
    :goto_0
    return-object v3

    .line 284
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/GroupBanActivity;->sp_end_date:Landroid/widget/Spinner;

    if-eqz v3, :cond_2

    if-lez v2, :cond_2

    .line 285
    invoke-direct {p0, v2}, Lcom/perm/kate/GroupBanActivity;->getEndDateByPos(I)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 286
    .local v0, "end_date":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 288
    .end local v0    # "end_date":J
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getEndDateByPos(I)J
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 240
    .local v0, "today":J
    packed-switch p1, :pswitch_data_0

    .line 257
    :goto_0
    return-wide v0

    .line 242
    :pswitch_0
    const-wide v2, 0x757b12c00L

    add-long/2addr v0, v2

    .line 243
    goto :goto_0

    .line 245
    :pswitch_1
    const-wide v2, 0x9fa52400L

    add-long/2addr v0, v2

    .line 246
    goto :goto_0

    .line 248
    :pswitch_2
    const-wide/32 v2, 0x240c8400

    add-long/2addr v0, v2

    .line 249
    goto :goto_0

    .line 251
    :pswitch_3
    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    .line 252
    goto :goto_0

    .line 254
    :pswitch_4
    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getReason()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->sp_ban_reason:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->sp_ban_reason:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->sp_ban_reason:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 275
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateEndDateLabel(I)V
    .locals 5
    .param p1, "pos"    # I

    .prologue
    .line 228
    iget-boolean v2, p0, Lcom/perm/kate/GroupBanActivity;->hasEndDate:Z

    if-eqz v2, :cond_0

    .line 229
    add-int/lit8 p1, p1, -0x1

    .line 230
    :cond_0
    if-lez p1, :cond_1

    .line 231
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupBanActivity;->getEndDateByPos(I)J

    move-result-wide v0

    .line 232
    .local v0, "end_date":J
    iget-object v2, p0, Lcom/perm/kate/GroupBanActivity;->tv_end_date:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/perm/kate/GroupBanActivity;->df:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v2, p0, Lcom/perm/kate/GroupBanActivity;->tv_end_date:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    .end local v0    # "end_date":J
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/GroupBanActivity;->tv_end_date:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getBannedStatusForUser()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/perm/kate/GroupBanActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupBanActivity$1;-><init>(Lcom/perm/kate/GroupBanActivity;Landroid/app/Activity;)V

    .line 98
    .local v0, "banned_status_callback":Lcom/perm/kate/session/Callback;
    new-instance v1, Lcom/perm/kate/GroupBanActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/GroupBanActivity$2;-><init>(Lcom/perm/kate/GroupBanActivity;Lcom/perm/kate/session/Callback;)V

    .line 104
    invoke-virtual {v1}, Lcom/perm/kate/GroupBanActivity$2;->start()V

    .line 105
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, 0x0

    .line 48
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f030087

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupBanActivity;->setContentView(I)V

    .line 50
    const v0, 0x7f07046b

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupBanActivity;->setHeaderTitle(I)V

    .line 51
    const v0, 0x7f0e0064

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupBanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/perm/kate/GroupBanActivity;->img_user_photo:Landroid/widget/ImageView;

    .line 52
    const v0, 0x7f0e0065

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupBanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/GroupBanActivity;->tv_user_name:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0e01e1

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupBanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/GroupBanActivity;->tv_group_text:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f0e01e2

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupBanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/perm/kate/GroupBanActivity;->sp_end_date:Landroid/widget/Spinner;

    .line 55
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->sp_end_date:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/perm/kate/GroupBanActivity;->end_date_listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 56
    const v0, 0x7f0e01e3

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupBanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/GroupBanActivity;->tv_end_date:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0e01e4

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupBanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/perm/kate/GroupBanActivity;->sp_ban_reason:Landroid/widget/Spinner;

    .line 58
    const v0, 0x7f0e01e5

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupBanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/perm/kate/GroupBanActivity;->ed_comment:Landroid/widget/EditText;

    .line 59
    const v0, 0x7f0e01e6

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupBanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/perm/kate/GroupBanActivity;->cb_comment_visible:Landroid/widget/CheckBox;

    .line 60
    const v0, 0x7f0e019d

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupBanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/GroupBanActivity;->btn_ban_user:Landroid/widget/Button;

    .line 61
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->btn_ban_user:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/GroupBanActivity;->ban_clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v0, 0x7f0e019b

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupBanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/GroupBanActivity;->btn_cancel:Landroid/widget/Button;

    .line 63
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->btn_cancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/GroupBanActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/perm/kate/GroupBanActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.user_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/GroupBanActivity;->user_id:J

    .line 65
    invoke-virtual {p0}, Lcom/perm/kate/GroupBanActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.group_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/GroupBanActivity;->group_id:J

    .line 66
    iget-wide v0, p0, Lcom/perm/kate/GroupBanActivity;->user_id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/perm/kate/GroupBanActivity;->group_id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/GroupBanActivity;->finish()V

    .line 81
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/GroupBanActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.ban_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/BanInfo;

    iput-object v0, p0, Lcom/perm/kate/GroupBanActivity;->banInfo:Lcom/perm/kate/api/BanInfo;

    .line 71
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->banInfo:Lcom/perm/kate/api/BanInfo;

    if-eqz v0, :cond_2

    .line 73
    invoke-direct {p0}, Lcom/perm/kate/GroupBanActivity;->fillFields()V

    .line 80
    :goto_1
    invoke-direct {p0}, Lcom/perm/kate/GroupBanActivity;->displayInfo()V

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->btn_ban_user:Landroid/widget/Button;

    const v1, 0x7f07014f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 76
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->sp_end_date:Landroid/widget/Spinner;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 78
    invoke-virtual {p0}, Lcom/perm/kate/GroupBanActivity;->getBannedStatusForUser()V

    goto :goto_1
.end method
