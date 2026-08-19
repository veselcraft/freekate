.class public Lcom/perm/kate/DashConfigAdapter;
.super Landroid/widget/BaseAdapter;
.source "DashConfigAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private removeClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 84
    new-instance v0, Lcom/perm/kate/DashConfigAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashConfigAdapter$1;-><init>(Lcom/perm/kate/DashConfigAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/DashConfigAdapter;->removeClick:Landroid/view/View$OnClickListener;

    .line 22
    iput-object p1, p0, Lcom/perm/kate/DashConfigAdapter;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/perm/kate/DashConfigAdapter;->activity:Landroid/app/Activity;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 27
    sget-object v0, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 32
    sget-object v0, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 34
    :cond_0
    sget-object v0, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

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
    .locals 9

    const/4 v0, 0x0

    const v1, 0x7f090188

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 47
    :try_start_0
    iget-object p2, p0, Lcom/perm/kate/DashConfigAdapter;->activity:Landroid/app/Activity;

    const-string v3, "layout_inflater"

    invoke-virtual {p2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v3, 0x7f0c004d

    .line 48
    invoke-virtual {p2, v3, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :try_start_1
    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 51
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 52
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    .line 53
    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v6

    const-wide/high16 v7, 0x402e000000000000L    # 15.0

    invoke-static {v7, v8}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v7

    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    invoke-virtual {v2, v5, v6, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const-wide/high16 v3, 0x4049000000000000L    # 50.0

    .line 54
    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 55
    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 56
    invoke-virtual {p3}, Landroid/widget/ImageView;->requestLayout()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const p3, 0x7f0903e6

    .line 60
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 61
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    const v1, 0x7f090299

    .line 62
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 63
    sget-object v2, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    const p1, 0x7f0f0030

    .line 64
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f0801cd

    .line 65
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 p1, 0x8

    .line 66
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    return-object p2

    .line 69
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 70
    sget-object v0, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/DashboardItem;

    .line 71
    iget-object v0, p1, Lcom/perm/kate/DashboardItem;->title:Ljava/lang/String;

    .line 72
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    iget-object v3, p1, Lcom/perm/kate/DashboardItem;->img:Ljava/lang/String;

    const/4 v5, 0x1

    const/16 v6, 0x5a

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 74
    iget-object p3, p0, Lcom/perm/kate/DashConfigAdapter;->removeClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p2

    :catch_1
    move-exception p1

    move-object v2, p2

    .line 78
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    return-object v2
.end method
