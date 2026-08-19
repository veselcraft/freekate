.class public Lcom/perm/kate/NewMarketActivity;
.super Lcom/perm/kate/BaseActivity;
.source "NewMarketActivity.java"


# instance fields
.field private addImageClickListener:Landroid/view/View$OnClickListener;

.field private addMainImageClickListener:Landroid/view/View$OnClickListener;

.field private btn_add_image:Landroid/widget/Button;

.field private btn_add_main_image:Landroid/widget/Button;

.field private btn_cancel:Landroid/widget/Button;

.field private btn_save:Landroid/widget/Button;

.field private callback:Lcom/perm/kate/session/Callback;

.field private callback_categories:Lcom/perm/kate/session/Callback;

.field private callback_edit:Lcom/perm/kate/session/Callback;

.field private cancel_ClickListener:Landroid/view/View$OnClickListener;

.field private categories:Ljava/util/ArrayList;

.field private category_id:Ljava/lang/Long;

.field private description:Ljava/lang/String;

.field private ed_description:Landroid/widget/EditText;

.field private ed_name:Landroid/widget/EditText;

.field private ed_price:Landroid/widget/EditText;

.field private group_id:J

.field private is_edit:Z

.field private is_main_photo:Z

.field private iv_main_photo:Landroid/widget/ImageView;

.field private ll_images:Landroid/widget/LinearLayout;

.field private main_photo_id:Ljava/lang/Long;

.field private marketItem:Lcom/perm/kate/api/MarketItem;

.field private name:Ljava/lang/String;

.field private photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

.field private photo_ids:Ljava/util/ArrayList;

.field private price:Ljava/lang/Double;

.field private save_ClickListener:Landroid/view/View$OnClickListener;

.field private sp_categories:Landroid/widget/Spinner;

.field protected uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;


