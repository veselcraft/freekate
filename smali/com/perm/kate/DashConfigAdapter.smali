.class public Lcom/perm/kate/DashConfigAdapter;
.super Landroid/widget/BaseAdapter;
.source "DashConfigAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private removeClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 84
    new-instance v0, Lcom/perm/kate/DashConfigAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashConfigAdapter$1;-><init>(Lcom/perm/kate/DashConfigAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/DashConfigAdapter;->removeClick:Landroid/view/View$OnClickListener;

    .line 22
    iput-object p1, p0, Lcom/perm/kate/DashConfigAdapter;->activity:Landroid/app/Activity;

    .line 23
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/DashConfigAdapter;->activity:Landroid/app/Activity;

    .line 96
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 32
    sget-object v0, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 39
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 44
    const/16 v16, 0x0

    .line 46
    .local v16, "vi":Landroid/view/View;
    if-nez p2, :cond_1

    .line 47
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/DashConfigAdapter;->activity:Landroid/app/Activity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 48
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030048

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 50
    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    const v2, 0x7f0e0064

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 52
    .local v4, "img_user_photo":Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 53
    .local v14, "params":Landroid/widget/LinearLayout$LayoutParams;
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

    invoke-virtual {v14, v2, v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 54
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    iput v2, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 55
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    iput v2, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 56
    invoke-virtual {v4}, Landroid/widget/ImageView;->requestLayout()V

    .line 60
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    .end local v14    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_0
    const v2, 0x7f0e0065

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 61
    .local v13, "name":Landroid/widget/TextView;
    const v2, 0x7f0e0064

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 62
    .restart local v4    # "img_user_photo":Landroid/widget/ImageView;
    const v2, 0x7f0e00f8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 63
    .local v15, "remove":Landroid/view/View;
    sget-object v2, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p1

    if-lt v0, v2, :cond_2

    .line 64
    const v2, 0x7f07001d

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(I)V

    .line 65
    const v2, 0x7f02011c

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    const/16 v2, 0x8

    invoke-virtual {v15, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v17, v16

    .line 80
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    .end local v13    # "name":Landroid/widget/TextView;
    .end local v15    # "remove":Landroid/view/View;
    .end local v16    # "vi":Landroid/view/View;
    .local v17, "vi":Landroid/view/View;
    :goto_1
    return-object v17

    .line 59
    .end local v17    # "vi":Landroid/view/View;
    .restart local v16    # "vi":Landroid/view/View;
    :cond_1
    move-object/from16 v16, p2

    goto :goto_0

    .line 69
    .restart local v4    # "img_user_photo":Landroid/widget/ImageView;
    .restart local v13    # "name":Landroid/widget/TextView;
    .restart local v15    # "remove":Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    sget-object v2, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/perm/kate/DashboardItem;

    .line 71
    .local v12, "item":Lcom/perm/kate/DashboardItem;
    iget-object v9, v12, Lcom/perm/kate/DashboardItem;->title:Ljava/lang/String;

    .line 72
    .local v9, "display_name":Ljava/lang/String;
    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    iget-object v3, v12, Lcom/perm/kate/DashboardItem;->img:Ljava/lang/String;

    const/4 v5, 0x1

    const/16 v6, 0x5a

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 74
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/DashConfigAdapter;->removeClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v15, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-virtual {v15, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v17, v16

    .line 76
    .end local v16    # "vi":Landroid/view/View;
    .restart local v17    # "vi":Landroid/view/View;
    goto :goto_1

    .line 77
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    .end local v9    # "display_name":Ljava/lang/String;
    .end local v12    # "item":Lcom/perm/kate/DashboardItem;
    .end local v13    # "name":Landroid/widget/TextView;
    .end local v15    # "remove":Landroid/view/View;
    .end local v17    # "vi":Landroid/view/View;
    .restart local v16    # "vi":Landroid/view/View;
    :catch_0
    move-exception v10

    .line 78
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    invoke-static {v10}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    move-object/from16 v17, v16

    .line 80
    .end local v16    # "vi":Landroid/view/View;
    .restart local v17    # "vi":Landroid/view/View;
    goto :goto_1
.end method
