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

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 78
    new-instance v0, Lcom/perm/kate/PublishDateActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PublishDateActivity$1;-><init>(Lcom/perm/kate/PublishDateActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PublishDateActivity;->save_OnClickListener:Landroid/view/View$OnClickListener;

    .line 85
    new-instance v0, Lcom/perm/kate/PublishDateActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/PublishDateActivity$2;-><init>(Lcom/perm/kate/PublishDateActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PublishDateActivity;->cancel_OnClickListener:Landroid/view/View$OnClickListener;

    .line 103
    new-instance v0, Lcom/perm/kate/PublishDateActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/PublishDateActivity$3;-><init>(Lcom/perm/kate/PublishDateActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PublishDateActivity;->date_OnClickListener:Landroid/view/View$OnClickListener;

    .line 130
    new-instance v0, Lcom/perm/kate/PublishDateActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/PublishDateActivity$4;-><init>(Lcom/perm/kate/PublishDateActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PublishDateActivity;->timer_OnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PublishDateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PublishDateActivity;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/perm/kate/PublishDateActivity;->saveData()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/PublishDateActivity;)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PublishDateActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/perm/kate/PublishDateActivity;->date:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$202(Lcom/perm/kate/PublishDateActivity;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PublishDateActivity;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/perm/kate/PublishDateActivity;->publish_date:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$300(Lcom/perm/kate/PublishDateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PublishDateActivity;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/perm/kate/PublishDateActivity;->updateButtonsLabels()V

    return-void
.end method

.method private saveData()V
    .locals 6

    .prologue
    .line 93
    iget-object v1, p0, Lcom/perm/kate/PublishDateActivity;->date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/perm/kate/PublishDateActivity;->date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/PublishDateActivity;->publish_date:Ljava/lang/Long;

    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 96
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "publish_date"

    iget-object v2, p0, Lcom/perm/kate/PublishDateActivity;->publish_date:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 97
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/perm/kate/PublishDateActivity;->setResult(ILandroid/content/Intent;)V

    .line 98
    invoke-virtual {p0}, Lcom/perm/kate/PublishDateActivity;->finish()V

    .line 101
    .end local v0    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 100
    :cond_0
    const v1, 0x7f0704be

    invoke-virtual {p0, v1}, Lcom/perm/kate/PublishDateActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private setData()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 60
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 61
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v6, p0, Lcom/perm/kate/PublishDateActivity;->publish_date:Ljava/lang/Long;

    if-eqz v6, :cond_0

    .line 62
    iget-object v6, p0, Lcom/perm/kate/PublishDateActivity;->publish_date:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/perm/utils/TimeFix;->fix(J)J

    move-result-wide v6

    mul-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 65
    :goto_0
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 66
    .local v5, "year":I
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 67
    .local v4, "month":I
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 68
    .local v1, "day":I
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 69
    .local v2, "hour":I
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 71
    .local v3, "min":I
    new-instance v6, Ljava/util/Date;

    add-int/lit16 v7, v5, -0x76c

    invoke-direct {v6, v7, v4, v1}, Ljava/util/Date;-><init>(III)V

    iput-object v6, p0, Lcom/perm/kate/PublishDateActivity;->date:Ljava/util/Date;

    .line 72
    iget-object v6, p0, Lcom/perm/kate/PublishDateActivity;->date:Ljava/util/Date;

    invoke-virtual {v6, v2}, Ljava/util/Date;->setHours(I)V

    .line 73
    iget-object v6, p0, Lcom/perm/kate/PublishDateActivity;->date:Ljava/util/Date;

    invoke-virtual {v6, v3}, Ljava/util/Date;->setMinutes(I)V

    .line 75
    iget-object v6, p0, Lcom/perm/kate/PublishDateActivity;->date:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/perm/kate/PublishDateActivity;->publish_date:Ljava/lang/Long;

    .line 76
    return-void

    .line 64
    .end local v1    # "day":I
    .end local v2    # "hour":I
    .end local v3    # "min":I
    .end local v4    # "month":I
    .end local v5    # "year":I
    :cond_0
    const/16 v6, 0xa

    const/4 v7, 0x4

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_0
.end method

.method private updateButtonsLabels()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 153
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "d MMMM yyyy"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, "df":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "HH:mm"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, "df2":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    iget-object v5, p0, Lcom/perm/kate/PublishDateActivity;->publish_date:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long/2addr v6, v8

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "text_publish_date":Ljava/lang/String;
    new-instance v4, Ljava/util/Date;

    iget-object v5, p0, Lcom/perm/kate/PublishDateActivity;->publish_date:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long/2addr v6, v8

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "text_publish_time":Ljava/lang/String;
    iget-object v4, p0, Lcom/perm/kate/PublishDateActivity;->btn_date:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v4, p0, Lcom/perm/kate/PublishDateActivity;->btn_timer:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 159
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v2, 0x7f0300eb

    invoke-virtual {p0, v2}, Lcom/perm/kate/PublishDateActivity;->setContentView(I)V

    .line 40
    const v2, 0x7f070223

    invoke-virtual {p0, v2}, Lcom/perm/kate/PublishDateActivity;->setHeaderTitle(I)V

    .line 41
    invoke-virtual {p0}, Lcom/perm/kate/PublishDateActivity;->setButtonsBg()V

    .line 42
    const v2, 0x7f0e019b

    invoke-virtual {p0, v2}, Lcom/perm/kate/PublishDateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/perm/kate/PublishDateActivity;->btn_cancel:Landroid/widget/Button;

    .line 43
    const v2, 0x7f0e019d

    invoke-virtual {p0, v2}, Lcom/perm/kate/PublishDateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/perm/kate/PublishDateActivity;->btn_save:Landroid/widget/Button;

    .line 44
    iget-object v2, p0, Lcom/perm/kate/PublishDateActivity;->btn_cancel:Landroid/widget/Button;

    iget-object v3, p0, Lcom/perm/kate/PublishDateActivity;->cancel_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v2, p0, Lcom/perm/kate/PublishDateActivity;->btn_save:Landroid/widget/Button;

    iget-object v3, p0, Lcom/perm/kate/PublishDateActivity;->save_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v2, 0x7f0e02fa

    invoke-virtual {p0, v2}, Lcom/perm/kate/PublishDateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/perm/kate/PublishDateActivity;->btn_date:Landroid/widget/Button;

    .line 47
    const v2, 0x7f0e02fb

    invoke-virtual {p0, v2}, Lcom/perm/kate/PublishDateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/perm/kate/PublishDateActivity;->btn_timer:Landroid/widget/Button;

    .line 48
    iget-object v2, p0, Lcom/perm/kate/PublishDateActivity;->btn_date:Landroid/widget/Button;

    iget-object v3, p0, Lcom/perm/kate/PublishDateActivity;->date_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v2, p0, Lcom/perm/kate/PublishDateActivity;->btn_timer:Landroid/widget/Button;

    iget-object v3, p0, Lcom/perm/kate/PublishDateActivity;->timer_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {p0}, Lcom/perm/kate/PublishDateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.perm.kate.publish_date"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 51
    .local v0, "_publishDate":J
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/PublishDateActivity;->publish_date:Ljava/lang/Long;

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/PublishDateActivity;->setData()V

    .line 54
    invoke-direct {p0}, Lcom/perm/kate/PublishDateActivity;->updateButtonsLabels()V

    .line 55
    return-void
.end method
