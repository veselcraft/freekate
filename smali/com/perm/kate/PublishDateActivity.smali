.class public Lcom/perm/kate/PublishDateActivity;
.super Lcom/perm/kate/BaseActivity;
.source "PublishDateActivity.java"


# instance fields
.field private btn_cancel:Landroid/widget/Button;

.field private btn_date:Landroid/widget/Button;

.field private btn_save:Landroid/widget/Button;

.field private btn_timer:Landroid/widget/Button;

.field private cancel_OnClickListener:Landroid/view/View$OnClickListener;

.field private date:Ljava/util/Date;

.field private date_OnClickListener:Landroid/view/View$OnClickListener;

.field private publish_date:Ljava/lang/Long;

.field private save_OnClickListener:Landroid/view/View$OnClickListener;

.field private timer_OnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 81
    new-instance v0, Lcom/perm/kate/PublishDateActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PublishDateActivity$1;-><init>(Lcom/perm/kate/PublishDateActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PublishDateActivity;->save_OnClickListener:Landroid/view/View$OnClickListener;

    .line 88
    new-instance v0, Lcom/perm/kate/PublishDateActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/PublishDateActivity$2;-><init>(Lcom/perm/kate/PublishDateActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PublishDateActivity;->cancel_OnClickListener:Landroid/view/View$OnClickListener;

    .line 106
    new-instance v0, Lcom/perm/kate/PublishDateActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/PublishDateActivity$3;-><init>(Lcom/perm/kate/PublishDateActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PublishDateActivity;->date_OnClickListener:Landroid/view/View$OnClickListener;

    .line 133
    new-instance v0, Lcom/perm/kate/PublishDateActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/PublishDateActivity$4;-><init>(Lcom/perm/kate/PublishDateActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PublishDateActivity;->timer_OnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PublishDateActivity;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/perm/kate/PublishDateActivity;->saveData()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/PublishDateActivity;)Ljava/util/Date;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/perm/kate/PublishDateActivity;->date:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic access$202(Lcom/perm/kate/PublishDateActivity;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/perm/kate/PublishDateActivity;->publish_date:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$300(Lcom/perm/kate/PublishDateActivity;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/perm/kate/PublishDateActivity;->updateButtonsLabels()V

    return-void
.end method

.method private saveData()V
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/perm/kate/PublishDateActivity;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 97
    iget-object v0, p0, Lcom/perm/kate/PublishDateActivity;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/PublishDateActivity;->publish_date:Ljava/lang/Long;

    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    iget-object v1, p0, Lcom/perm/kate/PublishDateActivity;->publish_date:Ljava/lang/Long;

    const-string v2, "publish_date"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 100
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const v0, 0x7f0f0544

    .line 103
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private setData()V
    .locals 8

    .line 62
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/perm/kate/PublishDateActivity;->publish_date:Ljava/lang/Long;

    const-wide/16 v2, 0x3e8

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/perm/utils/TimeFix;->fix(J)J

    move-result-wide v4

    mul-long v4, v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    const/4 v4, 0x4

    .line 67
    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->add(II)V

    :goto_0
    const/4 v1, 0x1

    .line 68
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v4, 0x2

    .line 69
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    .line 70
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xb

    .line 71
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xc

    .line 72
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 74
    new-instance v7, Ljava/util/Date;

    add-int/lit16 v1, v1, -0x76c

    invoke-direct {v7, v1, v4, v5}, Ljava/util/Date;-><init>(III)V

    iput-object v7, p0, Lcom/perm/kate/PublishDateActivity;->date:Ljava/util/Date;

    .line 75
    invoke-virtual {v7, v6}, Ljava/util/Date;->setHours(I)V

    .line 76
    iget-object v1, p0, Lcom/perm/kate/PublishDateActivity;->date:Ljava/util/Date;

    invoke-virtual {v1, v0}, Ljava/util/Date;->setMinutes(I)V

    .line 78
    iget-object v0, p0, Lcom/perm/kate/PublishDateActivity;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/PublishDateActivity;->publish_date:Ljava/lang/Long;

    return-void
.end method

.method private updateButtonsLabels()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d MMMM yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 157
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 159
    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/perm/kate/PublishDateActivity;->publish_date:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 160
    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/perm/kate/PublishDateActivity;->publish_date:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    mul-long v3, v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 161
    iget-object v2, p0, Lcom/perm/kate/PublishDateActivity;->btn_date:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/perm/kate/PublishDateActivity;->btn_timer:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 39
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0107

    .line 40
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f027d

    .line 41
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 42
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setButtonsBg()V

    const p1, 0x7f09006a

    .line 43
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/PublishDateActivity;->btn_cancel:Landroid/widget/Button;

    const p1, 0x7f090078

    .line 44
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/PublishDateActivity;->btn_save:Landroid/widget/Button;

    .line 45
    iget-object p1, p0, Lcom/perm/kate/PublishDateActivity;->btn_cancel:Landroid/widget/Button;

    iget-object v0, p0, Lcom/perm/kate/PublishDateActivity;->cancel_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object p1, p0, Lcom/perm/kate/PublishDateActivity;->btn_save:Landroid/widget/Button;

    iget-object v0, p0, Lcom/perm/kate/PublishDateActivity;->save_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090073

    .line 47
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/PublishDateActivity;->btn_date:Landroid/widget/Button;

    const p1, 0x7f090098

    .line 48
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/PublishDateActivity;->btn_timer:Landroid/widget/Button;

    .line 49
    iget-object p1, p0, Lcom/perm/kate/PublishDateActivity;->btn_date:Landroid/widget/Button;

    iget-object v0, p0, Lcom/perm/kate/PublishDateActivity;->date_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object p1, p0, Lcom/perm/kate/PublishDateActivity;->btn_timer:Landroid/widget/Button;

    iget-object v0, p0, Lcom/perm/kate/PublishDateActivity;->timer_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.publish_date"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-lez p1, :cond_0

    .line 53
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/PublishDateActivity;->publish_date:Ljava/lang/Long;

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/PublishDateActivity;->setData()V

    .line 55
    invoke-direct {p0}, Lcom/perm/kate/PublishDateActivity;->updateButtonsLabels()V

    return-void
.end method
