.class public Lcom/perm/kate/StickersAdapter;
.super Landroid/widget/BaseAdapter;
.source "StickersAdapter.java"


# instance fields
.field private activet_ClickListener:Landroid/view/View$OnClickListener;

.field private activity:Landroid/app/Activity;

.field public show_buttons:Z

.field private stickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Product;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/StickersAdapter;->stickers:Ljava/util/ArrayList;

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/StickersAdapter;->show_buttons:Z

    .line 99
    new-instance v0, Lcom/perm/kate/StickersAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/StickersAdapter$1;-><init>(Lcom/perm/kate/StickersAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/StickersAdapter;->activet_ClickListener:Landroid/view/View$OnClickListener;

    .line 26
    iput-object p1, p0, Lcom/perm/kate/StickersAdapter;->activity:Landroid/app/Activity;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/StickersAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/StickersAdapter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/perm/kate/StickersAdapter;->stickers:Ljava/util/ArrayList;

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
            "Lcom/perm/kate/api/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "products":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Product;>;"
    if-nez p1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/perm/kate/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 34
    :goto_0
    invoke-virtual {p0}, Lcom/perm/kate/StickersAdapter;->notifyDataSetChanged()V

    .line 35
    return-void

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/perm/kate/StickersAdapter;->stickers:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/perm/kate/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/perm/kate/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/perm/kate/StickersAdapter;->stickers:Ljava/util/ArrayList;

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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 59
    const/16 v16, 0x0

    .line 61
    .local v16, "vi":Landroid/view/View;
    if-nez p2, :cond_3

    .line 62
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/StickersAdapter;->activity:Landroid/app/Activity;

    const-string v5, "layout_inflater"

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 63
    .local v12, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030102

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v2, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 66
    .end local v12    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/StickersAdapter;->stickers:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/perm/kate/api/Product;

    .line 67
    .local v15, "sticker":Lcom/perm/kate/api/Product;
    const v2, 0x7f0e0337

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 68
    .local v13, "name":Landroid/widget/TextView;
    iget-object v2, v15, Lcom/perm/kate/api/Product;->title:Ljava/lang/String;

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    const v2, 0x7f0e0336

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 71
    .local v4, "img_sticker":Landroid/widget/ImageView;
    const-wide/high16 v18, 0x4050000000000000L    # 64.0

    invoke-static/range {v18 .. v19}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v6

    .line 73
    .local v6, "sticker_size":I
    const/16 v14, 0x40

    .line 74
    .local v14, "png_size":I
    const/16 v2, 0x40

    if-le v6, v2, :cond_0

    .line 75
    const/16 v14, 0x80

    .line 76
    :cond_0
    const/16 v2, 0x80

    if-le v6, v2, :cond_1

    .line 77
    const/16 v14, 0x100

    .line 78
    :cond_1
    iget-object v2, v15, Lcom/perm/kate/api/Product;->sticker_ids:[I

    if-eqz v2, :cond_4

    iget-object v2, v15, Lcom/perm/kate/api/Product;->sticker_ids:[I

    array-length v2, v2

    if-lez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://vk.com/images/stickers/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v15, Lcom/perm/kate/api/Product;->sticker_ids:[I

    const/4 v7, 0x0

    aget v5, v5, v7

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "b.png"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "url":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    const/4 v5, 0x1

    const v7, 0x7f020143

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 80
    const v2, 0x7f0e0068

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 81
    .local v11, "fl_button_bg":Landroid/view/View;
    sget-boolean v2, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-eqz v2, :cond_2

    .line 82
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perm/kate/theme/ColorTheme;->getButtonBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    :cond_2
    const v2, 0x7f0e0338

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 85
    .local v9, "btn_active":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/perm/kate/StickersAdapter;->show_buttons:Z

    if-eqz v2, :cond_5

    .line 86
    const v2, 0x7f0701b4

    invoke-virtual {v9, v2}, Landroid/widget/Button;->setText(I)V

    .line 87
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/StickersAdapter;->activet_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {v9, v15}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    :goto_2
    move-object/from16 v17, v16

    .line 95
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "img_sticker":Landroid/widget/ImageView;
    .end local v6    # "sticker_size":I
    .end local v9    # "btn_active":Landroid/widget/Button;
    .end local v11    # "fl_button_bg":Landroid/view/View;
    .end local v13    # "name":Landroid/widget/TextView;
    .end local v14    # "png_size":I
    .end local v15    # "sticker":Lcom/perm/kate/api/Product;
    .end local v16    # "vi":Landroid/view/View;
    .local v17, "vi":Landroid/view/View;
    :goto_3
    return-object v17

    .line 65
    .end local v17    # "vi":Landroid/view/View;
    .restart local v16    # "vi":Landroid/view/View;
    :cond_3
    move-object/from16 v16, p2

    goto/16 :goto_0

    .line 78
    .restart local v4    # "img_sticker":Landroid/widget/ImageView;
    .restart local v6    # "sticker_size":I
    .restart local v13    # "name":Landroid/widget/TextView;
    .restart local v14    # "png_size":I
    .restart local v15    # "sticker":Lcom/perm/kate/api/Product;
    :cond_4
    const-string v3, ""

    goto :goto_1

    .line 90
    .restart local v3    # "url":Ljava/lang/String;
    .restart local v9    # "btn_active":Landroid/widget/Button;
    .restart local v11    # "fl_button_bg":Landroid/view/View;
    :cond_5
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 92
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "img_sticker":Landroid/widget/ImageView;
    .end local v6    # "sticker_size":I
    .end local v9    # "btn_active":Landroid/widget/Button;
    .end local v11    # "fl_button_bg":Landroid/view/View;
    .end local v13    # "name":Landroid/widget/TextView;
    .end local v14    # "png_size":I
    .end local v15    # "sticker":Lcom/perm/kate/api/Product;
    :catch_0
    move-exception v10

    .line 93
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    invoke-static {v10}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    move-object/from16 v17, v16

    .line 95
    .end local v16    # "vi":Landroid/view/View;
    .restart local v17    # "vi":Landroid/view/View;
    goto :goto_3
.end method
