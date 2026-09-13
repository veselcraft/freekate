.class public Lcom/perm/kate/StickersAdapter;
.super Landroid/widget/BaseAdapter;
.source "StickersAdapter.java"


# instance fields
.field private activet_ClickListener:Landroid/view/View$OnClickListener;

.field private activity:Landroid/app/Activity;

.field public show_buttons:Z

.field private stickers:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/StickersAdapter;->stickers:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/perm/kate/StickersAdapter;->show_buttons:Z

    .line 98
    new-instance v0, Lcom/perm/kate/StickersAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/StickersAdapter$1;-><init>(Lcom/perm/kate/StickersAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/StickersAdapter;->activet_ClickListener:Landroid/view/View$OnClickListener;

    .line 26
    iput-object p1, p0, Lcom/perm/kate/StickersAdapter;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/StickersAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/perm/kate/StickersAdapter;->stickers:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public displayData(Ljava/util/ArrayList;)V
    .locals 0

    if-nez p1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/perm/kate/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/perm/kate/StickersAdapter;->stickers:Ljava/util/ArrayList;

    .line 34
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/perm/kate/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/perm/kate/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/perm/kate/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 61
    :try_start_0
    iget-object p2, p0, Lcom/perm/kate/StickersAdapter;->activity:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    invoke-virtual {p2, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v2, 0x7f0c011f

    .line 62
    invoke-virtual {p2, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    .line 65
    :cond_0
    :goto_0
    :try_start_1
    iget-object p3, p0, Lcom/perm/kate/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Product;

    const p3, 0x7f0903db

    .line 66
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 67
    iget-object v1, p1, Lcom/perm/kate/api/Product;->title:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p3, 0x7f090187

    .line 69
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Landroid/widget/ImageView;

    const-wide/high16 v1, 0x4050000000000000L    # 64.0

    .line 70
    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    const/16 p3, 0x80

    const/16 v1, 0x40

    if-le v5, v1, :cond_1

    const/16 v1, 0x80

    :cond_1
    if-le v5, p3, :cond_2

    const/16 v1, 0x100

    .line 77
    :cond_2
    iget-object p3, p1, Lcom/perm/kate/api/Product;->sticker_ids:[I

    if-eqz p3, :cond_3

    array-length p3, p3

    if-lez p3, :cond_3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "images/stickers/"

    invoke-static {v2}, Lcom/perm/kate/KApplication;->instanceLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/perm/kate/api/Product;->sticker_ids:[I

    aget v0, v2, v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "b.png"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_3
    const-string p3, ""

    :goto_1
    move-object v2, p3

    .line 78
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v1

    const/4 v4, 0x1

    const v6, 0x7f080208

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    const p3, 0x7f090138

    .line 79
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 80
    sget-boolean v0, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-eqz v0, :cond_4

    .line 81
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getButtonBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const v0, 0x7f09005c

    .line 83
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 84
    iget-boolean v1, p0, Lcom/perm/kate/StickersAdapter;->show_buttons:Z

    if-eqz v1, :cond_5

    const p3, 0x7f0f0210

    .line 85
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(I)V

    .line 86
    iget-object p3, p0, Lcom/perm/kate/StickersAdapter;->activet_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    const/16 p1, 0x8

    .line 89
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-object p2

    :catch_1
    move-exception p1

    move-object v1, p2

    .line 92
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    return-object v1
.end method
