.class public Lcom/perm/kate/MainPhoneTabsFragment;
.super Landroid/support/v4/app/Fragment;
.source "MainPhoneTabsFragment.java"

# interfaces
.implements Lcom/perm/kate/TabSelector;


# instance fields
.field listener:Lcom/perm/kate/TabListener;

.field messagesCounter:Landroid/widget/TextView;

.field private messagesCounterListener:Lcom/perm/kate/Counter$CounterListener;

.field private paneButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MainPhoneTabsFragment;->paneButtons:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Lcom/perm/kate/MainPhoneTabsFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/MainPhoneTabsFragment$5;-><init>(Lcom/perm/kate/MainPhoneTabsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MainPhoneTabsFragment;->messagesCounterListener:Lcom/perm/kate/Counter$CounterListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/MainPhoneTabsFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MainPhoneTabsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/MainPhoneTabsFragment;->displayMessagesCounter(I)V

    return-void
.end method

.method private displayMessagesCounter(I)V
    .locals 2
    .param p1, "new_value"    # I

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/perm/kate/MainPhoneTabsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MainPhoneTabsFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/MainPhoneTabsFragment$6;-><init>(Lcom/perm/kate/MainPhoneTabsFragment;I)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method private friendsButtonEnabled()Z
    .locals 3

    .prologue
    .line 161
    const v1, 0x7f070530

    invoke-virtual {p0, v1}, Lcom/perm/kate/MainPhoneTabsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "pref_name":Ljava/lang/String;
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private makeTextUpperCase(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v6, 0x7f0e0211

    const v5, 0x7f0e020f

    const v4, 0x7f0e020d

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    invoke-static {v0}, Lcom/perm/kate/theme/ThemeColorsHelper;->isMaterial(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 53
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 54
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 55
    const v0, 0x7f0e0214

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 59
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 65
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f0701db

    invoke-virtual {v1, v2}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f07030d

    invoke-virtual {v1, v2}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f0701d5

    invoke-virtual {v1, v2}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const v0, 0x7f0e0214

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f0701d4

    invoke-virtual {v1, v2}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setupButtons(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v5, 0x7f0e0213

    const v4, 0x7f0e0210

    const v3, 0x7f0e020c

    const v2, 0x7f0e020e

    .line 75
    sget-boolean v0, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/theme/ColorTheme;->getTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/theme/ColorTheme;->getTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/theme/ColorTheme;->getTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/theme/ColorTheme;->getTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MainPhoneTabsFragment$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/MainPhoneTabsFragment$1;-><init>(Lcom/perm/kate/MainPhoneTabsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MainPhoneTabsFragment$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/MainPhoneTabsFragment$2;-><init>(Lcom/perm/kate/MainPhoneTabsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MainPhoneTabsFragment$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/MainPhoneTabsFragment$3;-><init>(Lcom/perm/kate/MainPhoneTabsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MainPhoneTabsFragment$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/MainPhoneTabsFragment$4;-><init>(Lcom/perm/kate/MainPhoneTabsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/perm/kate/MainPhoneTabsFragment;->paneButtons:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/perm/kate/MainPhoneTabsFragment;->paneButtons:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/perm/kate/MainPhoneTabsFragment;->paneButtons:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/perm/kate/MainPhoneTabsFragment;->paneButtons:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/MainPhoneTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    .line 111
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 70
    check-cast p1, Lcom/perm/kate/TabListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/perm/kate/MainPhoneTabsFragment;->listener:Lcom/perm/kate/TabListener;

    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 28
    const v1, 0x7f03009d

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 29
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e0212

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/MainPhoneTabsFragment;->messagesCounter:Landroid/widget/TextView;

    .line 30
    iget-object v1, p0, Lcom/perm/kate/MainPhoneTabsFragment;->messagesCounter:Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v2

    sget-boolean v3, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    invoke-virtual {v2, v3, v4}, Lcom/perm/kate/theme/ColorTheme;->getNotifyBg(ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    invoke-direct {p0, v0}, Lcom/perm/kate/MainPhoneTabsFragment;->setupButtons(Landroid/view/View;)V

    .line 32
    sget-object v1, Lcom/perm/kate/KApplication;->newMessageCounter:Lcom/perm/kate/Counter;

    iget-object v2, p0, Lcom/perm/kate/MainPhoneTabsFragment;->messagesCounterListener:Lcom/perm/kate/Counter$CounterListener;

    iput-object v2, v1, Lcom/perm/kate/Counter;->listener:Lcom/perm/kate/Counter$CounterListener;

    .line 33
    sget-object v1, Lcom/perm/kate/KApplication;->newMessageCounter:Lcom/perm/kate/Counter;

    invoke-virtual {v1}, Lcom/perm/kate/Counter;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/perm/kate/MainPhoneTabsFragment;->displayMessagesCounter(I)V

    .line 36
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "key_news_tab"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    const v1, 0x7f0e020e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/MainPhoneTabsFragment;->friendsButtonEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    const v1, 0x7f0e0213

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 43
    :cond_1
    invoke-direct {p0, v0}, Lcom/perm/kate/MainPhoneTabsFragment;->makeTextUpperCase(Landroid/view/View;)V

    .line 45
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lcom/perm/kate/KApplication;->newMessageCounter:Lcom/perm/kate/Counter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/perm/kate/Counter;->listener:Lcom/perm/kate/Counter$CounterListener;

    .line 144
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 145
    return-void
.end method

.method public selectTab(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 124
    const-string v0, "PostsNewsActivityTab"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/perm/kate/MainPhoneTabsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e020e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/MainPhoneTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    .line 126
    :cond_0
    const-string v0, "MessagesTab"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/perm/kate/MainPhoneTabsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0210

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/MainPhoneTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    .line 128
    :cond_1
    const-string v0, "ProfileTab"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {p0}, Lcom/perm/kate/MainPhoneTabsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e020c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/MainPhoneTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    .line 130
    :cond_2
    const-string v0, "FriendsTab"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    invoke-virtual {p0}, Lcom/perm/kate/MainPhoneTabsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0213

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/MainPhoneTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    .line 132
    :cond_3
    return-void
.end method

.method setActivePaneButton(Landroid/view/View;)V
    .locals 3
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v1, p0, Lcom/perm/kate/MainPhoneTabsFragment;->paneButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 115
    .local v0, "view":Landroid/view/View;
    if-ne v0, p1, :cond_0

    .line 116
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 118
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 120
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method