# direct methods
.method public static synthetic $r8$lambda$Lz0IFfX6r9mER4vhUyDbJ6aDzQ0(Lcom/perm/kate/NewMarketActivity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/perm/kate/NewMarketActivity;->lambda$displayNewMarketPhotoInUi$1(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XcHsR_YVJg5CEgKGKN5d1rQ8_KM(Lcom/perm/kate/NewMarketActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/perm/kate/NewMarketActivity;->lambda$fillCategoriesInUI$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/perm/kate/NewMarketActivity;->categories:Ljava/util/ArrayList;

    .line 42
    iput-object v0, p0, Lcom/perm/kate/NewMarketActivity;->name:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/perm/kate/NewMarketActivity;->description:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/perm/kate/NewMarketActivity;->category_id:Ljava/lang/Long;

    .line 45
    iput-object v0, p0, Lcom/perm/kate/NewMarketActivity;->main_photo_id:Ljava/lang/Long;

    .line 46
    iput-object v0, p0, Lcom/perm/kate/NewMarketActivity;->price:Ljava/lang/Double;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/NewMarketActivity;->photo_ids:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/perm/kate/NewMarketActivity;->is_main_photo:Z

    .line 51
    iput-boolean v0, p0, Lcom/perm/kate/NewMarketActivity;->is_edit:Z

    .line 115
    new-instance v0, Lcom/perm/kate/NewMarketActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/NewMarketActivity$2;-><init>(Lcom/perm/kate/NewMarketActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMarketActivity;->callback_categories:Lcom/perm/kate/session/Callback;

    .line 146
    new-instance v0, Lcom/perm/kate/NewMarketActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMarketActivity$3;-><init>(Lcom/perm/kate/NewMarketActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMarketActivity;->addImageClickListener:Landroid/view/View$OnClickListener;

    .line 154
    new-instance v0, Lcom/perm/kate/NewMarketActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMarketActivity$4;-><init>(Lcom/perm/kate/NewMarketActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMarketActivity;->addMainImageClickListener:Landroid/view/View$OnClickListener;

    .line 162
    new-instance v0, Lcom/perm/kate/NewMarketActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMarketActivity$5;-><init>(Lcom/perm/kate/NewMarketActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMarketActivity;->save_ClickListener:Landroid/view/View$OnClickListener;

    .line 172
    new-instance v0, Lcom/perm/kate/NewMarketActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMarketActivity$6;-><init>(Lcom/perm/kate/NewMarketActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMarketActivity;->cancel_ClickListener:Landroid/view/View$OnClickListener;

    .line 229
    new-instance v0, Lcom/perm/kate/NewMarketActivity$8;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/NewMarketActivity$8;-><init>(Lcom/perm/kate/NewMarketActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMarketActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 250
    new-instance v0, Lcom/perm/kate/NewMarketActivity$10;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/NewMarketActivity$10;-><init>(Lcom/perm/kate/NewMarketActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMarketActivity;->callback_edit:Lcom/perm/kate/session/Callback;

    .line 278
    new-instance v0, Lcom/perm/kate/NewMarketActivity$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMarketActivity$11;-><init>(Lcom/perm/kate/NewMarketActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMarketActivity;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    .line 289
    new-instance v0, Lcom/perm/kate/NewMarketActivity$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMarketActivity$12;-><init>(Lcom/perm/kate/NewMarketActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMarketActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    return-void
.end method

.method private ResultOK()V
    .locals 1

    const v0, 0x7f0f00c9

    .line 259
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    const/4 v0, -0x1

    .line 260
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 261
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/NewMarketActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/NewMarketActivity;->callback_categories:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/perm/kate/NewMarketActivity;)Ljava/lang/Long;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/NewMarketActivity;->category_id:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$102(Lcom/perm/kate/NewMarketActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/perm/kate/NewMarketActivity;->categories:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/perm/kate/NewMarketActivity;)Ljava/lang/Long;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/NewMarketActivity;->main_photo_id:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/perm/kate/NewMarketActivity;)Ljava/lang/Double;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/NewMarketActivity;->price:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/perm/kate/NewMarketActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/NewMarketActivity;->photo_ids:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/perm/kate/NewMarketActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/NewMarketActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/perm/kate/NewMarketActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/perm/kate/NewMarketActivity;->ResultOK()V

    return-void
.end method

.method static synthetic access$1600(Lcom/perm/kate/NewMarketActivity;)Lcom/perm/kate/api/MarketItem;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/NewMarketActivity;->marketItem:Lcom/perm/kate/api/MarketItem;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/perm/kate/NewMarketActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/NewMarketActivity;->callback_edit:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/perm/kate/NewMarketActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/perm/kate/NewMarketActivity;->editPhotoBeforeUpload(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/perm/kate/NewMarketActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/perm/kate/NewMarketActivity;->displayNewMarketPhotoInUi(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/NewMarketActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/perm/kate/NewMarketActivity;->fillCategoriesInUI()V

    return-void
.end method

.method static synthetic access$302(Lcom/perm/kate/NewMarketActivity;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/perm/kate/NewMarketActivity;->is_main_photo:Z

    return p1
.end method

.method static synthetic access$400(Lcom/perm/kate/NewMarketActivity;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/perm/kate/NewMarketActivity;->is_edit:Z

    return p0
.end method

.method static synthetic access$500(Lcom/perm/kate/NewMarketActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/perm/kate/NewMarketActivity;->editMarket()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/NewMarketActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/perm/kate/NewMarketActivity;->createMarket()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/NewMarketActivity;)J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/perm/kate/NewMarketActivity;->group_id:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/perm/kate/NewMarketActivity;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/NewMarketActivity;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/perm/kate/NewMarketActivity;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/NewMarketActivity;->description:Ljava/lang/String;

    return-object p0
.end method

.method private checkMainPhotoId()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity;->main_photo_id:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity;->photo_ids:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/perm/kate/NewMarketActivity;->main_photo_id:Ljava/lang/Long;

    .line 225
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity;->photo_ids:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private checkValues()Z
    .locals 7

    .line 194
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/NewMarketActivity;->name:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity;->ed_description:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/NewMarketActivity;->description:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f0f0537

    .line 197
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    return v1

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity;->description:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    goto :goto_1

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity;->main_photo_id:Ljava/lang/Long;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity;->photo_ids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f0f03f3

    .line 205
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    return v1

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity;->ed_price:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {v0}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_3

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    goto :goto_0

    :cond_3
    move-wide v5, v3

    :goto_0
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/NewMarketActivity;->price:Ljava/lang/Double;

    .line 210
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-nez v0, :cond_4

    const v0, 0x7f0f03f0

    .line 211
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    return v1

    .line 214
    :cond_4
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity;->categories:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity;->sp_categories:Landroid/widget/Spinner;

    if-eqz v0, :cond_5

    .line 215
    iget-object v1, p0, Lcom/perm/kate/NewMarketActivity;->categories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/MarketCategory;

    iget-wide v0, v0, Lcom/perm/kate/api/MarketCategory;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/NewMarketActivity;->category_id:Ljava/lang/Long;

    const/4 v0, 0x1

    return v0

    :cond_5
    return v1

    :cond_6
    :goto_1
    const v0, 0x7f0f0330

    .line 201
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    return v1
.end method

.method private createImageViewAndDisplayPhoto(Ljava/lang/String;)V
    .locals 8

    .line 333
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 334
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v3, 0x4062c00000000000L    # 150.0

    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v1

    const-wide v3, 0x4060400000000000L    # 130.0

    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    .line 335
    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v1

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v6

    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    invoke-virtual {v0, v1, v5, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 336
    iget-object v1, p0, Lcom/perm/kate/NewMarketActivity;->ll_images:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    .line 339
    invoke-static {}, Lcom/perm/kate/Helper;->getSquareStubId()I

    move-result v5

    const/4 v3, 0x1

    const/16 v4, 0x5a

    const/4 v6, 0x0

    move-object v1, p1

    .line 338
    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    return-void
.end method

.method private createMarket()V
    .locals 1

    .line 180
    invoke-direct {p0}, Lcom/perm/kate/NewMarketActivity;->checkValues()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/NewMarketActivity;->checkMainPhotoId()V

    .line 183
    new-instance v0, Lcom/perm/kate/NewMarketActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMarketActivity$7;-><init>(Lcom/perm/kate/NewMarketActivity;)V

    .line 190
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private displayNewMarketPhoto(Lcom/perm/kate/api/Photo;)V
    .locals 3

    .line 312
    iget-boolean v0, p0, Lcom/perm/kate/NewMarketActivity;->is_main_photo:Z

    if-eqz v0, :cond_0

    .line 313
    iget-wide v0, p1, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/NewMarketActivity;->main_photo_id:Ljava/lang/Long;

    .line 314
    iget-object p1, p1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/perm/kate/NewMarketActivity;->updateMainPhoto(Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity;->photo_ids:Ljava/util/ArrayList;

    iget-wide v1, p1, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object p1, p1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/perm/kate/NewMarketActivity;->createImageViewAndDisplayPhoto(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private displayNewMarketPhotoInUi(Ljava/util/ArrayList;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 304
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 308
    :cond_1
    new-instance v0, Lcom/perm/kate/NewMarketActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/NewMarketActivity$$ExternalSyntheticLambda1;-><init>(Lcom/perm/kate/NewMarketActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private displayValues()V
    .locals 5

    .line 89
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity;->ed_name:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/perm/kate/NewMarketActivity;->marketItem:Lcom/perm/kate/api/MarketItem;

    iget-object v1, v1, Lcom/perm/kate/api/MarketItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity;->ed_description:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/perm/kate/NewMarketActivity;->marketItem:Lcom/perm/kate/api/MarketItem;

    iget-object v1, v1, Lcom/perm/kate/api/MarketItem;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity;->ed_price:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/perm/kate/NewMarketActivity;->marketItem:Lcom/perm/kate/api/MarketItem;

    iget-wide v1, v1, Lcom/perm/kate/api/MarketItem;->price_amount:D

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity;->marketItem:Lcom/perm/kate/api/MarketItem;

    iget-object v0, v0, Lcom/perm/kate/api/MarketItem;->photos:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/perm/kate/NewMarketActivity;->updateMainPhoto(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity;->marketItem:Lcom/perm/kate/api/MarketItem;

    iget-object v0, v0, Lcom/perm/kate/api/MarketItem;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Photo;

    iget-wide v0, v0, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/NewMarketActivity;->main_photo_id:Ljava/lang/Long;

    const/4 v0, 0x1

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/NewMarketActivity;->marketItem:Lcom/perm/kate/api/MarketItem;

    iget-object v1, v1, Lcom/perm/kate/api/MarketItem;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/perm/kate/NewMarketActivity;->marketItem:Lcom/perm/kate/api/MarketItem;

    iget-object v1, v1, Lcom/perm/kate/api/MarketItem;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/perm/kate/NewMarketActivity;->createImageViewAndDisplayPhoto(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/perm/kate/NewMarketActivity;->photo_ids:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/perm/kate/NewMarketActivity;->marketItem:Lcom/perm/kate/api/MarketItem;

    iget-object v2, v2, Lcom/perm/kate/api/MarketItem;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Photo;

    iget-wide v2, v2, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity;->marketItem:Lcom/perm/kate/api/MarketItem;

    iget-wide v0, v0, Lcom/perm/kate/api/MarketItem;->category_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/NewMarketActivity;->category_id:Ljava/lang/Long;

    return-void
.end method

.method private editMarket()V
    .locals 1

    .line 238
    invoke-direct {p0}, Lcom/perm/kate/NewMarketActivity;->checkValues()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 240
    :cond_0
    new-instance v0, Lcom/perm/kate/NewMarketActivity$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMarketActivity$9;-><init>(Lcom/perm/kate/NewMarketActivity;)V

    .line 247
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private editPhotoBeforeUpload(Ljava/util/ArrayList;)V
    .locals 2

    .line 297
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "uris"

    .line 298
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, 0x7

    .line 299
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private fillCategories()V
    .locals 8

    .line 130
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity;->categories:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity;->categories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 135
    :goto_0
    iget-object v3, p0, Lcom/perm/kate/NewMarketActivity;->categories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 136
    iget-object v3, p0, Lcom/perm/kate/NewMarketActivity;->categories:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/MarketCategory;

    iget-object v3, v3, Lcom/perm/kate/api/MarketCategory;->name:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 137
    iget-object v3, p0, Lcom/perm/kate/NewMarketActivity;->category_id:Ljava/lang/Long;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/perm/kate/NewMarketActivity;->categories:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perm/kate/api/MarketCategory;

    iget-wide v5, v5, Lcom/perm/kate/api/MarketCategory;->id:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    move v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_2
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v1, p0, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v0, 0x1090009

    .line 141
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 142
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity;->sp_categories:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 143
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity;->sp_categories:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private fillCategoriesInUI()V
    .locals 1

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 126
    :cond_0
    new-instance v0, Lcom/perm/kate/NewMarketActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMarketActivity$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/NewMarketActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getMarketCategories()V
    .locals 1

    .line 105
    new-instance v0, Lcom/perm/kate/NewMarketActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMarketActivity$1;-><init>(Lcom/perm/kate/NewMarketActivity;)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private synthetic lambda$displayNewMarketPhotoInUi$1(Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    .line 308
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Photo;

    invoke-direct {p0, p1}, Lcom/perm/kate/NewMarketActivity;->displayNewMarketPhoto(Lcom/perm/kate/api/Photo;)V

    return-void
.end method

.method private synthetic lambda$fillCategoriesInUI$0()V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/perm/kate/NewMarketActivity;->fillCategories()V

    return-void
.end method

.method private updateMainPhoto(Ljava/lang/String;)V
    .locals 8

    .line 323
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity;->iv_main_photo:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 324
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v1

    iget-object v3, p0, Lcom/perm/kate/NewMarketActivity;->iv_main_photo:Landroid/widget/ImageView;

    const/4 v4, 0x1

    const/16 v5, 0x5a

    .line 325
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->getResIdForNoPhoto4()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p1

    .line 324
    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    .line 268
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 269
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/perm/kate/photoupload/PhotoChooser;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;Lcom/perm/kate/photoupload/PhotoChooser$Callback;)Landroid/net/Uri;

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p1, "uris"

    .line 271
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 p2, 0x2

    const-string v0, "resize_option"

    .line 272
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string p2, "rotate"

    const/4 v0, 0x0

    .line 273
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 274
    new-instance p2, Lcom/perm/kate/photoupload/MarketPhotoUploader;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/net/Uri;

    iget-wide v4, p0, Lcom/perm/kate/NewMarketActivity;->group_id:J

    iget-object v7, p0, Lcom/perm/kate/NewMarketActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    iget-boolean v9, p0, Lcom/perm/kate/NewMarketActivity;->is_main_photo:Z

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/perm/kate/photoupload/MarketPhotoUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;JILcom/perm/kate/photoupload/UploadCallback;IZ)V

    invoke-virtual {p2}, Lcom/perm/kate/photoupload/MarketPhotoUploader;->upload()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 56
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "item"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/MarketItem;

    iput-object p1, p0, Lcom/perm/kate/NewMarketActivity;->marketItem:Lcom/perm/kate/api/MarketItem;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/perm/kate/NewMarketActivity;->is_edit:Z

    :cond_0
    const p1, 0x7f0c00c8

    .line 60
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    .line 61
    iget-boolean p1, p0, Lcom/perm/kate/NewMarketActivity;->is_edit:Z

    if-eqz p1, :cond_1

    const p1, 0x7f0f01ec

    goto :goto_0

    :cond_1
    const p1, 0x7f0f0033

    :goto_0
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 62
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setButtonsBg()V

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-wide/16 v0, 0x0

    const-string v2, "group_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/NewMarketActivity;->group_id:J

    const p1, 0x7f090104

    .line 64
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/NewMarketActivity;->ed_name:Landroid/widget/EditText;

    const p1, 0x7f0902e2

    .line 65
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/NewMarketActivity;->sp_categories:Landroid/widget/Spinner;

    const p1, 0x7f0900fe

    .line 66
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/NewMarketActivity;->ed_description:Landroid/widget/EditText;

    const p1, 0x7f0901d8

    .line 67
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/perm/kate/NewMarketActivity;->ll_images:Landroid/widget/LinearLayout;

    const p1, 0x7f090199

    .line 68
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/perm/kate/NewMarketActivity;->iv_main_photo:Landroid/widget/ImageView;

    .line 69
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->getResIdForNoPhoto4()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const p1, 0x7f090060

    .line 70
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/NewMarketActivity;->btn_add_image:Landroid/widget/Button;

    .line 71
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity;->addImageClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090061

    .line 72
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/NewMarketActivity;->btn_add_main_image:Landroid/widget/Button;

    .line 73
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity;->addMainImageClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090109

    .line 74
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/NewMarketActivity;->ed_price:Landroid/widget/EditText;

    const p1, 0x7f090078

    .line 75
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/NewMarketActivity;->btn_save:Landroid/widget/Button;

    .line 76
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity;->save_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09006a

    .line 77
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/NewMarketActivity;->btn_cancel:Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity;->cancel_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-boolean p1, p0, Lcom/perm/kate/NewMarketActivity;->is_edit:Z

    if-eqz p1, :cond_2

    .line 80
    invoke-direct {p0}, Lcom/perm/kate/NewMarketActivity;->displayValues()V

    goto :goto_1

    .line 82
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/NewMarketActivity;->ed_name:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 85
    :goto_1
    invoke-direct {p0}, Lcom/perm/kate/NewMarketActivity;->getMarketCategories()V

    return-void
.end method
