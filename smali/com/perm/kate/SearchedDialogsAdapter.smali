.class public Lcom/perm/kate/SearchedDialogsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchedDialogsAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/SearchDialogItem;",
            ">;"
        }
    .end annotation
.end field

.field private user_photo_OnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/SearchDialogItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "ims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/SearchDialogItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 108
    new-instance v0, Lcom/perm/kate/SearchedDialogsAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchedDialogsAdapter$1;-><init>(Lcom/perm/kate/SearchedDialogsAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/SearchedDialogsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    .line 23
    iput-object p1, p0, Lcom/perm/kate/SearchedDialogsAdapter;->activity:Landroid/app/Activity;

    .line 24
    iput-object p2, p0, Lcom/perm/kate/SearchedDialogsAdapter;->items:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/SearchedDialogsAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchedDialogsAdapter;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/perm/kate/SearchedDialogsAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/perm/kate/SearchedDialogsAdapter;->items:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 31
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SearchedDialogsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/perm/kate/SearchedDialogsAdapter;->items:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SearchedDialogsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/perm/kate/SearchedDialogsAdapter;->items:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 44
    const-wide/16 v0, -0x1

    .line 45
    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 51
    if-nez p2, :cond_1

    .line 52
    iget-object v2, p0, Lcom/perm/kate/SearchedDialogsAdapter;->activity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 53
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03010c

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 55
    .local v14, "v":Landroid/view/View;
    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    const v2, 0x7f0e0064

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 57
    .local v4, "img_user_photo":Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 58
    .local v13, "params":Landroid/widget/LinearLayout$LayoutParams;
    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v6

    invoke-virtual {v13, v2, v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 59
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    iput v2, v13, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 60
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    iput v2, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 61
    invoke-virtual {v4}, Landroid/widget/ImageView;->requestLayout()V

    .line 67
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    .end local v13    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/SearchedDialogsAdapter;->items:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perm/kate/api/SearchDialogItem;

    .line 68
    .local v11, "item":Lcom/perm/kate/api/SearchDialogItem;
    iget-object v2, v11, Lcom/perm/kate/api/SearchDialogItem;->type:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    sget-object v3, Lcom/perm/kate/api/SearchDialogItem$SDIType;->USER:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    if-ne v2, v3, :cond_3

    .line 69
    const v2, 0x7f0e0065

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 70
    .local v12, "name":Landroid/widget/TextView;
    const v2, 0x7f0e0064

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 71
    .restart local v4    # "img_user_photo":Landroid/widget/ImageView;
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    iget-object v2, p0, Lcom/perm/kate/SearchedDialogsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v2, v11, Lcom/perm/kate/api/SearchDialogItem;->user:Lcom/perm/kate/api/User;

    iget-wide v2, v2, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v11, Lcom/perm/kate/api/SearchDialogItem;->user:Lcom/perm/kate/api/User;

    iget-object v3, v3, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v11, Lcom/perm/kate/api/SearchDialogItem;->user:Lcom/perm/kate/api/User;

    iget-object v3, v3, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 75
    .local v9, "display_name":Ljava/lang/String;
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    iget-object v3, v11, Lcom/perm/kate/api/SearchDialogItem;->user:Lcom/perm/kate/api/User;

    iget-object v3, v3, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 77
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    .line 76
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 78
    iget-object v2, v11, Lcom/perm/kate/api/SearchDialogItem;->user:Lcom/perm/kate/api/User;

    iget-wide v2, v2, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    const v2, 0x7f0e00ee

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v2, v11, Lcom/perm/kate/api/SearchDialogItem;->user:Lcom/perm/kate/api/User;

    iget-object v2, v2, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 104
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    .end local v9    # "display_name":Ljava/lang/String;
    .end local v12    # "name":Landroid/widget/TextView;
    :goto_2
    const v2, 0x7f0e01a7

    iget-object v3, v11, Lcom/perm/kate/api/SearchDialogItem;->type:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    invoke-virtual {v14, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 105
    return-object v14

    .line 65
    .end local v11    # "item":Lcom/perm/kate/api/SearchDialogItem;
    .end local v14    # "v":Landroid/view/View;
    :cond_1
    move-object/from16 v14, p2

    .restart local v14    # "v":Landroid/view/View;
    goto/16 :goto_0

    .line 79
    .restart local v4    # "img_user_photo":Landroid/widget/ImageView;
    .restart local v9    # "display_name":Ljava/lang/String;
    .restart local v11    # "item":Lcom/perm/kate/api/SearchDialogItem;
    .restart local v12    # "name":Landroid/widget/TextView;
    :cond_2
    const/16 v2, 0x8

    goto :goto_1

    .line 80
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    .end local v9    # "display_name":Ljava/lang/String;
    .end local v12    # "name":Landroid/widget/TextView;
    :cond_3
    iget-object v2, v11, Lcom/perm/kate/api/SearchDialogItem;->type:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    sget-object v3, Lcom/perm/kate/api/SearchDialogItem$SDIType;->GROUP:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    if-ne v2, v3, :cond_4

    .line 81
    const v2, 0x7f0e0065

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 82
    .restart local v12    # "name":Landroid/widget/TextView;
    const v2, 0x7f0e0064

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 83
    .restart local v4    # "img_user_photo":Landroid/widget/ImageView;
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    iget-object v2, v11, Lcom/perm/kate/api/SearchDialogItem;->group:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    iget-object v3, v11, Lcom/perm/kate/api/SearchDialogItem;->group:Lcom/perm/kate/api/Group;

    iget-object v3, v3, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 88
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    .line 87
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 89
    iget-object v2, v11, Lcom/perm/kate/api/SearchDialogItem;->group:Lcom/perm/kate/api/Group;

    iget-wide v2, v2, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 90
    const v2, 0x7f0e00ee

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 91
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    .end local v12    # "name":Landroid/widget/TextView;
    :cond_4
    iget-object v2, v11, Lcom/perm/kate/api/SearchDialogItem;->type:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    sget-object v3, Lcom/perm/kate/api/SearchDialogItem$SDIType;->CHAT:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    if-ne v2, v3, :cond_5

    .line 92
    const v2, 0x7f0e0065

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v11, Lcom/perm/kate/api/SearchDialogItem;->chat:Lcom/perm/kate/api/Message;

    iget-object v3, v3, Lcom/perm/kate/api/Message;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const v2, 0x7f0e0064

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 94
    .restart local v4    # "img_user_photo":Landroid/widget/ImageView;
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v2, 0x7f020129

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    const v2, 0x7f0e00ee

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v2, v11, Lcom/perm/kate/api/SearchDialogItem;->chat:Lcom/perm/kate/api/Message;

    iget-object v2, v2, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    invoke-virtual {v14, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 100
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    :cond_5
    const v2, 0x7f0e0065

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v11, Lcom/perm/kate/api/SearchDialogItem;->email:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const v2, 0x7f0e0064

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 102
    const v2, 0x7f0e00ee

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method
