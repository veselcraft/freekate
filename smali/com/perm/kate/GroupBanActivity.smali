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
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field

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

    .line 28
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d MMMM yyyy h:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perm/kate/GroupBanActivity;->df:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/perm/kate/GroupBanActivity;->hasEndDate:Z

    .line 172
    new-instance v0, Lcom/perm/kate/GroupBanActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupBanActivity$4;-><init>(Lcom/perm/kate/GroupBanActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupBanActivity;->end_date_listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 183
    new-instance v0, Lcom/perm/kate/GroupBanActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupBanActivity$5;-><init>(Lcom/perm/kate/GroupBanActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupBanActivity;->ban_clickListener:Landroid/view/View$OnClickListener;

    .line 209
    new-instance v0, Lcom/perm/kate/GroupBanActivity$6;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupBanActivity$6;-><init>(Lcom/perm/kate/GroupBanActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupBanActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 302
    new-instance v0, Lcom/perm/kate/GroupBanActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupBanActivity$8;-><init>(Lcom/perm/kate/GroupBanActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupBanActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GroupBanActivity;Lcom/perm/kate/api/GroupBanItem;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupBanActivity;->displayBanInfoInUi(Lcom/perm/kate/api/GroupBanItem;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/GroupBanActivity;)J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/perm/kate/GroupBanActivity;->group_id:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/GroupBanActivity;)Landroid/widget/Button;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/perm/kate/GroupBanActivity;->btn_ban_user:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/perm/kate/GroupBanActivity;)Lcom/perm/kate/api/BanInfo;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/perm/kate/GroupBanActivity;->banInfo:Lcom/perm/kate/api/BanInfo;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/perm/kate/GroupBanActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/perm/kate/GroupBanActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/perm/kate/GroupBanActivity;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/perm/kate/GroupBanActivity;->finishOnUiThread()V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/GroupBanActivity;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/perm/kate/GroupBanActivity;->enableButtonOnUiThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/GroupBanActivity;)J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/perm/kate/GroupBanActivity;->user_id:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/perm/kate/GroupBanActivity;Lcom/perm/kate/api/GroupBanItem;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupBanActivity;->displayBanInfo(Lcom/perm/kate/api/GroupBanItem;)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/GroupBanActivity;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupBanActivity;->updateEndDateLabel(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/GroupBanActivity;)Ljava/lang/Long;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/perm/kate/GroupBanActivity;->getEndDate()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/perm/kate/GroupBanActivity;)Ljava/lang/Integer;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/perm/kate/GroupBanActivity;->getReason()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/perm/kate/GroupBanActivity;)Ljava/lang/String;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/perm/kate/GroupBanActivity;->getComment()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/perm/kate/GroupBanActivity;)Z
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/perm/kate/GroupBanActivity;->getCommentVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/perm/kate/GroupBanActivity;)Landroid/widget/Button;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/perm/kate/GroupBanActivity;->btn_cancel:Landroid/widget/Button;

    return-object p0
.end method

