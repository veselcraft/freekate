.class public Lcom/perm/kate/RepliesTabsFragment;
.super Landroidx/fragment/app/Fragment;
.source "RepliesTabsFragment.java"

# interfaces
.implements Lcom/perm/kate/TabSelector;


# instance fields
.field listener:Lcom/perm/kate/TabListener;

.field private paneButtons:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/RepliesTabsFragment;->paneButtons:Ljava/util/ArrayList;

    return-void
.end method

.method private makeTextUpperCase(Landroid/view/View;)V
    .locals 3

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    invoke-static {v0}, Lcom/perm/kate/theme/ThemeColorsHelper;->isMaterial(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f09029b

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const v0, 0x7f0900d5

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    return-void
.end method

.method private setupButtons(Landroid/view/View;)V
    .locals 4

    .line 38
    sget-boolean v0, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    const v1, 0x7f090023

    const v2, 0x7f09000a

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perm/kate/theme/ColorTheme;->getTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perm/kate/theme/ColorTheme;->getTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/perm/kate/RepliesTabsFragment$1;

    invoke-direct {v3, p0}, Lcom/perm/kate/RepliesTabsFragment$1;-><init>(Lcom/perm/kate/RepliesTabsFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/perm/kate/RepliesTabsFragment$2;

    invoke-direct {v3, p0}, Lcom/perm/kate/RepliesTabsFragment$2;-><init>(Lcom/perm/kate/RepliesTabsFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/perm/kate/RepliesTabsFragment;->paneButtons:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/perm/kate/RepliesTabsFragment;->paneButtons:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perm/kate/RepliesTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 34
    check-cast p1, Lcom/perm/kate/TabListener;

    iput-object p1, p0, Lcom/perm/kate/RepliesTabsFragment;->listener:Lcom/perm/kate/TabListener;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c010a

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Lcom/perm/kate/RepliesTabsFragment;->setupButtons(Landroid/view/View;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/perm/kate/RepliesTabsFragment;->makeTextUpperCase(Landroid/view/View;)V

    return-object p1
.end method

.method public selectTab(Ljava/lang/String;)V
    .locals 2

    const-string v0, "All"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/RepliesTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    :cond_0
    const-string v0, "Online"

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090023

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perm/kate/RepliesTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method setActivePaneButton(Landroid/view/View;)V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/perm/kate/RepliesTabsFragment;->paneButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-ne v1, p1, :cond_0

    const/4 v2, 0x1

    .line 64
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 66
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
