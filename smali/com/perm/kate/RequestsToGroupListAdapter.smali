.class public Lcom/perm/kate/RequestsToGroupListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RequestsToGroupListAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private addClickListener:Landroid/view/View$OnClickListener;

.field private group_id:J

.field private keepClickListener:Landroid/view/View$OnClickListener;

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
.method public constructor <init>(JLandroid/app/Activity;)V
    .locals 1
    .param p1, "group_id"    # J
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->users:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Lcom/perm/kate/RequestsToGroupListAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/RequestsToGroupListAdapter$1;-><init>(Lcom/perm/kate/RequestsToGroupListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->addClickListener:Landroid/view/View$OnClickListener;

    .line 129
    new-instance v0, Lcom/perm/kate/RequestsToGroupListAdapter$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/RequestsToGroupListAdapter$2;-><init>(Lcom/perm/kate/RequestsToGroupListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->keepClickListener:Landroid/view/View$OnClickListener;

    .line 25
    iput-wide p1, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->group_id:J

    .line 26
    iput-object p3, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->activity:Landroid/app/Activity;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/RequestsToGroupListAdapter;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/RequestsToGroupListAdapter;
    .param p1, "x1"    # J

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/RequestsToGroupListAdapter;->groupsApproveRequest(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/RequestsToGroupListAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/RequestsToGroupListAdapter;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->users:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/RequestsToGroupListAdapter;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/RequestsToGroupListAdapter;
    .param p1, "x1"    # J

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/RequestsToGroupListAdapter;->groupsRemoveUser(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/RequestsToGroupListAdapter;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/RequestsToGroupListAdapter;

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->group_id:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/perm/kate/RequestsToGroupListAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/RequestsToGroupListAdapter;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private groupsApproveRequest(J)V
    .locals 1
    .param p1, "user_id"    # J

    .prologue
    .line 149
    new-instance v0, Lcom/perm/kate/RequestsToGroupListAdapter$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/RequestsToGroupListAdapter$3;-><init>(Lcom/perm/kate/RequestsToGroupListAdapter;J)V

    .line 154
    invoke-virtual {v0}, Lcom/perm/kate/RequestsToGroupListAdapter$3;->start()V

    .line 155
    return-void
.end method

.method private groupsRemoveUser(J)V
    .locals 1
    .param p1, "user_id"    # J

    .prologue
    .line 158
    new-instance v0, Lcom/perm/kate/RequestsToGroupListAdapter$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/RequestsToGroupListAdapter$4;-><init>(Lcom/perm/kate/RequestsToGroupListAdapter;J)V

    .line 163
    invoke-virtual {v0}, Lcom/perm/kate/RequestsToGroupListAdapter$4;->start()V

    .line 164
    return-void
.end method

.method private setButtonsBg(Landroid/view/View;)V
    .locals 2
    .param p1, "vi"    # Landroid/view/View;

    .prologue
    .line 108
    sget-boolean v0, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-eqz v0, :cond_0

    .line 109
    const v0, 0x7f0e034a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/theme/ColorTheme;->getButtonBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    const v0, 0x7f0e034c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/theme/ColorTheme;->getButtonBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    :cond_0
    return-void
.end method


# virtual methods
.method public displayData(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 30
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    if-nez p1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 34
    :goto_0
    invoke-virtual {p0}, Lcom/perm/kate/RequestsToGroupListAdapter;->notifyDataSetChanged()V

    .line 35
    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->users:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 52
    const-wide/16 v0, -0x1

    .line 53
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
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 68
    const/4 v15, 0x0

    .line 70
    .local v15, "vi":Landroid/view/View;
    if-nez p2, :cond_1

    .line 71
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/RequestsToGroupListAdapter;->activity:Landroid/app/Activity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 72
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03010d

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 75
    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/RequestsToGroupListAdapter;->users:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perm/kate/api/User;

    .line 76
    .local v14, "user":Lcom/perm/kate/api/User;
    const v2, 0x7f0e0065

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 77
    .local v13, "name":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v14, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v14, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 78
    .local v9, "display_name":Ljava/lang/String;
    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v15, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    const v2, 0x7f0e0064

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 81
    .local v4, "img_user_photo":Landroid/widget/ImageView;
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    iget-object v3, v14, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 82
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    .line 81
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 83
    const v2, 0x7f0e00ee

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v2, v14, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    const v2, 0x7f0e0349

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 85
    .local v12, "ll_add_region":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/perm/kate/RequestsToGroupListAdapter;->group_id:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    .line 86
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 88
    const v2, 0x7f0e034b

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 89
    const v2, 0x7f0e034d

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 90
    const v2, 0x7f0e034b

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/RequestsToGroupListAdapter;->addClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v2, 0x7f0e034d

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/RequestsToGroupListAdapter;->keepClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v2, 0x7f0e034b

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 93
    const v2, 0x7f0e034d

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 94
    const v2, 0x7f0e034a

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 95
    const v2, 0x7f0e034c

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 96
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/perm/kate/RequestsToGroupListAdapter;->setButtonsBg(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object/from16 v16, v15

    .line 102
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    .end local v9    # "display_name":Ljava/lang/String;
    .end local v12    # "ll_add_region":Landroid/widget/LinearLayout;
    .end local v13    # "name":Landroid/widget/TextView;
    .end local v14    # "user":Lcom/perm/kate/api/User;
    .end local v15    # "vi":Landroid/view/View;
    .local v16, "vi":Landroid/view/View;
    :goto_2
    return-object v16

    .line 74
    .end local v16    # "vi":Landroid/view/View;
    .restart local v15    # "vi":Landroid/view/View;
    :cond_1
    move-object/from16 v15, p2

    goto/16 :goto_0

    .line 83
    .restart local v4    # "img_user_photo":Landroid/widget/ImageView;
    .restart local v9    # "display_name":Ljava/lang/String;
    .restart local v13    # "name":Landroid/widget/TextView;
    .restart local v14    # "user":Lcom/perm/kate/api/User;
    :cond_2
    const/16 v2, 0x8

    goto/16 :goto_1

    .line 99
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    .end local v9    # "display_name":Ljava/lang/String;
    .end local v13    # "name":Landroid/widget/TextView;
    .end local v14    # "user":Lcom/perm/kate/api/User;
    :catch_0
    move-exception v10

    .line 100
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    invoke-static {v10}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    move-object/from16 v16, v15

    .line 102
    .end local v15    # "vi":Landroid/view/View;
    .restart local v16    # "vi":Landroid/view/View;
    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method
