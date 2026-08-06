.class public Lcom/perm/kate/GiftsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "GiftsListAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private giftClickListener:Landroid/view/View$OnClickListener;

.field private is_me:Z

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/GiftItem;",
            ">;"
        }
    .end annotation
.end field

.field private user_click_listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "is_me"    # Z

    .prologue
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

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GiftsListAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GiftsListAdapter;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/perm/kate/GiftsListAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public displayData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/GiftItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/GiftItem;>;"
    if-nez p1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/perm/kate/GiftsListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 34
    :goto_0
    invoke-virtual {p0}, Lcom/perm/kate/GiftsListAdapter;->notifyDataSetChanged()V

    .line 35
    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/perm/kate/GiftsListAdapter;->items:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/perm/kate/GiftsListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/perm/kate/GiftsListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/GiftsListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/perm/kate/GiftsListAdapter;->items:Ljava/util/ArrayList;

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
    .locals 26
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 68
    const/16 v24, 0x0

    .line 70
    .local v24, "vi":Landroid/view/View;
    if-nez p2, :cond_2

    .line 71
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GiftsListAdapter;->activity:Landroid/app/Activity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/LayoutInflater;

    .line 72
    .local v17, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030082

    const/4 v3, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v24

    .line 75
    .end local v17    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GiftsListAdapter;->items:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/perm/kate/api/GiftItem;

    .line 77
    .local v18, "item":Lcom/perm/kate/api/GiftItem;
    const v2, 0x7f0e0064

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 78
    .local v4, "img_user_photo":Landroid/widget/ImageView;
    const v2, 0x7f0e0065

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 79
    .local v19, "name":Landroid/widget/TextView;
    const v2, 0x7f0e01bb

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 80
    .local v20, "tv_ago":Landroid/widget/TextView;
    const v2, 0x7f0e01bc

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 81
    .local v16, "img_gift":Landroid/widget/ImageView;
    const v2, 0x7f0e01bd

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 82
    .local v22, "tv_gift_text":Landroid/widget/TextView;
    const v2, 0x7f0e01be

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 84
    .local v21, "tv_gift_privacy":Landroid/widget/TextView;
    move-object/from16 v0, v18

    iget-object v13, v0, Lcom/perm/kate/api/GiftItem;->message:Ljava/lang/String;

    .line 85
    .local v13, "display_name":Ljava/lang/String;
    const/4 v15, 0x0

    .line 87
    .local v15, "has_user":Z
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/perm/kate/api/GiftItem;->from_id:Ljava/lang/Long;

    if-eqz v2, :cond_0

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/perm/kate/api/GiftItem;->from_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    .line 88
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/perm/kate/api/GiftItem;->from_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v23

    .line 89
    .local v23, "user":Lcom/perm/kate/api/User;
    if-eqz v23, :cond_0

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 91
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/perm/kate/api/GiftItem;->from_id:Ljava/lang/Long;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GiftsListAdapter;->user_click_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const/4 v5, 0x1

    const/16 v6, 0x5a

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 94
    const/4 v15, 0x1

    .line 97
    .end local v23    # "user":Lcom/perm/kate/api/User;
    :cond_0
    if-nez v15, :cond_1

    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GiftsListAdapter;->activity:Landroid/app/Activity;

    const v3, 0x7f070296

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 99
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 100
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v2, 0x7f020143

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    :cond_1
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GiftsListAdapter;->activity:Landroid/app/Activity;

    move-object/from16 v0, v18

    iget-wide v6, v0, Lcom/perm/kate/api/GiftItem;->date:J

    invoke-static {v2, v6, v7}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    .line 105
    .local v12, "ago_text":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GiftsListAdapter;->giftClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/perm/kate/api/GiftItem;->gift:Lcom/perm/kate/api/Gift;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 108
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/perm/kate/api/GiftItem;->gift:Lcom/perm/kate/api/Gift;

    iget-object v6, v2, Lcom/perm/kate/api/Gift;->thumb_256:Ljava/lang/String;

    const/4 v8, 0x1

    const-wide/high16 v2, 0x4070000000000000L    # 256.0

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v9

    const v10, 0x7f020142

    const/4 v11, 0x0

    move-object/from16 v7, v16

    invoke-virtual/range {v5 .. v11}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 109
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/perm/kate/api/GiftItem;->message:Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/perm/kate/api/GiftItem;->message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 110
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/perm/kate/api/GiftItem;->message:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/perm/kate/GiftsListAdapter;->is_me:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/perm/kate/api/GiftItem;->privacy:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/perm/kate/api/GiftItem;->privacy:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 117
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    :goto_2
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v25, v24

    .line 125
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    .end local v12    # "ago_text":Ljava/lang/String;
    .end local v13    # "display_name":Ljava/lang/String;
    .end local v15    # "has_user":Z
    .end local v16    # "img_gift":Landroid/widget/ImageView;
    .end local v18    # "item":Lcom/perm/kate/api/GiftItem;
    .end local v19    # "name":Landroid/widget/TextView;
    .end local v20    # "tv_ago":Landroid/widget/TextView;
    .end local v21    # "tv_gift_privacy":Landroid/widget/TextView;
    .end local v22    # "tv_gift_text":Landroid/widget/TextView;
    .end local v24    # "vi":Landroid/view/View;
    .local v25, "vi":Landroid/view/View;
    :goto_3
    return-object v25

    .line 74
    .end local v25    # "vi":Landroid/view/View;
    .restart local v24    # "vi":Landroid/view/View;
    :cond_2
    move-object/from16 v24, p2

    goto/16 :goto_0

    .line 113
    .restart local v4    # "img_user_photo":Landroid/widget/ImageView;
    .restart local v12    # "ago_text":Ljava/lang/String;
    .restart local v13    # "display_name":Ljava/lang/String;
    .restart local v15    # "has_user":Z
    .restart local v16    # "img_gift":Landroid/widget/ImageView;
    .restart local v18    # "item":Lcom/perm/kate/api/GiftItem;
    .restart local v19    # "name":Landroid/widget/TextView;
    .restart local v20    # "tv_ago":Landroid/widget/TextView;
    .restart local v21    # "tv_gift_privacy":Landroid/widget/TextView;
    .restart local v22    # "tv_gift_text":Landroid/widget/TextView;
    :cond_3
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    const/16 v2, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 122
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    .end local v12    # "ago_text":Ljava/lang/String;
    .end local v13    # "display_name":Ljava/lang/String;
    .end local v15    # "has_user":Z
    .end local v16    # "img_gift":Landroid/widget/ImageView;
    .end local v18    # "item":Lcom/perm/kate/api/GiftItem;
    .end local v19    # "name":Landroid/widget/TextView;
    .end local v20    # "tv_ago":Landroid/widget/TextView;
    .end local v21    # "tv_gift_privacy":Landroid/widget/TextView;
    .end local v22    # "tv_gift_text":Landroid/widget/TextView;
    :catch_0
    move-exception v14

    .line 123
    .local v14, "e":Ljava/lang/Throwable;
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    .line 124
    invoke-static {v14}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    move-object/from16 v25, v24

    .line 125
    .end local v24    # "vi":Landroid/view/View;
    .restart local v25    # "vi":Landroid/view/View;
    goto :goto_3

    .line 119
    .end local v14    # "e":Ljava/lang/Throwable;
    .end local v25    # "vi":Landroid/view/View;
    .restart local v4    # "img_user_photo":Landroid/widget/ImageView;
    .restart local v12    # "ago_text":Ljava/lang/String;
    .restart local v13    # "display_name":Ljava/lang/String;
    .restart local v15    # "has_user":Z
    .restart local v16    # "img_gift":Landroid/widget/ImageView;
    .restart local v18    # "item":Lcom/perm/kate/api/GiftItem;
    .restart local v19    # "name":Landroid/widget/TextView;
    .restart local v20    # "tv_ago":Landroid/widget/TextView;
    .restart local v21    # "tv_gift_privacy":Landroid/widget/TextView;
    .restart local v22    # "tv_gift_text":Landroid/widget/TextView;
    .restart local v24    # "vi":Landroid/view/View;
    :cond_4
    const/16 v2, 0x8

    :try_start_1
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method
