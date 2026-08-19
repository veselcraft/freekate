.class public Lcom/perm/kate/GroupBannedAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupBannedAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private items:Ljava/util/ArrayList;

.field private photo_click_listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 108
    new-instance v0, Lcom/perm/kate/GroupBannedAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupBannedAdapter$1;-><init>(Lcom/perm/kate/GroupBannedAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/GroupBannedAdapter;->photo_click_listener:Landroid/view/View$OnClickListener;

    .line 24
    iput-object p1, p0, Lcom/perm/kate/GroupBannedAdapter;->activity:Landroid/app/Activity;

    .line 25
    iput-object p2, p0, Lcom/perm/kate/GroupBannedAdapter;->items:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GroupBannedAdapter;)Landroid/app/Activity;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/perm/kate/GroupBannedAdapter;->activity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/perm/kate/GroupBannedAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/perm/kate/GroupBannedAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 49
    :try_start_0
    iget-object v3, v1, Lcom/perm/kate/GroupBannedAdapter;->activity:Landroid/app/Activity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v4, 0x7f0c0036

    move-object/from16 v5, p3

    .line 51
    invoke-virtual {v3, v4, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    move-object/from16 v2, p2

    :goto_0
    const v3, 0x7f0903e6

    .line 54
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09034a

    .line 55
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f09035b

    .line 56
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f090188

    .line 57
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 58
    iget-object v7, v1, Lcom/perm/kate/GroupBannedAdapter;->items:Ljava/util/ArrayList;

    move/from16 v8, p1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perm/kate/api/GroupBanItem;

    const-string v8, ""

    .line 60
    iget-object v9, v7, Lcom/perm/kate/api/GroupBanItem;->user:Lcom/perm/kate/api/User;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, " "

    if-eqz v9, :cond_1

    .line 61
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Lcom/perm/kate/api/GroupBanItem;->user:Lcom/perm/kate/api/User;

    iget-object v9, v9, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/perm/kate/api/GroupBanItem;->user:Lcom/perm/kate/api/User;

    iget-object v9, v9, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 62
    :cond_1
    iget-object v9, v7, Lcom/perm/kate/api/GroupBanItem;->group:Lcom/perm/kate/api/Group;

    if-eqz v9, :cond_2

    .line 63
    iget-object v8, v9, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 64
    :cond_2
    invoke-virtual {v7}, Lcom/perm/kate/api/GroupBanItem;->getId()J

    move-result-wide v14

    .line 65
    iget-object v9, v7, Lcom/perm/kate/api/GroupBanItem;->user:Lcom/perm/kate/api/User;

    if-eqz v9, :cond_3

    iget-object v9, v9, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v9, v7, Lcom/perm/kate/api/GroupBanItem;->group:Lcom/perm/kate/api/Group;

    iget-object v9, v9, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    .line 66
    :goto_1
    invoke-virtual {v2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v3, v7, Lcom/perm/kate/api/GroupBanItem;->banInfo:Lcom/perm/kate/api/BanInfo;

    if-eqz v3, :cond_b

    .line 69
    sget-object v8, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v11, v3, Lcom/perm/kate/api/BanInfo;->admin_id:J

    invoke-virtual {v8, v11, v12}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v3

    const/16 v8, 0x8

    if-eqz v3, :cond_4

    .line 71
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v3, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 74
    :cond_4
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    :goto_2
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v0, v7, Lcom/perm/kate/api/GroupBanItem;->banInfo:Lcom/perm/kate/api/BanInfo;

    iget-object v0, v0, Lcom/perm/kate/api/BanInfo;->comment:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v7, Lcom/perm/kate/api/GroupBanItem;->banInfo:Lcom/perm/kate/api/BanInfo;

    iget v0, v0, Lcom/perm/kate/api/BanInfo;->reason:I

    if-nez v0, :cond_5

    .line 77
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 78
    :cond_5
    iget-object v0, v7, Lcom/perm/kate/api/GroupBanItem;->banInfo:Lcom/perm/kate/api/BanInfo;

    iget v3, v0, Lcom/perm/kate/api/BanInfo;->reason:I

    if-lez v3, :cond_a

    .line 79
    iget-object v0, v0, Lcom/perm/kate/api/BanInfo;->comment:Ljava/lang/String;

    const/4 v4, 0x1

    if-eq v3, v4, :cond_9

    const/4 v4, 0x2

    if-eq v3, v4, :cond_8

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    goto :goto_3

    .line 91
    :cond_6
    iget-object v0, v1, Lcom/perm/kate/GroupBannedAdapter;->activity:Landroid/app/Activity;

    const v3, 0x7f0f01ad

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 88
    :cond_7
    iget-object v0, v1, Lcom/perm/kate/GroupBannedAdapter;->activity:Landroid/app/Activity;

    const v3, 0x7f0f01ac

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 85
    :cond_8
    iget-object v0, v1, Lcom/perm/kate/GroupBannedAdapter;->activity:Landroid/app/Activity;

    const v3, 0x7f0f01ab

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 82
    :cond_9
    iget-object v0, v1, Lcom/perm/kate/GroupBannedAdapter;->activity:Landroid/app/Activity;

    const v3, 0x7f0f01aa

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_3
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 96
    :cond_a
    iget-object v0, v0, Lcom/perm/kate/api/BanInfo;->comment:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_b
    :goto_4
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v7

    const/4 v10, 0x1

    const/16 v11, 0x5a

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v12

    const/4 v13, 0x1

    move-object v8, v9

    move-object v9, v6

    invoke-virtual/range {v7 .. v13}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    const v0, 0x7f090186

    .line 99
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 100
    iget-object v0, v1, Lcom/perm/kate/GroupBannedAdapter;->photo_click_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 102
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_6
    return-object v2
.end method
