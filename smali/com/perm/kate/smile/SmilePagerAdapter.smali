.class public Lcom/perm/kate/smile/SmilePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SmilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;,
        Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;
    }
.end annotation


# instance fields
.field listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/FragmentActivity;",
            ">;"
        }
    .end annotation
.end field

.field pages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;",
            ">;"
        }
    .end annotation
.end field

.field show_stickers:Z


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;ZLjava/util/ArrayList;)V
    .locals 1
    .param p3, "show_stickers"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/FragmentActivity;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;",
            ">;Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "activity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v4/app/FragmentActivity;>;"
    .local p2, "listener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;>;"
    .local p4, "pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;>;"
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/perm/kate/smile/SmilePagerAdapter;->mActivity:Ljava/lang/ref/WeakReference;

    .line 28
    iput-object p2, p0, Lcom/perm/kate/smile/SmilePagerAdapter;->listener:Ljava/lang/ref/WeakReference;

    .line 29
    iput-boolean p3, p0, Lcom/perm/kate/smile/SmilePagerAdapter;->show_stickers:Z

    .line 30
    iput-object p4, p0, Lcom/perm/kate/smile/SmilePagerAdapter;->pages:Ljava/util/ArrayList;

    .line 31
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    .line 32
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "collection"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 73
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "collection":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 74
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/perm/kate/smile/SmilePagerAdapter;->pages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 83
    iget-object v1, p0, Lcom/perm/kate/smile/SmilePagerAdapter;->pages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;

    .line 84
    .local v0, "page":Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;
    iget-object v1, v0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->type:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    sget-object v2, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->RECENT_SMILES:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    if-ne v1, v2, :cond_0

    .line 85
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f0703a2

    invoke-virtual {v1, v2}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 100
    :goto_0
    return-object v1

    .line 86
    :cond_0
    iget-object v1, v0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->type:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    sget-object v2, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->SMILES:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    if-ne v1, v2, :cond_5

    .line 87
    iget v1, v0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->smile_page:I

    if-nez v1, :cond_1

    .line 88
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f0703f4

    invoke-virtual {v1, v2}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 89
    :cond_1
    iget v1, v0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->smile_page:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 90
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f070300

    invoke-virtual {v1, v2}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 91
    :cond_2
    iget v1, v0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->smile_page:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 92
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f070331

    invoke-virtual {v1, v2}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 93
    :cond_3
    iget v1, v0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->smile_page:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 94
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f0704e7

    invoke-virtual {v1, v2}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 95
    :cond_4
    iget v1, v0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->smile_page:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 96
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f070439

    invoke-virtual {v1, v2}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 98
    :cond_5
    iget-object v1, v0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->type:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    sget-object v2, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->STICKERS:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    if-ne v1, v2, :cond_6

    .line 99
    invoke-static {v0}, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->access$000(Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 100
    :cond_6
    const-string v1, ""

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 13
    .param p1, "collection"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 41
    iget-object v3, p0, Lcom/perm/kate/smile/SmilePagerAdapter;->pages:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;

    .line 42
    .local v10, "page":Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;
    iget-object v3, v10, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->type:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    sget-object v5, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->STICKERS:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    if-ne v3, v5, :cond_1

    const v9, 0x7f030101

    .line 43
    .local v9, "layout_id":I
    :goto_0
    iget-object v3, p0, Lcom/perm/kate/smile/SmilePagerAdapter;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v9, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 44
    .local v8, "layout":Landroid/view/View;
    const v3, 0x7f0e0166

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/GridView;

    .line 47
    .local v6, "grid":Landroid/widget/GridView;
    iget-object v3, v10, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->type:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    sget-object v5, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->SMILES:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    if-eq v3, v5, :cond_0

    iget-object v3, v10, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->type:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    sget-object v5, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->RECENT_SMILES:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    if-ne v3, v5, :cond_4

    .line 48
    :cond_0
    const/4 v4, 0x0

    .line 49
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/utils/SmileHelper$ResCodePair;>;"
    const/4 v1, 0x0

    .line 50
    .local v1, "offset":I
    const/4 v2, 0x0

    .line 52
    .local v2, "count":I
    iget-object v3, v10, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->type:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    sget-object v5, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->RECENT_SMILES:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    if-ne v3, v5, :cond_2

    .line 53
    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v3}, Lcom/perm/utils/SmileHelper;->getRecentPairs(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 60
    :goto_1
    new-instance v0, Lcom/perm/kate/SmilesActivity$SmileAdapter;

    iget-object v3, p0, Lcom/perm/kate/smile/SmilePagerAdapter;->listener:Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lcom/perm/kate/smile/SmilePagerAdapter;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/SmilesActivity$SmileAdapter;-><init>(IILjava/lang/ref/WeakReference;Ljava/util/ArrayList;Ljava/lang/ref/WeakReference;)V

    .line 65
    .end local v1    # "offset":I
    .end local v2    # "count":I
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/utils/SmileHelper$ResCodePair;>;"
    .local v0, "adapter":Landroid/widget/BaseAdapter;
    :goto_2
    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "collection":Landroid/view/View;
    invoke-virtual {p1, v8}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 67
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/GridView;->setTag(Ljava/lang/Object;)V

    .line 68
    return-object v8

    .line 42
    .end local v0    # "adapter":Landroid/widget/BaseAdapter;
    .end local v6    # "grid":Landroid/widget/GridView;
    .end local v8    # "layout":Landroid/view/View;
    .end local v9    # "layout_id":I
    .restart local p1    # "collection":Landroid/view/View;
    :cond_1
    const v9, 0x7f030066

    goto :goto_0

    .line 55
    .restart local v1    # "offset":I
    .restart local v2    # "count":I
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/utils/SmileHelper$ResCodePair;>;"
    .restart local v6    # "grid":Landroid/widget/GridView;
    .restart local v8    # "layout":Landroid/view/View;
    .restart local v9    # "layout_id":I
    :cond_2
    iget v11, v10, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->smile_page:I

    .line 56
    .local v11, "smile_page":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v11, :cond_3

    .line 57
    sget-object v3, Lcom/perm/utils/SmileHelper;->pages:[I

    aget v3, v3, v7

    add-int/2addr v1, v3

    .line 56
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 58
    :cond_3
    sget-object v3, Lcom/perm/utils/SmileHelper;->pages:[I

    aget v2, v3, v11

    goto :goto_1

    .line 63
    .end local v1    # "offset":I
    .end local v2    # "count":I
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/utils/SmileHelper$ResCodePair;>;"
    .end local v7    # "i":I
    .end local v11    # "smile_page":I
    :cond_4
    new-instance v0, Lcom/perm/kate/smile/StickerAdapter;

    iget-object v3, p0, Lcom/perm/kate/smile/SmilePagerAdapter;->listener:Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lcom/perm/kate/smile/SmilePagerAdapter;->mActivity:Ljava/lang/ref/WeakReference;

    iget-object v12, v10, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->sticker_ids:[I

    invoke-direct {v0, v3, v5, v12}, Lcom/perm/kate/smile/StickerAdapter;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;[I)V

    .restart local v0    # "adapter":Landroid/widget/BaseAdapter;
    goto :goto_2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 78
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
