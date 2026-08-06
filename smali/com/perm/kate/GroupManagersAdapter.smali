.class public Lcom/perm/kate/GroupManagersAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupManagersAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private profileClickListener:Landroid/view/View$OnClickListener;

.field private users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/GroupManagersAdapter;->users:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Lcom/perm/kate/GroupManagersAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupManagersAdapter$1;-><init>(Lcom/perm/kate/GroupManagersAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/GroupManagersAdapter;->profileClickListener:Landroid/view/View$OnClickListener;

    .line 23
    iput-object p1, p0, Lcom/perm/kate/GroupManagersAdapter;->activity:Landroid/app/Activity;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GroupManagersAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupManagersAdapter;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/perm/kate/GroupManagersAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private getStringRole(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    .line 120
    const-string v0, "creator"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/perm/kate/GroupManagersAdapter;->activity:Landroid/app/Activity;

    const v1, 0x7f070181

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    .line 122
    :cond_0
    const-string v0, "administrator"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/perm/kate/GroupManagersAdapter;->activity:Landroid/app/Activity;

    const v1, 0x7f07011b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_1
    const-string v0, "editor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/perm/kate/GroupManagersAdapter;->activity:Landroid/app/Activity;

    const v1, 0x7f070193

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_2
    const-string v0, "moderator"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    iget-object v0, p0, Lcom/perm/kate/GroupManagersAdapter;->activity:Landroid/app/Activity;

    const v1, 0x7f0701e4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public displayData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    if-nez p1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/perm/kate/GroupManagersAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 31
    :goto_0
    new-instance v0, Lcom/perm/kate/api/User;

    invoke-direct {v0}, Lcom/perm/kate/api/User;-><init>()V

    .line 32
    .local v0, "add":Lcom/perm/kate/api/User;
    iget-object v1, p0, Lcom/perm/kate/GroupManagersAdapter;->activity:Landroid/app/Activity;

    const v2, 0x7f07021d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    .line 33
    const-string v1, ""

    iput-object v1, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    .line 34
    const-string v1, "add"

    iput-object v1, v0, Lcom/perm/kate/api/User;->role:Ljava/lang/String;

    .line 35
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    .line 36
    iget-object v1, p0, Lcom/perm/kate/GroupManagersAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {p0}, Lcom/perm/kate/GroupManagersAdapter;->notifyDataSetChanged()V

    .line 38
    return-void

    .line 30
    .end local v0    # "add":Lcom/perm/kate/api/User;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/perm/kate/GroupManagersAdapter;->users:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/perm/kate/GroupManagersAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/perm/kate/GroupManagersAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/GroupManagersAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/perm/kate/GroupManagersAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 55
    const-wide/16 v0, -0x1

    .line 56
    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 71
    const/16 v16, 0x0

    .line 73
    .local v16, "vi":Landroid/view/View;
    if-nez p2, :cond_1

    .line 74
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupManagersAdapter;->activity:Landroid/app/Activity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 75
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030045

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 77
    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    const v2, 0x7f0e0064

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 79
    .local v4, "img_user_photo":Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 80
    .local v13, "params":Landroid/widget/LinearLayout$LayoutParams;
    const-wide/high16 v2, 0x4014000000000000L    # 5.0

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

    .line 81
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    iput v2, v13, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 82
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    iput v2, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 83
    invoke-virtual {v4}, Landroid/widget/ImageView;->requestLayout()V

    .line 87
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    .end local v13    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupManagersAdapter;->users:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/perm/kate/api/User;

    .line 88
    .local v15, "user":Lcom/perm/kate/api/User;
    const v2, 0x7f0e0065

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 89
    .local v12, "name":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v15, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v15, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 90
    .local v9, "display_name":Ljava/lang/String;
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    const v2, 0x7f0e0064

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 93
    .restart local v4    # "img_user_photo":Landroid/widget/ImageView;
    iget-object v2, v15, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupManagersAdapter;->profileClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 96
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    iget-object v3, v15, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const/4 v5, 0x1

    const/16 v6, 0x5a

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 104
    :goto_1
    const v2, 0x7f0e00ee

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v2, v15, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    const v2, 0x7f0e00f0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 106
    .local v14, "role":Landroid/widget/TextView;
    iget-object v2, v15, Lcom/perm/kate/api/User;->role:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, v15, Lcom/perm/kate/api/User;->role:Ljava/lang/String;

    const-string v3, "add"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 107
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v2, v15, Lcom/perm/kate/api/User;->role:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/GroupManagersAdapter;->getStringRole(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    move-object/from16 v17, v16

    .line 115
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    .end local v9    # "display_name":Ljava/lang/String;
    .end local v12    # "name":Landroid/widget/TextView;
    .end local v14    # "role":Landroid/widget/TextView;
    .end local v15    # "user":Lcom/perm/kate/api/User;
    .end local v16    # "vi":Landroid/view/View;
    .local v17, "vi":Landroid/view/View;
    :goto_4
    return-object v17

    .line 86
    .end local v17    # "vi":Landroid/view/View;
    .restart local v16    # "vi":Landroid/view/View;
    :cond_1
    move-object/from16 v16, p2

    goto/16 :goto_0

    .line 98
    .restart local v4    # "img_user_photo":Landroid/widget/ImageView;
    .restart local v9    # "display_name":Ljava/lang/String;
    .restart local v12    # "name":Landroid/widget/TextView;
    .restart local v15    # "user":Lcom/perm/kate/api/User;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v2, v15, Lcom/perm/kate/api/User;->role:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v15, Lcom/perm/kate/api/User;->role:Ljava/lang/String;

    const-string v3, "add"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 100
    const v2, 0x7f02011c

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 112
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    .end local v9    # "display_name":Ljava/lang/String;
    .end local v12    # "name":Landroid/widget/TextView;
    .end local v15    # "user":Lcom/perm/kate/api/User;
    :catch_0
    move-exception v10

    .line 113
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    invoke-static {v10}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    move-object/from16 v17, v16

    .line 115
    .end local v16    # "vi":Landroid/view/View;
    .restart local v17    # "vi":Landroid/view/View;
    goto :goto_4

    .line 102
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v17    # "vi":Landroid/view/View;
    .restart local v4    # "img_user_photo":Landroid/widget/ImageView;
    .restart local v9    # "display_name":Ljava/lang/String;
    .restart local v12    # "name":Landroid/widget/TextView;
    .restart local v15    # "user":Lcom/perm/kate/api/User;
    .restart local v16    # "vi":Landroid/view/View;
    :cond_3
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 104
    :cond_4
    const/16 v2, 0x8

    goto :goto_2

    .line 110
    .restart local v14    # "role":Landroid/widget/TextView;
    :cond_5
    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method
