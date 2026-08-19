.class public Lcom/perm/kate/MainTabletTabsFragment;
.super Landroidx/fragment/app/Fragment;
.source "MainTabletTabsFragment.java"

# interfaces
.implements Lcom/perm/kate/TabSelector;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field listener:Lcom/perm/kate/TabListener;

.field messagesCounter:Landroid/widget/TextView;

.field private messagesCounterListener:Lcom/perm/kate/Counter$CounterListener;

.field private paneButtons:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MainTabletTabsFragment;->paneButtons:Ljava/util/ArrayList;

    .line 191
    new-instance v0, Lcom/perm/kate/MainTabletTabsFragment$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/MainTabletTabsFragment$12;-><init>(Lcom/perm/kate/MainTabletTabsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MainTabletTabsFragment;->messagesCounterListener:Lcom/perm/kate/Counter$CounterListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/MainTabletTabsFragment;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/perm/kate/MainTabletTabsFragment;->displayMessagesCounter(I)V

    return-void
.end method

.method private displayMessagesCounter(I)V
    .locals 2

    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MainTabletTabsFragment$13;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/MainTabletTabsFragment$13;-><init>(Lcom/perm/kate/MainTabletTabsFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setupButtons(Landroid/view/View;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x7f090022

    .line 41
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 42
    new-instance v4, Lcom/perm/kate/MainTabletTabsFragment$1;

    invoke-direct {v4, v0}, Lcom/perm/kate/MainTabletTabsFragment$1;-><init>(Lcom/perm/kate/MainTabletTabsFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f090026

    .line 48
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 49
    new-instance v5, Lcom/perm/kate/MainTabletTabsFragment$2;

    invoke-direct {v5, v0}, Lcom/perm/kate/MainTabletTabsFragment$2;-><init>(Lcom/perm/kate/MainTabletTabsFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f09001d

    .line 54
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 55
    new-instance v7, Lcom/perm/kate/MainTabletTabsFragment$3;

    invoke-direct {v7, v0}, Lcom/perm/kate/MainTabletTabsFragment$3;-><init>(Lcom/perm/kate/MainTabletTabsFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f090017

    .line 61
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 62
    new-instance v9, Lcom/perm/kate/MainTabletTabsFragment$4;

    invoke-direct {v9, v0}, Lcom/perm/kate/MainTabletTabsFragment$4;-><init>(Lcom/perm/kate/MainTabletTabsFragment;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v9, 0x7f090011

    .line 69
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 70
    new-instance v11, Lcom/perm/kate/MainTabletTabsFragment$5;

    invoke-direct {v11, v0}, Lcom/perm/kate/MainTabletTabsFragment$5;-><init>(Lcom/perm/kate/MainTabletTabsFragment;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v11, 0x7f090027

    .line 76
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 77
    new-instance v13, Lcom/perm/kate/MainTabletTabsFragment$6;

    invoke-direct {v13, v0}, Lcom/perm/kate/MainTabletTabsFragment$6;-><init>(Lcom/perm/kate/MainTabletTabsFragment;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v13, 0x7f090016

    .line 83
    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 84
    new-instance v15, Lcom/perm/kate/MainTabletTabsFragment$7;

    invoke-direct {v15, v0}, Lcom/perm/kate/MainTabletTabsFragment$7;-><init>(Lcom/perm/kate/MainTabletTabsFragment;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v15, 0x7f090018

    .line 90
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 91
    new-instance v15, Lcom/perm/kate/MainTabletTabsFragment$8;

    invoke-direct {v15, v0}, Lcom/perm/kate/MainTabletTabsFragment$8;-><init>(Lcom/perm/kate/MainTabletTabsFragment;)V

    invoke-virtual {v13, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v15, 0x7f09000b

    .line 97
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 98
    new-instance v15, Lcom/perm/kate/MainTabletTabsFragment$9;

    invoke-direct {v15, v0}, Lcom/perm/kate/MainTabletTabsFragment$9;-><init>(Lcom/perm/kate/MainTabletTabsFragment;)V

    invoke-virtual {v11, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v15, 0x7f09002e

    .line 104
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 105
    new-instance v15, Lcom/perm/kate/MainTabletTabsFragment$10;

    invoke-direct {v15, v0}, Lcom/perm/kate/MainTabletTabsFragment$10;-><init>(Lcom/perm/kate/MainTabletTabsFragment;)V

    invoke-virtual {v9, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v15, 0x7f09002a

    .line 111
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 112
    new-instance v7, Lcom/perm/kate/MainTabletTabsFragment$11;

    invoke-direct {v7, v0}, Lcom/perm/kate/MainTabletTabsFragment$11;-><init>(Lcom/perm/kate/MainTabletTabsFragment;)V

    invoke-virtual {v15, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    sget-boolean v7, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-eqz v7, :cond_0

    const-wide/high16 v16, 0x4034000000000000L    # 20.0

    .line 118
    invoke-static/range {v16 .. v17}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v7

    const-wide/high16 v16, 0x4026000000000000L    # 11.0

    .line 119
    invoke-static/range {v16 .. v17}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    const-wide/high16 v18, 0x4014000000000000L    # 5.0

    .line 120
    invoke-static/range {v18 .. v19}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    .line 121
    invoke-static/range {v16 .. v17}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v1

    .line 122
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    invoke-virtual {v3, v7, v5, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 134
    invoke-virtual {v4, v7, v5, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 135
    invoke-virtual {v15, v7, v5, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 136
    invoke-virtual {v6, v7, v5, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 137
    invoke-virtual {v8, v7, v5, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 138
    invoke-virtual {v10, v7, v5, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 139
    invoke-virtual {v12, v7, v5, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 140
    invoke-virtual {v14, v7, v5, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 141
    invoke-virtual {v9, v7, v5, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 142
    invoke-virtual {v13, v7, v5, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 143
    invoke-virtual {v11, v7, v5, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 144
    check-cast v3, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 145
    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 146
    check-cast v15, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 147
    check-cast v6, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 148
    check-cast v8, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 149
    check-cast v10, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 150
    check-cast v12, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 151
    check-cast v14, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 152
    check-cast v9, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 153
    check-cast v13, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 154
    check-cast v11, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    move-object/from16 v0, p0

    .line 157
    iget-object v1, v0, Lcom/perm/kate/MainTabletTabsFragment;->paneButtons:Ljava/util/ArrayList;

    move-object/from16 v2, p1

    const v3, 0x7f090022

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v1, v0, Lcom/perm/kate/MainTabletTabsFragment;->paneButtons:Ljava/util/ArrayList;

    const v3, 0x7f09001d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v1, v0, Lcom/perm/kate/MainTabletTabsFragment;->paneButtons:Ljava/util/ArrayList;

    const v3, 0x7f090017

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v1, v0, Lcom/perm/kate/MainTabletTabsFragment;->paneButtons:Ljava/util/ArrayList;

    const v3, 0x7f090011

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v1, v0, Lcom/perm/kate/MainTabletTabsFragment;->paneButtons:Ljava/util/ArrayList;

    const v3, 0x7f090027

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v1, v0, Lcom/perm/kate/MainTabletTabsFragment;->paneButtons:Ljava/util/ArrayList;

    const v3, 0x7f090018

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v1, v0, Lcom/perm/kate/MainTabletTabsFragment;->paneButtons:Ljava/util/ArrayList;

    const v3, 0x7f09000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v1, v0, Lcom/perm/kate/MainTabletTabsFragment;->paneButtons:Ljava/util/ArrayList;

    const v3, 0x7f090016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v1, v0, Lcom/perm/kate/MainTabletTabsFragment;->paneButtons:Ljava/util/ArrayList;

    const v3, 0x7f09002e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f090022

    .line 167
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/MainTabletTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 37
    check-cast p1, Lcom/perm/kate/TabListener;

    iput-object p1, p0, Lcom/perm/kate/MainTabletTabsFragment;->listener:Lcom/perm/kate/TabListener;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c00ab

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09022c

    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/perm/kate/MainTabletTabsFragment;->messagesCounter:Landroid/widget/TextView;

    .line 27
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object p3

    sget-boolean v1, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    invoke-virtual {p3, v1, v0}, Lcom/perm/kate/theme/ColorTheme;->getNotifyBg(ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/perm/kate/MainTabletTabsFragment;->setupButtons(Landroid/view/View;)V

    .line 29
    sget-object p2, Lcom/perm/kate/KApplication;->newMessageCounter:Lcom/perm/kate/Counter;

    iget-object p3, p0, Lcom/perm/kate/MainTabletTabsFragment;->messagesCounterListener:Lcom/perm/kate/Counter$CounterListener;

    iput-object p3, p2, Lcom/perm/kate/Counter;->listener:Lcom/perm/kate/Counter$CounterListener;

    .line 30
    invoke-virtual {p2}, Lcom/perm/kate/Counter;->getValue()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/perm/kate/MainTabletTabsFragment;->displayMessagesCounter(I)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 200
    sget-object v0, Lcom/perm/kate/KApplication;->newMessageCounter:Lcom/perm/kate/Counter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/perm/kate/Counter;->listener:Lcom/perm/kate/Counter$CounterListener;

    .line 201
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public selectTab(Ljava/lang/String;)V
    .locals 2

    const-string v0, "PostsNewsActivityTab"

    .line 181
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/MainTabletTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    :cond_0
    const-string v0, "FriendsTab"

    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/MainTabletTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    :cond_1
    const-string v0, "MessagesTab"

    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/MainTabletTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    :cond_2
    const-string v0, "ProfileTab"

    .line 187
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 188
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090026

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perm/kate/MainTabletTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method setActivePaneButton(Landroid/view/View;)V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/perm/kate/MainTabletTabsFragment;->paneButtons:Ljava/util/ArrayList;

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

    .line 173
    invoke-virtual {v1, v2}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 175
    invoke-virtual {v1, v2}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
