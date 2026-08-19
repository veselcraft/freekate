.class public Lcom/perm/utils/RepostHelper;
.super Ljava/lang/Object;
.source "RepostHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/utils/RepostHelper$RepostCallback;
    }
.end annotation


# instance fields
.field private activity:Lcom/perm/kate/BaseActivity;

.field callback:Ljava/lang/ref/WeakReference;

.field private date:Ljava/util/Date;

.field group_id:Ljava/lang/Long;

.field post_id:J

.field post_owner_id:J

.field private repost_callback:Lcom/perm/kate/session/Callback;


# direct methods
.method public static synthetic $r8$lambda$8Ump46-cA0yOCz6oNUWoC4uNR0Q(Landroid/view/View;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/perm/utils/RepostHelper;->lambda$createRepostDialog$2(Landroid/view/View;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z4Qbo4LZ2HkAffXNXx-3pYg4xqw(Lcom/perm/utils/RepostHelper;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/perm/utils/RepostHelper;->lambda$createRepostDialog$1(Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nbWwiss9NjUcpzyvkxsvfMiQDjM(Lcom/perm/utils/RepostHelper;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/perm/utils/RepostHelper;->lambda$createRepostDialog$0(Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/perm/kate/BaseActivity;Lcom/perm/utils/RepostHelper$RepostCallback;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Lcom/perm/utils/RepostHelper$4;

    iget-object v1, p0, Lcom/perm/utils/RepostHelper;->activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {v0, p0, v1}, Lcom/perm/utils/RepostHelper$4;-><init>(Lcom/perm/utils/RepostHelper;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/utils/RepostHelper;->repost_callback:Lcom/perm/kate/session/Callback;

    .line 38
    iput-object p1, p0, Lcom/perm/utils/RepostHelper;->activity:Lcom/perm/kate/BaseActivity;

    .line 39
    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    if-eqz p2, :cond_0

    .line 41
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/perm/utils/RepostHelper;->callback:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/perm/utils/RepostHelper;)Ljava/util/Date;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/perm/utils/RepostHelper;->date:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/utils/RepostHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/utils/RepostHelper;->repostWallPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/utils/RepostHelper;)Lcom/perm/kate/BaseActivity;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/perm/utils/RepostHelper;->activity:Lcom/perm/kate/BaseActivity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/utils/RepostHelper;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/perm/utils/RepostHelper;->repost_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/perm/utils/RepostHelper;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/perm/utils/RepostHelper;->updateButtonsLabels(Landroid/widget/Button;Landroid/widget/Button;)V

    return-void
.end method

.method private synthetic lambda$createRepostDialog$0(Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;)V
    .locals 6

    .line 63
    new-instance v2, Lcom/perm/utils/RepostHelper$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/perm/utils/RepostHelper$1;-><init>(Lcom/perm/utils/RepostHelper;Landroid/widget/Button;Landroid/widget/Button;)V

    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 72
    iget-object p2, p0, Lcom/perm/utils/RepostHelper;->date:Ljava/util/Date;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p2, 0xb

    .line 73
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 p2, 0xc

    .line 74
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 75
    new-instance p1, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/perm/utils/RepostHelper;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {p1}, Landroid/app/TimePickerDialog;->show()V

    return-void
.end method

.method private synthetic lambda$createRepostDialog$1(Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;)V
    .locals 7

    .line 78
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    .line 79
    iget-object v0, p0, Lcom/perm/utils/RepostHelper;->date:Ljava/util/Date;

    invoke-virtual {p3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 80
    invoke-virtual {p3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v0, 0x2

    .line 81
    invoke-virtual {p3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v0, 0x5

    .line 82
    invoke-virtual {p3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 83
    new-instance v3, Lcom/perm/utils/RepostHelper$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/perm/utils/RepostHelper$2;-><init>(Lcom/perm/utils/RepostHelper;Landroid/widget/Button;Landroid/widget/Button;)V

    .line 92
    iget-object p1, p0, Lcom/perm/utils/RepostHelper;->activity:Lcom/perm/kate/BaseActivity;

    .line 94
    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->isBrokenSamsungDevice()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 95
    new-instance p1, Landroid/view/ContextThemeWrapper;

    iget-object p2, p0, Lcom/perm/utils/RepostHelper;->activity:Lcom/perm/kate/BaseActivity;

    const p3, 0x1030073

    invoke-direct {p1, p2, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :cond_0
    move-object v2, p1

    .line 96
    new-instance p1, Landroid/app/DatePickerDialog;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method

.method private static synthetic lambda$createRepostDialog$2(Landroid/view/View;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const p1, 0x7f0901b2

    .line 101
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private repostWallPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 7

    .line 143
    new-instance v6, Lcom/perm/utils/RepostHelper$5;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/perm/utils/RepostHelper$5;-><init>(Lcom/perm/utils/RepostHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 150
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setDefaultDate()V
    .locals 5

    .line 158
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/perm/utils/RepostHelper;->date:Ljava/util/Date;

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xdbba00

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    return-void
.end method

.method private updateButtonsLabels(Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 3

    .line 165
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d MMMM yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 167
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 168
    iget-object v2, p0, Lcom/perm/utils/RepostHelper;->date:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 169
    iget-object v2, p0, Lcom/perm/utils/RepostHelper;->date:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public createRepostDialog(JJLjava/lang/Long;Z)V
    .locals 7

    .line 48
    iget-object v0, p0, Lcom/perm/utils/RepostHelper;->activity:Lcom/perm/kate/BaseActivity;

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    iput-object p5, p0, Lcom/perm/utils/RepostHelper;->group_id:Ljava/lang/Long;

    .line 51
    iput-wide p1, p0, Lcom/perm/utils/RepostHelper;->post_id:J

    .line 52
    iput-wide p3, p0, Lcom/perm/utils/RepostHelper;->post_owner_id:J

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p6, :cond_1

    const-string p6, "wall_ads"

    goto :goto_0

    :cond_1
    const-string p6, "wall"

    :goto_0
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 55
    iget-object p1, p0, Lcom/perm/utils/RepostHelper;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c001f

    const/4 p3, 0x0

    .line 56
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09011d

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Landroid/widget/EditText;

    const p2, 0x7f0f025e

    .line 58
    invoke-virtual {v4, p2}, Landroid/widget/EditText;->setHint(I)V

    const p2, 0x7f09009c

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const p4, 0x7f09009d

    .line 61
    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/Button;

    .line 62
    new-instance p6, Lcom/perm/utils/RepostHelper$$ExternalSyntheticLambda1;

    invoke-direct {p6, p0, p2, p4}, Lcom/perm/utils/RepostHelper$$ExternalSyntheticLambda1;-><init>(Lcom/perm/utils/RepostHelper;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {p4, p6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    new-instance p6, Lcom/perm/utils/RepostHelper$$ExternalSyntheticLambda0;

    invoke-direct {p6, p0, p2, p4}, Lcom/perm/utils/RepostHelper$$ExternalSyntheticLambda0;-><init>(Lcom/perm/utils/RepostHelper;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {p2, p6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p6, 0x7f0900b6

    .line 98
    invoke-virtual {p1, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p6

    move-object v3, p6

    check-cast v3, Landroid/widget/CheckBox;

    const/4 p6, 0x0

    .line 99
    invoke-virtual {v3, p6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 100
    new-instance p6, Lcom/perm/utils/RepostHelper$$ExternalSyntheticLambda2;

    invoke-direct {p6, p1}, Lcom/perm/utils/RepostHelper$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, p6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 103
    invoke-direct {p0}, Lcom/perm/utils/RepostHelper;->setDefaultDate()V

    .line 104
    invoke-direct {p0, p2, p4}, Lcom/perm/utils/RepostHelper;->updateButtonsLabels(Landroid/widget/Button;Landroid/widget/Button;)V

    .line 105
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p4, p0, Lcom/perm/utils/RepostHelper;->activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {p2, p4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p4, 0x7f0f022c

    .line 106
    invoke-virtual {p2, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p4, 0x7f0f02ba

    new-instance p6, Lcom/perm/utils/RepostHelper$3;

    move-object v1, p6

    move-object v2, p0

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/perm/utils/RepostHelper$3;-><init>(Lcom/perm/utils/RepostHelper;Landroid/widget/CheckBox;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/Long;)V

    .line 107
    invoke-virtual {p1, p4, p6}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p4, 0x7f0f01c5

    .line 118
    invoke-virtual {p1, p4, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
