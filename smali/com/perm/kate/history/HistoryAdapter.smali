.class public Lcom/perm/kate/history/HistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "HistoryAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private items:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/history/HistoryAdapter;->items:Ljava/util/ArrayList;

    .line 22
    iput-object p1, p0, Lcom/perm/kate/history/HistoryAdapter;->activity:Landroid/app/Activity;

    return-void
.end method

.method private getStringType(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/history/HistoryAdapter;->activity:Landroid/app/Activity;

    const v0, 0x7f0f02f1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/history/HistoryAdapter;->activity:Landroid/app/Activity;

    const v0, 0x7f0f0108

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public displayData(Ljava/util/ArrayList;)V
    .locals 1

    if-nez p1, :cond_0

    .line 27
    iget-object p1, p0, Lcom/perm/kate/history/HistoryAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/perm/kate/history/HistoryAdapter;->items:Ljava/util/ArrayList;

    .line 30
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/perm/kate/history/HistoryAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/perm/kate/history/HistoryAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/history/HistoryAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/perm/kate/history/HistoryAdapter;->items:Ljava/util/ArrayList;

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
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 67
    :try_start_0
    iget-object p2, p0, Lcom/perm/kate/history/HistoryAdapter;->activity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v1, 0x7f0c00a6

    const/4 v2, 0x0

    .line 68
    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 71
    :cond_0
    :goto_0
    :try_start_1
    iget-object p3, p0, Lcom/perm/kate/history/HistoryAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/history/HistoryItem;

    const p3, 0x7f090384

    .line 72
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 73
    iget-object v0, p1, Lcom/perm/kate/history/HistoryItem;->title:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f090198

    .line 74
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Landroid/widget/ImageView;

    .line 75
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v1, p1, Lcom/perm/kate/history/HistoryItem;->image_url:Ljava/lang/String;

    const/4 v3, 0x1

    const/16 v4, 0x5a

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    const p3, 0x7f090383

    .line 76
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 77
    iget v0, p1, Lcom/perm/kate/history/HistoryItem;->type:I

    invoke-direct {p0, v0}, Lcom/perm/kate/history/HistoryAdapter;->getStringType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p2

    :catch_1
    move-exception p1

    move-object v0, p2

    .line 81
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
