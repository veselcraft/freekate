.class public Lcom/perm/kate/MarketItemFragment;
.super Lcom/perm/kate/BaseFragment;
.source "MarketItemFragment.java"


# instance fields
.field private btn_comments:Landroid/widget/ImageButton;

.field callback:Lcom/perm/kate/session/Callback;

.field callback1:Lcom/perm/kate/session/Callback;

.field private comments_OnClickListerer:Landroid/view/View$OnClickListener;

.field item:Lcom/perm/kate/api/MarketItem;

.field item_id:J

.field iv_liked_marker:Landroid/widget/ImageView;

.field private likes_OnClickListerer:Landroid/view/View$OnClickListener;

.field private market_albums_callback:Lcom/perm/utils/MarketAlbumsHelper$MarketAlbumsCallback;

.field owner_id:J

.field private tv_likes_count:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$jMSuYpeD5yetLUIke4AepliRGQk(Lcom/perm/kate/MarketItemFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/perm/kate/MarketItemFragment;->lambda$onOptionsItemSelected$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lcom/perm/kate/MarketItemFragment;->item_id:J

    .line 38
    iput-wide v0, p0, Lcom/perm/kate/MarketItemFragment;->owner_id:J

    .line 193
    new-instance v0, Lcom/perm/kate/MarketItemFragment$4;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/MarketItemFragment$4;-><init>(Lcom/perm/kate/MarketItemFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/MarketItemFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 211
    new-instance v0, Lcom/perm/kate/MarketItemFragment$5;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/MarketItemFragment$5;-><init>(Lcom/perm/kate/MarketItemFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/MarketItemFragment;->callback1:Lcom/perm/kate/session/Callback;

    .line 237
    new-instance v0, Lcom/perm/kate/MarketItemFragment$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/MarketItemFragment$7;-><init>(Lcom/perm/kate/MarketItemFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MarketItemFragment;->likes_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 269
    new-instance v0, Lcom/perm/kate/MarketItemFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/MarketItemFragment$8;-><init>(Lcom/perm/kate/MarketItemFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MarketItemFragment;->comments_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 360
    new-instance v0, Lcom/perm/kate/MarketItemFragment$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/MarketItemFragment$11;-><init>(Lcom/perm/kate/MarketItemFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MarketItemFragment;->market_albums_callback:Lcom/perm/utils/MarketAlbumsHelper$MarketAlbumsCallback;

    return-void
.end method

.method private ResultOkAfterDelete()V
    .locals 4

    .line 398
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 399
    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-wide v1, v1, Lcom/perm/kate/api/MarketItem;->id:J

    const-string v3, "deleted_item_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 400
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 401
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/MarketItemFragment;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/perm/kate/MarketItemFragment;->displayDataOnUiThread()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/MarketItemFragment;Landroid/view/View;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/perm/kate/MarketItemFragment;->displayData(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/MarketItemFragment;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/perm/kate/MarketItemFragment;->updateLikeCount()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/MarketItemFragment;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/perm/kate/MarketItemFragment;->updateLikedMarker()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/MarketItemFragment;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/perm/kate/MarketItemFragment;->refreshOnThread()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/MarketItemFragment;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/perm/kate/MarketItemFragment;->ResultOkAfterDelete()V

    return-void
.end method

.method private deleteThisItem()V
    .locals 2

    .line 378
    new-instance v0, Lcom/perm/kate/MarketItemFragment$12;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/MarketItemFragment$12;-><init>(Lcom/perm/kate/MarketItemFragment;Landroid/app/Activity;)V

    .line 387
    new-instance v1, Lcom/perm/kate/MarketItemFragment$13;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/MarketItemFragment$13;-><init>(Lcom/perm/kate/MarketItemFragment;Lcom/perm/kate/session/Callback;)V

    .line 394
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private displayData(Landroid/view/View;)V
    .locals 13

    const v0, 0x7f09026d

    .line 96
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 97
    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v2, v1, Lcom/perm/kate/api/MarketItem;->thumb_photo:Ljava/lang/String;

    .line 98
    iget-object v1, v1, Lcom/perm/kate/api/MarketItem;->photos:Ljava/util/ArrayList;

    const/4 v11, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v1, v1, Lcom/perm/kate/api/MarketItem;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    move-object v2, v1

    .line 101
    :cond_0
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v1

    const/4 v4, 0x0

    const/16 v5, 0x190

    const/16 v6, 0x190

    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->getResIdForNoPhoto4()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v3, v0

    invoke-virtual/range {v1 .. v10}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIIZZZ)V

    .line 102
    new-instance v1, Lcom/perm/kate/MarketItemFragment$PhotoClick;

    invoke-direct {v1, p0, v11}, Lcom/perm/kate/MarketItemFragment$PhotoClick;-><init>(Lcom/perm/kate/MarketItemFragment;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->getResIdForNoPhoto4()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v0, 0x7f090271

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 106
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 107
    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v1, v1, Lcom/perm/kate/api/MarketItem;->photos:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 108
    :goto_0
    iget-object v3, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v3, v3, Lcom/perm/kate/api/MarketItem;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 109
    iget-object v3, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v3, v3, Lcom/perm/kate/api/MarketItem;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Photo;

    .line 110
    new-instance v12, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v12, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 111
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 112
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v5, 0x4054000000000000L    # 80.0

    invoke-static {v5, v6}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v7

    invoke-static {v5, v6}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    invoke-direct {v4, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    .line 113
    invoke-static {v5, v6}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    invoke-virtual {v4, v11, v11, v5, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 114
    invoke-virtual {v0, v12, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v4

    iget-object v5, v3, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    const/4 v7, 0x1

    const/16 v8, 0x64

    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->getResIdForNoPhoto4()I

    move-result v9

    const/4 v10, 0x0

    move-object v6, v12

    invoke-virtual/range {v4 .. v10}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 116
    new-instance v3, Lcom/perm/kate/MarketItemFragment$PhotoClick;

    invoke-direct {v3, p0, v1}, Lcom/perm/kate/MarketItemFragment$PhotoClick;-><init>(Lcom/perm/kate/MarketItemFragment;I)V

    invoke-virtual {v12, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v0, v0, Lcom/perm/kate/api/MarketItem;->photos:Ljava/util/ArrayList;

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v2, :cond_3

    :cond_2
    const v0, 0x7f090272

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const v0, 0x7f09033a

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 123
    iget-object v2, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v2, v2, Lcom/perm/kate/api/MarketItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900ed

    .line 124
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 125
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v3, v3, Lcom/perm/kate/api/MarketItem;->description:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 130
    invoke-static {v2}, Lcom/perm/utils/Linkify;->addWebLinks(Landroid/text/Spannable;)V

    .line 131
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v0, 0x7f09027d

    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 135
    iget-object v2, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v2, v2, Lcom/perm/kate/api/MarketItem;->price_text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090424

    .line 137
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 138
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-wide v3, v3, Lcom/perm/kate/api/MarketItem;->owner_id:J

    neg-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->fetchGroupFull(J)Lcom/perm/kate/api/Group;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 139
    iget-object v3, v2, Lcom/perm/kate/api/Group;->market_wiki:Lcom/perm/kate/api/Page;

    if-eqz v3, :cond_4

    .line 140
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object v3, v2, Lcom/perm/kate/api/Group;->market_wiki:Lcom/perm/kate/api/Page;

    iget-object v3, v3, Lcom/perm/kate/api/Page;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    new-instance v3, Lcom/perm/kate/MarketItemFragment$2;

    invoke-direct {v3, p0, v2}, Lcom/perm/kate/MarketItemFragment$2;-><init>(Lcom/perm/kate/MarketItemFragment;Lcom/perm/kate/api/Group;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 151
    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const v0, 0x7f09022b

    if-eqz v2, :cond_5

    .line 153
    iget-object v3, v2, Lcom/perm/kate/api/Group;->market_contact_id:Ljava/lang/Long;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_5

    .line 154
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090229

    .line 155
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MarketItemFragment$3;

    invoke-direct {v1, p0, v2}, Lcom/perm/kate/MarketItemFragment$3;-><init>(Lcom/perm/kate/MarketItemFragment;Lcom/perm/kate/api/Group;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 165
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    const v0, 0x7f09007e

    .line 167
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment;->likes_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090197

    .line 170
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/perm/kate/MarketItemFragment;->iv_liked_marker:Landroid/widget/ImageView;

    const v0, 0x7f090382

    .line 171
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/MarketItemFragment;->tv_likes_count:Landroid/widget/TextView;

    const v0, 0x7f090071

    .line 173
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/perm/kate/MarketItemFragment;->btn_comments:Landroid/widget/ImageButton;

    .line 174
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment;->comments_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-direct {p0}, Lcom/perm/kate/MarketItemFragment;->updateLikedMarker()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 188
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 189
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private displayDataOnUiThread()V
    .locals 2

    .line 224
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MarketItemFragment$6;

    invoke-direct {v1, p0}, Lcom/perm/kate/MarketItemFragment$6;-><init>(Lcom/perm/kate/MarketItemFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onOptionsItemSelected$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 352
    invoke-direct {p0}, Lcom/perm/kate/MarketItemFragment;->deleteThisItem()V

    return-void
.end method

.method private refreshOnThread()V
    .locals 1

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 56
    new-instance v0, Lcom/perm/kate/MarketItemFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/MarketItemFragment$1;-><init>(Lcom/perm/kate/MarketItemFragment;)V

    .line 70
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private showEditMarketActivity()V
    .locals 4

    .line 405
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 406
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/NewMarketActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 407
    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    const-string v2, "item"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 408
    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-wide v1, v1, Lcom/perm/kate/api/MarketItem;->owner_id:J

    neg-long v1, v1

    const-string v3, "group_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 v1, 0xb

    .line 409
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private updateLikeCount()V
    .locals 5

    .line 260
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    iget-object v0, v0, Lcom/perm/kate/api/MarketItem;->user_likes:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v3, v0, Lcom/perm/kate/api/MarketItem;->like_count:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/MarketItem;->like_count:Ljava/lang/Long;

    goto :goto_0

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v3, v0, Lcom/perm/kate/api/MarketItem;->like_count:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/MarketItem;->like_count:Ljava/lang/Long;

    .line 266
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v1, v0, Lcom/perm/kate/api/MarketItem;->user_likes:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/MarketItem;->user_likes:Ljava/lang/Boolean;

    return-void
.end method

.method private updateLikedMarker()V
    .locals 5

    .line 249
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment;->iv_liked_marker:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 250
    iget-object v0, v0, Lcom/perm/kate/api/MarketItem;->like_count:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 251
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment;->tv_likes_count:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v1, v1, Lcom/perm/kate/api/MarketItem;->like_count:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment;->tv_likes_count:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment;->tv_likes_count:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment;->iv_liked_marker:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v1, v1, Lcom/perm/kate/api/MarketItem;->user_likes:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/theme/ColorTheme;->getLikeColor()I

    move-result v1

    goto :goto_1

    :cond_1
    const v1, -0x444445

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0x3e9

    const v3, 0x7f0f01ec

    .line 333
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v1, 0x3

    const/16 v2, 0x3eb

    const v3, 0x7f0f032f

    .line 334
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v1, 0x5

    const/16 v2, 0x3ed

    const v3, 0x7f0f00ba

    .line 335
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 416
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    const/16 p2, 0xb

    if-ne p2, p1, :cond_1

    .line 418
    iget-object p1, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    if-eqz p1, :cond_0

    .line 419
    iget-wide v0, p1, Lcom/perm/kate/api/MarketItem;->owner_id:J

    iput-wide v0, p0, Lcom/perm/kate/MarketItemFragment;->owner_id:J

    .line 420
    iget-wide p1, p1, Lcom/perm/kate/api/MarketItem;->id:J

    iput-wide p1, p0, Lcom/perm/kate/MarketItemFragment;->item_id:J

    .line 422
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/MarketItemFragment;->refreshOnThread()V

    .line 425
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/app/Activity;->setResult(I)V

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 89
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 90
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 75
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "item"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/MarketItem;

    iput-object v0, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "item_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/MarketItemFragment;->item_id:J

    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/MarketItemFragment;->owner_id:J

    .line 81
    iget-object v4, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    if-nez v4, :cond_0

    iget-wide v4, p0, Lcom/perm/kate/MarketItemFragment;->item_id:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    if-nez p1, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/perm/kate/MarketItemFragment;->refreshOnThread()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00af

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [I

    const p3, 0x7f09022b

    aput p3, p2, v0

    .line 48
    invoke-static {p1, p2}, Lcom/perm/kate/BaseFragment;->setButtonsBg(Landroid/view/View;[I)V

    .line 49
    iget-object p2, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    if-eqz p2, :cond_0

    .line 50
    invoke-direct {p0, p1}, Lcom/perm/kate/MarketItemFragment;->displayData(Landroid/view/View;)V

    :cond_0
    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    .line 341
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 357
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 349
    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f03ef

    .line 350
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0f00ba

    .line 351
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0f05a7

    new-instance v1, Lcom/perm/kate/MarketItemFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/perm/kate/MarketItemFragment$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/MarketItemFragment;)V

    .line 352
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0f037a

    const/4 v1, 0x0

    .line 353
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 354
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v2

    .line 346
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/perm/kate/BaseActivity;

    iget-object p1, p0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-wide v4, p1, Lcom/perm/kate/api/MarketItem;->owner_id:J

    iget-wide v6, p1, Lcom/perm/kate/api/MarketItem;->id:J

    iget-object v8, p1, Lcom/perm/kate/api/MarketItem;->albums_ids:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/perm/kate/MarketItemFragment;->market_albums_callback:Lcom/perm/utils/MarketAlbumsHelper$MarketAlbumsCallback;

    invoke-static/range {v3 .. v9}, Lcom/perm/utils/MarketAlbumsHelper;->showAlbumsDialogWithCheck(Lcom/perm/kate/BaseActivity;JJLjava/util/ArrayList;Lcom/perm/utils/MarketAlbumsHelper$MarketAlbumsCallback;)V

    return v2

    .line 343
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/MarketItemFragment;->showEditMarketActivity()V

    return v2
.end method

.method setLike(Ljava/lang/Long;JZ)V
    .locals 8

    .line 309
    new-instance v6, Lcom/perm/kate/MarketItemFragment$9;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v6, p0, v0}, Lcom/perm/kate/MarketItemFragment$9;-><init>(Lcom/perm/kate/MarketItemFragment;Landroid/app/Activity;)V

    .line 316
    new-instance v7, Lcom/perm/kate/MarketItemFragment$10;

    move-object v0, v7

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/MarketItemFragment$10;-><init>(Lcom/perm/kate/MarketItemFragment;ZLjava/lang/Long;JLcom/perm/kate/session/Callback;)V

    .line 324
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    return-void
.end method
