.class public Lcom/perm/kate/MainPhoneTabsFragment;
.super Landroidx/fragment/app/Fragment;
.source "MainPhoneTabsFragment.java"

# interfaces
.implements Lcom/perm/kate/TabSelector;


# instance fields
.field listener:Lcom/perm/kate/TabListener;

.field messagesCounter:Landroid/widget/TextView;

.field private messagesCounterListener:Lcom/perm/kate/Counter$CounterListener;

.field private paneButtons:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MainPhoneTabsFragment;->paneButtons:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Lcom/perm/kate/MainPhoneTabsFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/MainPhoneTabsFragment$5;-><init>(Lcom/perm/kate/MainPhoneTabsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MainPhoneTabsFragment;->messagesCounterListener:Lcom/perm/kate/Counter$CounterListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/MainPhoneTabsFragment;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/perm/kate/MainPhoneTabsFragment;->displayMessagesCounter(I)V

    return-void
.end method

.method private displayMessagesCounter(I)V
    .locals 2

    .line 147
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MainPhoneTabsFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/MainPhoneTabsFragment$6;-><init>(Lcom/perm/kate/MainPhoneTabsFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private friendsButtonEnabled()Z
    .locals 3

    const v0, 0x7f0f0162

    .line 161
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private makeTextUpperCase(Landroid/view/View;)V
    .locals 3

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    invoke-static {v0}, Lcom/perm/kate/theme/ThemeColorsHelper;->isMaterial(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090283

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const v0, 0x7f09024a

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const v0, 0x7f09022f

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const v0, 0x7f090153

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    return-void
.end method

.method private setupButtons(Landroid/view/View;)V
    .locals 6

    .line 66
    sget-boolean v0, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    const v1, 0x7f090017

    const v2, 0x7f09001d

    const v3, 0x7f090026

    const v4, 0x7f090022

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perm/kate/theme/ColorTheme;->getTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perm/kate/theme/ColorTheme;->getTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perm/kate/theme/ColorTheme;->getTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perm/kate/theme/ColorTheme;->getTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lcom/perm/kate/MainPhoneTabsFragment$1;

    invoke-direct {v5, p0}, Lcom/perm/kate/MainPhoneTabsFragment$1;-><init>(Lcom/perm/kate/MainPhoneTabsFragment;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lcom/perm/kate/MainPhoneTabsFragment$2;

    invoke-direct {v5, p0}, Lcom/perm/kate/MainPhoneTabsFragment$2;-><init>(Lcom/perm/kate/MainPhoneTabsFragment;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lcom/perm/kate/MainPhoneTabsFragment$3;

    invoke-direct {v5, p0}, Lcom/perm/kate/MainPhoneTabsFragment$3;-><init>(Lcom/perm/kate/MainPhoneTabsFragment;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lcom/perm/kate/MainPhoneTabsFragment$4;

    invoke-direct {v5, p0}, Lcom/perm/kate/MainPhoneTabsFragment$4;-><init>(Lcom/perm/kate/MainPhoneTabsFragment;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/perm/kate/MainPhoneTabsFragment;->paneButtons:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/perm/kate/MainPhoneTabsFragment;->paneButtons:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/perm/kate/MainPhoneTabsFragment;->paneButtons:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/perm/kate/MainPhoneTabsFragment;->paneButtons:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perm/kate/MainPhoneTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 62
    check-cast p1, Lcom/perm/kate/TabListener;

    iput-object p1, p0, Lcom/perm/kate/MainPhoneTabsFragment;->listener:Lcom/perm/kate/TabListener;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c00aa

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09022c

    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/perm/kate/MainPhoneTabsFragment;->messagesCounter:Landroid/widget/TextView;

    .line 30
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object p3

    sget-boolean v1, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    invoke-virtual {p3, v1, v0}, Lcom/perm/kate/theme/ColorTheme;->getNotifyBg(ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/perm/kate/MainPhoneTabsFragment;->setupButtons(Landroid/view/View;)V

    .line 32
    sget-object p2, Lcom/perm/kate/KApplication;->newMessageCounter:Lcom/perm/kate/Counter;

    iget-object p3, p0, Lcom/perm/kate/MainPhoneTabsFragment;->messagesCounterListener:Lcom/perm/kate/Counter$CounterListener;

    iput-object p3, p2, Lcom/perm/kate/Counter;->listener:Lcom/perm/kate/Counter$CounterListener;

    .line 33
    invoke-virtual {p2}, Lcom/perm/kate/Counter;->getValue()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/perm/kate/MainPhoneTabsFragment;->displayMessagesCounter(I)V

    .line 36
    sget-object p2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string p3, "key_news_tab"

    const/4 v1, 0x1

    invoke-interface {p2, p3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    const p2, 0x7f090022

    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 40
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/MainPhoneTabsFragment;->friendsButtonEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f090017

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 43
    :cond_1
    invoke-direct {p0, p1}, Lcom/perm/kate/MainPhoneTabsFragment;->makeTextUpperCase(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 142
    sget-object v0, Lcom/perm/kate/KApplication;->newMessageCounter:Lcom/perm/kate/Counter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/perm/kate/Counter;->listener:Lcom/perm/kate/Counter$CounterListener;

    .line 143
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public selectTab(Ljava/lang/String;)V
    .locals 2

    const-string v0, "PostsNewsActivityTab"

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/MainPhoneTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    :cond_0
    const-string v0, "MessagesTab"

    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/MainPhoneTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    :cond_1
    const-string v0, "ProfileTab"

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/MainPhoneTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    :cond_2
    const-string v0, "FriendsTab"

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 130
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090017

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perm/kate/MainPhoneTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method setActivePaneButton(Landroid/view/View;)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/perm/kate/MainPhoneTabsFragment;->paneButtons:Ljava/util/ArrayList;

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

    .line 115
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 117
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
