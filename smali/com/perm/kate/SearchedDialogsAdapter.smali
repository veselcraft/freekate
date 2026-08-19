.class public Lcom/perm/kate/SearchedDialogsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchedDialogsAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private items:Ljava/util/ArrayList;

.field private user_photo_OnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 108
    new-instance v0, Lcom/perm/kate/SearchedDialogsAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchedDialogsAdapter$1;-><init>(Lcom/perm/kate/SearchedDialogsAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/SearchedDialogsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    .line 23
    iput-object p1, p0, Lcom/perm/kate/SearchedDialogsAdapter;->activity:Landroid/app/Activity;

    .line 24
    iput-object p2, p0, Lcom/perm/kate/SearchedDialogsAdapter;->items:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/SearchedDialogsAdapter;)Landroid/app/Activity;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/perm/kate/SearchedDialogsAdapter;->activity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/perm/kate/SearchedDialogsAdapter;->items:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 31
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/perm/kate/SearchedDialogsAdapter;->items:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 38
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/perm/kate/SearchedDialogsAdapter;->items:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    const v1, 0x7f090188

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 52
    iget-object v3, v0, Lcom/perm/kate/SearchedDialogsAdapter;->activity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c012c

    move-object/from16 v5, p3

    .line 53
    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 55
    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 57
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    .line 58
    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v6

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    invoke-static {v7, v8}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v9

    const-wide/high16 v10, 0x402e000000000000L    # 15.0

    invoke-static {v10, v11}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v10

    invoke-static {v7, v8}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v7

    invoke-virtual {v5, v6, v9, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    .line 59
    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v8

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 60
    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 61
    invoke-virtual {v4}, Landroid/widget/ImageView;->requestLayout()V

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    .line 67
    :cond_1
    :goto_0
    iget-object v4, v0, Lcom/perm/kate/SearchedDialogsAdapter;->items:Ljava/util/ArrayList;

    move/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/SearchDialogItem;

    .line 68
    iget-object v5, v4, Lcom/perm/kate/api/SearchDialogItem;->type:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    sget-object v6, Lcom/perm/kate/api/SearchDialogItem$SDIType;->USER:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    const v7, 0x7f09009a

    const v8, 0x7f0903e6

    const/16 v9, 0x8

    if-ne v5, v6, :cond_3

    .line 69
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 70
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/ImageView;

    .line 71
    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    iget-object v1, v0, Lcom/perm/kate/SearchedDialogsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v1, v4, Lcom/perm/kate/api/SearchDialogItem;->user:Lcom/perm/kate/api/User;

    iget-wide v10, v1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/perm/kate/api/SearchDialogItem;->user:Lcom/perm/kate/api/User;

    iget-object v6, v6, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/perm/kate/api/SearchDialogItem;->user:Lcom/perm/kate/api/User;

    iget-object v6, v6, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v10

    iget-object v1, v4, Lcom/perm/kate/api/SearchDialogItem;->user:Lcom/perm/kate/api/User;

    iget-object v11, v1, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const/4 v13, 0x1

    const/16 v14, 0x5a

    .line 77
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v15

    const/16 v16, 0x1

    .line 76
    invoke-virtual/range {v10 .. v16}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 78
    iget-object v1, v4, Lcom/perm/kate/api/SearchDialogItem;->user:Lcom/perm/kate/api/User;

    iget-wide v5, v1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v5, v4, Lcom/perm/kate/api/SearchDialogItem;->user:Lcom/perm/kate/api/User;

    iget-object v5, v5, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 80
    :cond_3
    sget-object v6, Lcom/perm/kate/api/SearchDialogItem$SDIType;->GROUP:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    if-ne v5, v6, :cond_4

    .line 81
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 82
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/ImageView;

    .line 83
    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    iget-object v1, v4, Lcom/perm/kate/api/SearchDialogItem;->group:Lcom/perm/kate/api/Group;

    iget-object v1, v1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v10

    iget-object v1, v4, Lcom/perm/kate/api/SearchDialogItem;->group:Lcom/perm/kate/api/Group;

    iget-object v11, v1, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    const/4 v13, 0x1

    const/16 v14, 0x5a

    .line 88
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v15

    const/16 v16, 0x1

    .line 87
    invoke-virtual/range {v10 .. v16}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 89
    iget-object v1, v4, Lcom/perm/kate/api/SearchDialogItem;->group:Lcom/perm/kate/api/Group;

    iget-wide v1, v1, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 91
    :cond_4
    sget-object v6, Lcom/perm/kate/api/SearchDialogItem$SDIType;->CHAT:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    if-ne v5, v6, :cond_5

    .line 92
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v4, Lcom/perm/kate/api/SearchDialogItem;->chat:Lcom/perm/kate/api/Message;

    iget-object v6, v6, Lcom/perm/kate/api/Message;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 94
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x0

    .line 95
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0801de

    .line 96
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v1, v4, Lcom/perm/kate/api/SearchDialogItem;->chat:Lcom/perm/kate/api/Message;

    iget-object v1, v1, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 100
    :cond_5
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, v4, Lcom/perm/kate/api/SearchDialogItem;->email:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 102
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    const v1, 0x7f09000a

    .line 104
    iget-object v2, v4, Lcom/perm/kate/api/SearchDialogItem;->type:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    invoke-virtual {v3, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object v3
.end method
