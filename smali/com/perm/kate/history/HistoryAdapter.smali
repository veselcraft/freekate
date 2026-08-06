.class public Lcom/perm/kate/history/HistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "HistoryAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/history/HistoryItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/history/HistoryAdapter;->items:Ljava/util/ArrayList;

    .line 22
    iput-object p1, p0, Lcom/perm/kate/history/HistoryAdapter;->activity:Landroid/app/Activity;

    .line 23
    return-void
.end method

.method private getStringType(I)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "text":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 97
    :goto_0
    return-object v0

    .line 91
    :sswitch_0
    iget-object v1, p0, Lcom/perm/kate/history/HistoryAdapter;->activity:Landroid/app/Activity;

    const v2, 0x7f0700bf

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    goto :goto_0

    .line 94
    :sswitch_1
    iget-object v1, p0, Lcom/perm/kate/history/HistoryAdapter;->activity:Landroid/app/Activity;

    const v2, 0x7f070299

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 89
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public displayData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/history/HistoryItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/history/HistoryItem;>;"
    if-nez p1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/perm/kate/history/HistoryAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 30
    :goto_0
    invoke-virtual {p0}, Lcom/perm/kate/history/HistoryAdapter;->notifyDataSetChanged()V

    .line 31
    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/perm/kate/history/HistoryAdapter;->items:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/perm/kate/history/HistoryAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/perm/kate/history/HistoryAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/history/HistoryAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/perm/kate/history/HistoryAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 48
    const-wide/16 v0, -0x1

    .line 49
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
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 64
    const/4 v13, 0x0

    .line 66
    .local v13, "vi":Landroid/view/View;
    if-nez p2, :cond_0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/history/HistoryAdapter;->activity:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 68
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030099

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v9, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 71
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/history/HistoryAdapter;->items:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perm/kate/history/HistoryItem;

    .line 72
    .local v10, "item":Lcom/perm/kate/history/HistoryItem;
    const v1, 0x7f0e0205

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 73
    .local v11, "tv_title":Landroid/widget/TextView;
    iget-object v1, v10, Lcom/perm/kate/history/HistoryItem;->title:Ljava/lang/String;

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const v1, 0x7f0e0204

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 75
    .local v3, "iv_link_pic":Landroid/widget/ImageView;
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v1

    iget-object v2, v10, Lcom/perm/kate/history/HistoryItem;->image_url:Ljava/lang/String;

    const/4 v4, 0x1

    const/16 v5, 0x5a

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 76
    const v1, 0x7f0e0206

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 77
    .local v12, "tv_type":Landroid/widget/TextView;
    iget v1, v10, Lcom/perm/kate/history/HistoryItem;->type:I

    invoke-direct {p0, v1}, Lcom/perm/kate/history/HistoryAdapter;->getStringType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v13, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v14, v13

    .line 83
    .end local v3    # "iv_link_pic":Landroid/widget/ImageView;
    .end local v10    # "item":Lcom/perm/kate/history/HistoryItem;
    .end local v11    # "tv_title":Landroid/widget/TextView;
    .end local v12    # "tv_type":Landroid/widget/TextView;
    .end local v13    # "vi":Landroid/view/View;
    .local v14, "vi":Landroid/view/View;
    :goto_1
    return-object v14

    .line 70
    .end local v14    # "vi":Landroid/view/View;
    .restart local v13    # "vi":Landroid/view/View;
    :cond_0
    move-object/from16 v13, p2

    goto :goto_0

    .line 80
    :catch_0
    move-exception v8

    .line 81
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    invoke-static {v8}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    move-object v14, v13

    .line 83
    .end local v13    # "vi":Landroid/view/View;
    .restart local v14    # "vi":Landroid/view/View;
    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method
