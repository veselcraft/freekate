.class public Lcom/perm/kate/GiftsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "GiftsListAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private giftClickListener:Landroid/view/View$OnClickListener;

.field private is_me:Z

.field private items:Ljava/util/ArrayList;

.field private user_click_listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/GiftsListAdapter;->items:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Lcom/perm/kate/GiftsListAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/GiftsListAdapter$1;-><init>(Lcom/perm/kate/GiftsListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/GiftsListAdapter;->user_click_listener:Landroid/view/View$OnClickListener;

    .line 139
    new-instance v0, Lcom/perm/kate/GiftsListAdapter$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/GiftsListAdapter$2;-><init>(Lcom/perm/kate/GiftsListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/GiftsListAdapter;->giftClickListener:Landroid/view/View$OnClickListener;

    .line 25
    iput-object p1, p0, Lcom/perm/kate/GiftsListAdapter;->activity:Landroid/app/Activity;

    .line 26
    iput-boolean p2, p0, Lcom/perm/kate/GiftsListAdapter;->is_me:Z

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GiftsListAdapter;)Landroid/app/Activity;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/perm/kate/GiftsListAdapter;->activity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public displayData(Ljava/util/ArrayList;)V
    .locals 1

    if-nez p1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/perm/kate/GiftsListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/perm/kate/GiftsListAdapter;->items:Ljava/util/ArrayList;

    .line 34
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/perm/kate/GiftsListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/perm/kate/GiftsListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/GiftsListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/perm/kate/GiftsListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 23

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 71
    :try_start_0
    iget-object v3, v1, Lcom/perm/kate/GiftsListAdapter;->activity:Landroid/app/Activity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v4, 0x7f0c008f

    move-object/from16 v5, p3

    .line 72
    invoke-virtual {v3, v4, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    move-object/from16 v3, p2

    .line 75
    :goto_0
    :try_start_1
    iget-object v4, v1, Lcom/perm/kate/GiftsListAdapter;->items:Ljava/util/ArrayList;

    move/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/GiftItem;

    const v5, 0x7f090188

    .line 77
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0903e6

    .line 78
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Landroid/widget/TextView;

    const v6, 0x7f09034b

    .line 79
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Landroid/widget/TextView;

    const v6, 0x7f090180

    .line 80
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Landroid/widget/ImageView;

    const v6, 0x7f090371

    .line 81
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Landroid/widget/TextView;

    const v6, 0x7f090370

    .line 82
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Landroid/widget/TextView;

    .line 84
    iget-object v6, v4, Lcom/perm/kate/api/GiftItem;->message:Ljava/lang/String;

    .line 87
    iget-object v7, v4, Lcom/perm/kate/api/GiftItem;->from_id:Ljava/lang/Long;

    const/4 v10, 0x1

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v16, 0x0

    cmp-long v9, v7, v16

    if-lez v9, :cond_1

    .line 88
    sget-object v7, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v8, v4, Lcom/perm/kate/api/GiftItem;->from_id:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 90
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v7, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 91
    iget-object v6, v4, Lcom/perm/kate/api/GiftItem;->from_id:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 92
    iget-object v6, v1, Lcom/perm/kate/GiftsListAdapter;->user_click_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v6

    iget-object v7, v7, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const/4 v9, 0x1

    const/16 v17, 0x5a

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v18

    const/16 v19, 0x1

    move-object v8, v5

    move/from16 v10, v17

    move-object/from16 v22, v11

    move/from16 v11, v18

    move-object v0, v12

    move/from16 v12, v19

    invoke-virtual/range {v6 .. v12}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    move-object/from16 v6, v16

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v22, v11

    move-object v0, v12

    const/4 v10, 0x0

    :goto_1
    if-nez v10, :cond_2

    .line 98
    iget-object v6, v1, Lcom/perm/kate/GiftsListAdapter;->activity:Landroid/app/Activity;

    const v7, 0x7f0f02ee

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 99
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f080208

    .line 101
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    :cond_2
    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v2, v1, Lcom/perm/kate/GiftsListAdapter;->activity:Landroid/app/Activity;

    iget-wide v5, v4, Lcom/perm/kate/api/GiftItem;->date:J

    invoke-static {v2, v5, v6}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v2, v1, Lcom/perm/kate/GiftsListAdapter;->giftClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v2, v4, Lcom/perm/kate/api/GiftItem;->gift:Lcom/perm/kate/api/Gift;

    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 108
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    iget-object v5, v4, Lcom/perm/kate/api/GiftItem;->gift:Lcom/perm/kate/api/Gift;

    iget-object v5, v5, Lcom/perm/kate/api/Gift;->thumb_256:Ljava/lang/String;

    const/16 v18, 0x1

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v19

    const v20, 0x7f080207

    const/16 v21, 0x0

    move-object v6, v15

    move-object v15, v2

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    invoke-virtual/range {v15 .. v21}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 109
    iget-object v2, v4, Lcom/perm/kate/api/GiftItem;->message:Ljava/lang/String;

    const/16 v5, 0x8

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 110
    iget-object v2, v4, Lcom/perm/kate/api/GiftItem;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 111
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const-string v2, ""

    .line 113
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    :goto_2
    iget-boolean v0, v1, Lcom/perm/kate/GiftsListAdapter;->is_me:Z

    if-eqz v0, :cond_4

    iget-object v0, v4, Lcom/perm/kate/api/GiftItem;->privacy:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    move-object/from16 v6, v22

    const/4 v0, 0x0

    .line 117
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_4
    move-object/from16 v6, v22

    .line 119
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v3

    :catchall_1
    move-exception v0

    move-object v2, v3

    .line 123
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 124
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
