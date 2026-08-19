.class public Lcom/perm/kate/smile/SmilePagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
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

.field mActivity:Ljava/lang/ref/WeakReference;

.field pages:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;ZLjava/util/ArrayList;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/perm/kate/smile/SmilePagerAdapter;->mActivity:Ljava/lang/ref/WeakReference;

    .line 28
    iput-object p2, p0, Lcom/perm/kate/smile/SmilePagerAdapter;->listener:Ljava/lang/ref/WeakReference;

    .line 30
    iput-object p4, p0, Lcom/perm/kate/smile/SmilePagerAdapter;->pages:Ljava/util/ArrayList;

    .line 31
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .line 73
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/perm/kate/smile/SmilePagerAdapter;->pages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/perm/kate/smile/SmilePagerAdapter;->pages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;

    .line 84
    iget-object v0, p1, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->type:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    sget-object v1, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->RECENT_SMILES:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    if-ne v0, v1, :cond_0

    .line 85
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v0, 0x7f0f041f

    invoke-virtual {p1, v0}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 86
    :cond_0
    sget-object v1, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->SMILES:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    if-ne v0, v1, :cond_5

    .line 87
    iget v1, p1, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->smile_page:I

    if-nez v1, :cond_1

    .line 88
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v0, 0x7f0f0485

    invoke-virtual {p1, v0}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 90
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v0, 0x7f0f0362

    invoke-virtual {p1, v0}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 92
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v0, 0x7f0f0395

    invoke-virtual {p1, v0}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 94
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v0, 0x7f0f056b

    invoke-virtual {p1, v0}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 96
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v0, 0x7f0f04cc

    invoke-virtual {p1, v0}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 98
    :cond_5
    sget-object v1, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->STICKERS:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    if-ne v0, v1, :cond_6

    .line 99
    invoke-static {p1}, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->access$000(Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    const-string p1, ""

    return-object p1
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 13

    .line 41
    iget-object v0, p0, Lcom/perm/kate/smile/SmilePagerAdapter;->pages:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;

    .line 42
    iget-object v1, v0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->type:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    sget-object v2, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->STICKERS:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    if-ne v1, v2, :cond_0

    const v1, 0x7f0c011e

    goto :goto_0

    :cond_0
    const v1, 0x7f0c0070

    .line 43
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/smile/SmilePagerAdapter;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090114

    .line 44
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    .line 47
    iget-object v4, v0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->type:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    sget-object v5, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->SMILES:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    if-eq v4, v5, :cond_2

    sget-object v5, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->RECENT_SMILES:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    if-ne v4, v5, :cond_1

    goto :goto_1

    .line 63
    :cond_1
    new-instance v3, Lcom/perm/kate/smile/StickerAdapter;

    iget-object v4, p0, Lcom/perm/kate/smile/SmilePagerAdapter;->listener:Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lcom/perm/kate/smile/SmilePagerAdapter;->mActivity:Ljava/lang/ref/WeakReference;

    iget-object v0, v0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->sticker_ids:[I

    invoke-direct {v3, v4, v5, v0}, Lcom/perm/kate/smile/StickerAdapter;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;[I)V

    goto :goto_4

    .line 52
    :cond_2
    :goto_1
    sget-object v5, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->RECENT_SMILES:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    const/4 v6, 0x0

    if-ne v4, v5, :cond_3

    .line 53
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Lcom/perm/utils/SmileHelper;->getRecentPairs(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    move-object v11, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_3

    .line 55
    :cond_3
    iget v0, v0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->smile_page:I

    const/4 v4, 0x0

    :goto_2
    if-ge v6, v0, :cond_4

    .line 57
    sget-object v5, Lcom/perm/utils/SmileHelper;->pages:[I

    aget v5, v5, v6

    add-int/2addr v4, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 58
    :cond_4
    sget-object v5, Lcom/perm/utils/SmileHelper;->pages:[I

    aget v6, v5, v0

    move-object v11, v3

    move v8, v4

    move v9, v6

    .line 60
    :goto_3
    new-instance v3, Lcom/perm/kate/SmilesActivity$SmileAdapter;

    iget-object v10, p0, Lcom/perm/kate/smile/SmilePagerAdapter;->listener:Ljava/lang/ref/WeakReference;

    iget-object v12, p0, Lcom/perm/kate/smile/SmilePagerAdapter;->mActivity:Ljava/lang/ref/WeakReference;

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/perm/kate/SmilesActivity$SmileAdapter;-><init>(IILjava/lang/ref/WeakReference;Ljava/util/ArrayList;Ljava/lang/ref/WeakReference;)V

    .line 65
    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/GridView;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
