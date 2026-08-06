.class public Lcom/perm/kate/MarketItemFragment;
.super Lcom/perm/kate/BaseFragment;
.source "MarketItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/MarketItemFragment$PhotoClick;
    }
.end annotation


# instance fields
.field private btn_comments:Landroid/widget/ImageButton;

.field callback:Lcom/perm/kate/session/Callback;

.field callback1:Lcom/perm/kate/session/Callback;

.field private comments_OnClickListerer:Landroid/view/View$OnClickListener;

.field item:Lcom/perm/kate/api/MarketItem;

.field item_id:J

.field iv_liked_marker:Landroid/widget/ImageView;

.field private likes_OnClickListerer:Landroid/view/View$OnClickListener;

.field owner_id:J

.field private tv_likes_count:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 29
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 33
    iput-wide v0, p0, Lcom/perm/kate/MarketItemFragment;->item_id:J

    .line 34
    iput-wide v0, p0, Lcom/perm/kate/MarketItemFragment;->owner_id:J

    .line 189
    new-instance v0, Lcom/perm/kate/MarketItemFragment$4;

    invoke-virtual {p0}, Lcom/perm/kate/MarketItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/MarketItemFragment$4;-><init>(Lcom/perm/kate/MarketItemFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/MarketItemFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 207
    new-instance v0, Lcom/perm/kate/MarketItemFragment$5;

    invoke-virtual {p0}, Lcom/perm/kate/MarketItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/MarketItemFragment$5;-><init>(Lcom/perm/kate/MarketItemFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/MarketItemFragment;->callback1:Lcom/perm/kate/session/Callback;

    .line 233
    new-instance v0, Lcom/perm/kate/MarketItemFragment$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/MarketItemFragment$7;-><init>(Lcom/perm/kate/MarketItemFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MarketItemFragment;->likes_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 265
    new-instance v0, Lcom/perm/kate/MarketItemFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/MarketItemFragment$8;-><init>(Lcom/perm/kate/MarketItemFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MarketItemFragment;->comments_OnClickListerer:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/MarketItemFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MarketItemFragment;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/perm/kate/MarketItemFragment;->displayDataOnUiThread()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/MarketItemFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MarketItemFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/perm/kate/MarketItemFragment;->displayData(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/MarketItemFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MarketItemFragment;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/perm/kate/MarketItemFragment;->updateLikeCount()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/MarketItemFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MarketItemFragment;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/perm/kate/MarketItemFragment;->updateLikedMarker()V

    return-void
.end method

.method private displayData(Landroid/view/View;)V
    .locals 24
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 92
    const v2, 0x7f0e0077

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 93
    .local v4, "imageView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v3, v2, Lcom/perm/kate/api/MarketItem;->thumb_photo:Ljava/lang/String;

    .line 94
    .local v3, "photo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v2, v2, Lcom/perm/kate/api/MarketItem;->photos:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v2, v2, Lcom/perm/kate/api/MarketItem;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v2, v2, Lcom/perm/kate/api/MarketItem;->photos:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Photo;

    iget-object v3, v2, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .line 97
    :cond_0
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x190

    const/16 v7, 0x190

    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->getResIdForNoPhoto4()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIIZZZ)V

    .line 98
    new-instance v2, Lcom/perm/kate/MarketItemFragment$PhotoClick;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v5}, Lcom/perm/kate/MarketItemFragment$PhotoClick;-><init>(Lcom/perm/kate/MarketItemFragment;I)V

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->getResIdForNoPhoto4()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 101
    const v2, 0x7f0e021c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    .line 102
    .local v19, "scrollView":Landroid/widget/LinearLayout;
    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v2, v2, Lcom/perm/kate/api/MarketItem;->photos:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 104
    const/16 v16, 0x1

    .local v16, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v2, v2, Lcom/perm/kate/api/MarketItem;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_1

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v2, v2, Lcom/perm/kate/api/MarketItem;->photos:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/perm/kate/api/Photo;

    .line 106
    .local v17, "p":Lcom/perm/kate/api/Photo;
    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/MarketItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v7, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 107
    .local v7, "iv":Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 108
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v8, 0x4054000000000000L    # 80.0

    invoke-static {v8, v9}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    const-wide/high16 v8, 0x4054000000000000L    # 80.0

    invoke-static {v8, v9}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 109
    .local v18, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x0

    const/4 v5, 0x0

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    invoke-static {v8, v9}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v6

    const/4 v8, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 110
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v5

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    const/4 v8, 0x1

    const/16 v9, 0x64

    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->getResIdForNoPhoto4()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 112
    new-instance v2, Lcom/perm/kate/MarketItemFragment$PhotoClick;

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v2, v0, v1}, Lcom/perm/kate/MarketItemFragment$PhotoClick;-><init>(Lcom/perm/kate/MarketItemFragment;I)V

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 115
    .end local v7    # "iv":Landroid/widget/ImageView;
    .end local v16    # "i":I
    .end local v17    # "p":Lcom/perm/kate/api/Photo;
    .end local v18    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v2, v2, Lcom/perm/kate/api/MarketItem;->photos:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v2, v2, Lcom/perm/kate/api/MarketItem;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x1

    if-gt v2, v5, :cond_3

    .line 116
    :cond_2
    const v2, 0x7f0e021b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 118
    :cond_3
    const v2, 0x7f0e004b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 119
    .local v20, "textView1":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v2, v2, Lcom/perm/kate/api/MarketItem;->title:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    const v2, 0x7f0e021e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 121
    .local v21, "textView2":Landroid/widget/TextView;
    new-instance v13, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v2, v2, Lcom/perm/kate/api/MarketItem;->description:Ljava/lang/String;

    invoke-direct {v13, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 126
    .local v13, "builder":Landroid/text/SpannableStringBuilder;
    invoke-static {v13}, Lcom/perm/utils/Linkify;->addWebLinks(Landroid/text/Spannable;)V

    .line 127
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 130
    const v2, 0x7f0e021d

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 131
    .local v22, "textView3":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v2, v2, Lcom/perm/kate/api/MarketItem;->price_text:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    const v2, 0x7f0e0221

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 134
    .local v23, "textView4":Landroid/widget/TextView;
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-wide v8, v5, Lcom/perm/kate/api/MarketItem;->owner_id:J

    neg-long v8, v8

    invoke-virtual {v2, v8, v9}, Lcom/perm/kate/db/DataHelper;->fetchGroupFull(J)Lcom/perm/kate/api/Group;

    move-result-object v15

    .line 135
    .local v15, "group":Lcom/perm/kate/api/Group;
    if-eqz v15, :cond_4

    iget-object v2, v15, Lcom/perm/kate/api/Group;->market_wiki:Lcom/perm/kate/api/Page;

    if-eqz v2, :cond_4

    .line 136
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v2, v15, Lcom/perm/kate/api/Group;->market_wiki:Lcom/perm/kate/api/Page;

    iget-object v2, v2, Lcom/perm/kate/api/Page;->title:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    new-instance v2, Lcom/perm/kate/MarketItemFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v15}, Lcom/perm/kate/MarketItemFragment$2;-><init>(Lcom/perm/kate/MarketItemFragment;Lcom/perm/kate/api/Group;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    :goto_1
    if-eqz v15, :cond_5

    iget-object v2, v15, Lcom/perm/kate/api/Group;->market_contact_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-eqz v2, :cond_5

    .line 150
    const v2, 0x7f0e021f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 151
    const v2, 0x7f0e0220

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/perm/kate/MarketItemFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v15}, Lcom/perm/kate/MarketItemFragment$3;-><init>(Lcom/perm/kate/MarketItemFragment;Lcom/perm/kate/api/Group;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    :goto_2
    const v2, 0x7f0e0224

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 164
    .local v12, "btn_likes":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MarketItemFragment;->likes_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v2, 0x7f0e0225

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/perm/kate/MarketItemFragment;->iv_liked_marker:Landroid/widget/ImageView;

    .line 167
    const v2, 0x7f0e0226

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/perm/kate/MarketItemFragment;->tv_likes_count:Landroid/widget/TextView;

    .line 169
    const v2, 0x7f0e0227

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/perm/kate/MarketItemFragment;->btn_comments:Landroid/widget/ImageButton;

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MarketItemFragment;->btn_comments:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/perm/kate/MarketItemFragment;->comments_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/MarketItemFragment;->updateLikedMarker()V

    .line 187
    .end local v3    # "photo":Ljava/lang/String;
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v12    # "btn_likes":Landroid/view/View;
    .end local v13    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v15    # "group":Lcom/perm/kate/api/Group;
    .end local v19    # "scrollView":Landroid/widget/LinearLayout;
    .end local v20    # "textView1":Landroid/widget/TextView;
    .end local v21    # "textView2":Landroid/widget/TextView;
    .end local v22    # "textView3":Landroid/widget/TextView;
    .end local v23    # "textView4":Landroid/widget/TextView;
    :goto_3
    return-void

    .line 147
    .restart local v3    # "photo":Ljava/lang/String;
    .restart local v4    # "imageView":Landroid/widget/ImageView;
    .restart local v13    # "builder":Landroid/text/SpannableStringBuilder;
    .restart local v15    # "group":Lcom/perm/kate/api/Group;
    .restart local v19    # "scrollView":Landroid/widget/LinearLayout;
    .restart local v20    # "textView1":Landroid/widget/TextView;
    .restart local v21    # "textView2":Landroid/widget/TextView;
    .restart local v22    # "textView3":Landroid/widget/TextView;
    .restart local v23    # "textView4":Landroid/widget/TextView;
    :cond_4
    const/16 v2, 0x8

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 183
    .end local v3    # "photo":Ljava/lang/String;
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v13    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v15    # "group":Lcom/perm/kate/api/Group;
    .end local v19    # "scrollView":Landroid/widget/LinearLayout;
    .end local v20    # "textView1":Landroid/widget/TextView;
    .end local v21    # "textView2":Landroid/widget/TextView;
    .end local v22    # "textView3":Landroid/widget/TextView;
    .end local v23    # "textView4":Landroid/widget/TextView;
    :catch_0
    move-exception v14

    .line 184
    .local v14, "e":Ljava/lang/Exception;
    invoke-static {v14}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 185
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 161
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v3    # "photo":Ljava/lang/String;
    .restart local v4    # "imageView":Landroid/widget/ImageView;
    .restart local v13    # "builder":Landroid/text/SpannableStringBuilder;
    .restart local v15    # "group":Lcom/perm/kate/api/Group;
    .restart local v19    # "scrollView":Landroid/widget/LinearLayout;
    .restart local v20    # "textView1":Landroid/widget/TextView;
    .restart local v21    # "textView2":Landroid/widget/TextView;
    .restart local v22    # "textView3":Landroid/widget/TextView;
    .restart local v23    # "textView4":Landroid/widget/TextView;
    :cond_5
    const v2, 0x7f0e021f

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private displayDataOnUiThread()V
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/perm/kate/MarketItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/perm/kate/MarketItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/MarketItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MarketItemFragment$6;

    invoke-direct {v1, p0}, Lcom/perm/kate/MarketItemFragment$6;-><init>(Lcom/perm/kate/MarketItemFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private refreshOnThread()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/MarketItemFragment;->showProgressBar(Z)V

    .line 52
    new-instance v0, Lcom/perm/kate/MarketItemFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/MarketItemFragment$1;-><init>(Lcom/perm/kate/MarketItemFragment;)V

    .line 66
    invoke-virtual {v0}, Lcom/perm/kate/MarketItemFragment$1;->start()V

    .line 67
    return-void
.end method

.method private updateLikeCount()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    .line 256
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    if-nez v0, :cond_0

    .line 263
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v0, v0, Lcom/perm/kate/api/MarketItem;->user_likes:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v1, v0, Lcom/perm/kate/api/MarketItem;->like_count:Ljava/lang/Long;

    iget-object v1, v0, Lcom/perm/kate/api/MarketItem;->like_count:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/MarketItem;->like_count:Ljava/lang/Long;

    .line 262
    :goto_1
    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v0, v0, Lcom/perm/kate/api/MarketItem;->user_likes:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/perm/kate/api/MarketItem;->user_likes:Ljava/lang/Boolean;

    goto :goto_0

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v1, v0, Lcom/perm/kate/api/MarketItem;->like_count:Ljava/lang/Long;

    iget-object v1, v0, Lcom/perm/kate/api/MarketItem;->like_count:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/MarketItem;->like_count:Ljava/lang/Long;

    goto :goto_1

    .line 262
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private updateLikedMarker()V
    .locals 4

    .prologue
    .line 245
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment;->iv_liked_marker:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v0, v0, Lcom/perm/kate/api/MarketItem;->like_count:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment;->tv_likes_count:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v1, v1, Lcom/perm/kate/api/MarketItem;->like_count:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment;->tv_likes_count:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment;->iv_liked_marker:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v0, v0, Lcom/perm/kate/api/MarketItem;->user_likes:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f020105

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 253
    :cond_0
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment;->tv_likes_count:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 251
    :cond_2
    const v0, 0x7f020107

    goto :goto_1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 86
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 87
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, 0x0

    .line 71
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/perm/kate/MarketItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "item"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/MarketItem;

    iput-object v0, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    .line 73
    invoke-virtual {p0}, Lcom/perm/kate/MarketItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "item_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/MarketItemFragment;->item_id:J

    .line 74
    invoke-virtual {p0}, Lcom/perm/kate/MarketItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/MarketItemFragment;->owner_id:J

    .line 77
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/perm/kate/MarketItemFragment;->item_id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/perm/kate/MarketItemFragment;->owner_id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 79
    if-nez p1, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/perm/kate/MarketItemFragment;->refreshOnThread()V

    .line 81
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 43
    const v1, 0x7f0300a2

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x7f0e021f

    aput v2, v1, v3

    invoke-static {v0, v1}, Lcom/perm/kate/MarketItemFragment;->setButtonsBg(Landroid/view/View;[I)V

    .line 45
    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    if-eqz v1, :cond_0

    .line 46
    invoke-direct {p0, v0}, Lcom/perm/kate/MarketItemFragment;->displayData(Landroid/view/View;)V

    .line 47
    :cond_0
    return-object v0
.end method

.method setLike(Ljava/lang/Long;JZ)V
    .locals 8
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "product_id"    # J
    .param p4, "like"    # Z

    .prologue
    .line 305
    new-instance v6, Lcom/perm/kate/MarketItemFragment$9;

    invoke-virtual {p0}, Lcom/perm/kate/MarketItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v6, p0, v0}, Lcom/perm/kate/MarketItemFragment$9;-><init>(Lcom/perm/kate/MarketItemFragment;Landroid/app/Activity;)V

    .line 312
    .local v6, "callback_like":Lcom/perm/kate/session/Callback;
    new-instance v0, Lcom/perm/kate/MarketItemFragment$10;

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/MarketItemFragment$10;-><init>(Lcom/perm/kate/MarketItemFragment;ZLjava/lang/Long;JLcom/perm/kate/session/Callback;)V

    .line 320
    invoke-virtual {v0}, Lcom/perm/kate/MarketItemFragment$10;->start()V

    .line 321
    return-void
.end method