.method private displayBanInfo(Lcom/perm/kate/api/GroupBanItem;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->btn_ban_user:Landroid/widget/Button;

    const v1, 0x7f0f02a6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 121
    iget-object p1, p1, Lcom/perm/kate/api/GroupBanItem;->banInfo:Lcom/perm/kate/api/BanInfo;

    iput-object p1, p0, Lcom/perm/kate/GroupBanActivity;->banInfo:Lcom/perm/kate/api/BanInfo;

    .line 122
    invoke-direct {p0}, Lcom/perm/kate/GroupBanActivity;->fillFields()V

    const p1, 0x7f0f004a

    .line 123
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    return-void
.end method

.method private displayBanInfoInUi(Lcom/perm/kate/api/GroupBanItem;)V
    .locals 1

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 111
    :cond_0
    new-instance v0, Lcom/perm/kate/GroupBanActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/GroupBanActivity$3;-><init>(Lcom/perm/kate/GroupBanActivity;Lcom/perm/kate/api/GroupBanItem;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private displayInfo()V
    .locals 12

    .line 149
    iget-wide v0, p0, Lcom/perm/kate/GroupBanActivity;->user_id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 150
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v4, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    iget-object v4, p0, Lcom/perm/kate/GroupBanActivity;->tv_user_name:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v5

    iget-object v6, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    iget-object v7, p0, Lcom/perm/kate/GroupBanActivity;->img_user_photo:Landroid/widget/ImageView;

    const/4 v8, 0x1

    const/16 v9, 0x5a

    .line 155
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v10

    const/4 v11, 0x1

    .line 154
    invoke-virtual/range {v5 .. v11}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 158
    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/GroupBanActivity;->user_id:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 159
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    neg-long v0, v0

    invoke-virtual {v2, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v1, p0, Lcom/perm/kate/GroupBanActivity;->tv_user_name:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v3

    iget-object v4, v0, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/GroupBanActivity;->img_user_photo:Landroid/widget/ImageView;

    const/4 v6, 0x1

    const/16 v7, 0x5a

    .line 163
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v8

    const/4 v9, 0x1

    .line 162
    invoke-virtual/range {v3 .. v9}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 166
    :cond_1
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v1, p0, Lcom/perm/kate/GroupBanActivity;->group_id:J

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 168
    iget-object v1, p0, Lcom/perm/kate/GroupBanActivity;->tv_group_text:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private enableButtonOnUiThread()V
    .locals 1

    .line 229
    new-instance v0, Lcom/perm/kate/GroupBanActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupBanActivity$7;-><init>(Lcom/perm/kate/GroupBanActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private fillEndDateSpinner()V
    .locals 8

    .line 127
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 128
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 129
    iget-object v2, p0, Lcom/perm/kate/GroupBanActivity;->df:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/perm/kate/GroupBanActivity;->banInfo:Lcom/perm/kate/api/BanInfo;

    iget-wide v4, v4, Lcom/perm/kate/api/BanInfo;->end_date:J

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 130
    :goto_0
    array-length v2, v0

    if-ge v3, v2, :cond_0

    add-int/lit8 v2, v3, 0x1

    .line 131
    aget-object v3, v0, v3

    aput-object v3, v1, v2

    move v3, v2

    goto :goto_0

    .line 132
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    .line 133
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 134
    iget-object v1, p0, Lcom/perm/kate/GroupBanActivity;->sp_end_date:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private fillFields()V
    .locals 5

    .line 138
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->banInfo:Lcom/perm/kate/api/BanInfo;

    iget-wide v0, v0, Lcom/perm/kate/api/BanInfo;->end_date:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/perm/kate/GroupBanActivity;->fillEndDateSpinner()V

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lcom/perm/kate/GroupBanActivity;->hasEndDate:Z

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->sp_end_date:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 143
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->sp_ban_reason:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/perm/kate/GroupBanActivity;->banInfo:Lcom/perm/kate/api/BanInfo;

    iget v1, v1, Lcom/perm/kate/api/BanInfo;->reason:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 144
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->ed_comment:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/perm/kate/GroupBanActivity;->banInfo:Lcom/perm/kate/api/BanInfo;

    iget-object v1, v1, Lcom/perm/kate/api/BanInfo;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->cb_comment_visible:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/perm/kate/GroupBanActivity;->banInfo:Lcom/perm/kate/api/BanInfo;

    iget-boolean v1, v1, Lcom/perm/kate/api/BanInfo;->comment_visible:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method private finishOnUiThread()V
    .locals 1

    .line 310
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 312
    :cond_0
    new-instance v0, Lcom/perm/kate/GroupBanActivity$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupBanActivity$9;-><init>(Lcom/perm/kate/GroupBanActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getComment()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->ed_comment:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->ed_comment:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCommentVisible()Z
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->cb_comment_visible:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->cb_comment_visible:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getEndDate()Ljava/lang/Long;
    .locals 4

    .line 290
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->sp_end_date:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 291
    iget-boolean v1, p0, Lcom/perm/kate/GroupBanActivity;->hasEndDate:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 293
    iget-object v1, p0, Lcom/perm/kate/GroupBanActivity;->banInfo:Lcom/perm/kate/api/BanInfo;

    if-eqz v1, :cond_1

    .line 294
    iget-wide v0, v1, Lcom/perm/kate/api/BanInfo;->end_date:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 295
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/GroupBanActivity;->sp_end_date:Landroid/widget/Spinner;

    if-eqz v1, :cond_2

    if-lez v0, :cond_2

    .line 296
    invoke-direct {p0, v0}, Lcom/perm/kate/GroupBanActivity;->getEndDateByPos(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 297
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getEndDateByPos(I)J
    .locals 4

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    goto :goto_1

    :cond_0
    const-wide/32 v2, 0x36ee80

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0x5265c00

    goto :goto_0

    :cond_2
    const-wide/32 v2, 0x240c8400

    goto :goto_0

    :cond_3
    const-wide v2, 0x9fa52400L

    goto :goto_0

    :cond_4
    const-wide v2, 0x757b12c00L

    :goto_0
    add-long/2addr v0, v2

    :goto_1
    return-wide v0
.end method

.method private getReason()Ljava/lang/Integer;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->sp_ban_reason:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->sp_ban_reason:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private updateEndDateLabel(I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .line 239
    iget-boolean v0, p0, Lcom/perm/kate/GroupBanActivity;->hasEndDate:Z

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    if-lez p1, :cond_1

    .line 242
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupBanActivity;->getEndDateByPos(I)J

    move-result-wide v0

    .line 243
    iget-object p1, p0, Lcom/perm/kate/GroupBanActivity;->tv_end_date:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/perm/kate/GroupBanActivity;->df:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object p1, p0, Lcom/perm/kate/GroupBanActivity;->tv_end_date:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 246
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/GroupBanActivity;->tv_end_date:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getBannedStatusForUser()V
    .locals 2

    .line 85
    new-instance v0, Lcom/perm/kate/GroupBanActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupBanActivity$1;-><init>(Lcom/perm/kate/GroupBanActivity;Landroid/app/Activity;)V

    .line 99
    new-instance v1, Lcom/perm/kate/GroupBanActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/GroupBanActivity$2;-><init>(Lcom/perm/kate/GroupBanActivity;Lcom/perm/kate/session/Callback;)V

    .line 105
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 49
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0094

    .line 50
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f01bb

    .line 51
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    const p1, 0x7f090188

    .line 52
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/perm/kate/GroupBanActivity;->img_user_photo:Landroid/widget/ImageView;

    const p1, 0x7f0903e6

    .line 53
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/GroupBanActivity;->tv_user_name:Landroid/widget/TextView;

    const p1, 0x7f090374

    .line 54
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/GroupBanActivity;->tv_group_text:Landroid/widget/TextView;

    const p1, 0x7f0902eb

    .line 55
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/GroupBanActivity;->sp_end_date:Landroid/widget/Spinner;

    .line 56
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->end_date_listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p1, 0x7f090369

    .line 57
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/GroupBanActivity;->tv_end_date:Landroid/widget/TextView;

    const p1, 0x7f0902dd

    .line 58
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/GroupBanActivity;->sp_ban_reason:Landroid/widget/Spinner;

    const p1, 0x7f0900fb

    .line 59
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/GroupBanActivity;->ed_comment:Landroid/widget/EditText;

    const p1, 0x7f0900a9

    .line 60
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/perm/kate/GroupBanActivity;->cb_comment_visible:Landroid/widget/CheckBox;

    const p1, 0x7f090078

    .line 61
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/GroupBanActivity;->btn_ban_user:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->ban_clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09006a

    .line 63
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/GroupBanActivity;->btn_cancel:Landroid/widget/Button;

    .line 64
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.user_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/GroupBanActivity;->user_id:J

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.group_id"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/GroupBanActivity;->group_id:J

    .line 67
    iget-wide v5, p0, Lcom/perm/kate/GroupBanActivity;->user_id:J

    cmp-long p1, v5, v1

    if-eqz p1, :cond_2

    cmp-long p1, v3, v1

    if-nez p1, :cond_0

    goto :goto_1

    .line 71
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.ban_info"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/BanInfo;

    iput-object p1, p0, Lcom/perm/kate/GroupBanActivity;->banInfo:Lcom/perm/kate/api/BanInfo;

    if-eqz p1, :cond_1

    .line 74
    invoke-direct {p0}, Lcom/perm/kate/GroupBanActivity;->fillFields()V

    goto :goto_0

    .line 76
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/GroupBanActivity;->btn_ban_user:Landroid/widget/Button;

    const v0, 0x7f0f01b8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 77
    iget-object p1, p0, Lcom/perm/kate/GroupBanActivity;->sp_end_date:Landroid/widget/Spinner;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 79
    invoke-virtual {p0}, Lcom/perm/kate/GroupBanActivity;->getBannedStatusForUser()V

    .line 81
    :goto_0
    invoke-direct {p0}, Lcom/perm/kate/GroupBanActivity;->displayInfo()V

    return-void

    .line 68
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
