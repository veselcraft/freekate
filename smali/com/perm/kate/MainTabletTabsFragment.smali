.class public Lcom/perm/kate/MainTabletTabsFragment;
.super Landroid/support/v4/app/Fragment;
.source "MainTabletTabsFragment.java"

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
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MainTabletTabsFragment;->paneButtons:Ljava/util/ArrayList;

    .line 183
    new-instance v0, Lcom/perm/kate/MainTabletTabsFragment$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/MainTabletTabsFragment$11;-><init>(Lcom/perm/kate/MainTabletTabsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MainTabletTabsFragment;->messagesCounterListener:Lcom/perm/kate/Counter$CounterListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/MainTabletTabsFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MainTabletTabsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/perm/kate/MainTabletTabsFragment;->displayMessagesCounter(I)V

    return-void
.end method

.method private displayMessagesCounter(I)V
    .locals 2
    .param p1, "new_value"    # I

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/perm/kate/MainTabletTabsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MainTabletTabsFragment$12;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/MainTabletTabsFragment$12;-><init>(Lcom/perm/kate/MainTabletTabsFragment;I)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 207
    return-void
.end method

.method private setupButtons(Landroid/view/View;)V
    .locals 18
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 42
    const v16, 0x7f0e020e

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 43
    .local v8, "action_news":Landroid/view/View;
    new-instance v16, Lcom/perm/kate/MainTabletTabsFragment$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/perm/kate/MainTabletTabsFragment$1;-><init>(Lcom/perm/kate/MainTabletTabsFragment;)V

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v16, 0x7f0e020c

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 50
    .local v9, "action_profile":Landroid/view/View;
    new-instance v16, Lcom/perm/kate/MainTabletTabsFragment$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/perm/kate/MainTabletTabsFragment$2;-><init>(Lcom/perm/kate/MainTabletTabsFragment;)V

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v16, 0x7f0e0210

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 56
    .local v7, "action_messages":Landroid/view/View;
    new-instance v16, Lcom/perm/kate/MainTabletTabsFragment$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/perm/kate/MainTabletTabsFragment$3;-><init>(Lcom/perm/kate/MainTabletTabsFragment;)V

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v16, 0x7f0e0213

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 63
    .local v5, "action_friends":Landroid/view/View;
    new-instance v16, Lcom/perm/kate/MainTabletTabsFragment$4;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/perm/kate/MainTabletTabsFragment$4;-><init>(Lcom/perm/kate/MainTabletTabsFragment;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v16, 0x7f0e0218

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 71
    .local v3, "action_comments":Landroid/view/View;
    new-instance v16, Lcom/perm/kate/MainTabletTabsFragment$5;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/perm/kate/MainTabletTabsFragment$5;-><init>(Lcom/perm/kate/MainTabletTabsFragment;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v16, 0x7f0e0219

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 78
    .local v10, "action_replies":Landroid/view/View;
    new-instance v16, Lcom/perm/kate/MainTabletTabsFragment$6;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/perm/kate/MainTabletTabsFragment$6;-><init>(Lcom/perm/kate/MainTabletTabsFragment;)V

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v16, 0x7f0e021a

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 85
    .local v4, "action_faves":Landroid/view/View;
    new-instance v16, Lcom/perm/kate/MainTabletTabsFragment$7;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/perm/kate/MainTabletTabsFragment$7;-><init>(Lcom/perm/kate/MainTabletTabsFragment;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v16, 0x7f0e0215

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 92
    .local v6, "action_groups":Landroid/view/View;
    new-instance v16, Lcom/perm/kate/MainTabletTabsFragment$8;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/perm/kate/MainTabletTabsFragment$8;-><init>(Lcom/perm/kate/MainTabletTabsFragment;)V

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v16, 0x7f0e0216

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 99
    .local v2, "action_audio":Landroid/view/View;
    new-instance v16, Lcom/perm/kate/MainTabletTabsFragment$9;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/perm/kate/MainTabletTabsFragment$9;-><init>(Lcom/perm/kate/MainTabletTabsFragment;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v16, 0x7f0e0217

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 106
    .local v11, "action_video":Landroid/view/View;
    new-instance v16, Lcom/perm/kate/MainTabletTabsFragment$10;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/perm/kate/MainTabletTabsFragment$10;-><init>(Lcom/perm/kate/MainTabletTabsFragment;)V

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    sget-boolean v16, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-eqz v16, :cond_0

    .line 113
    const-wide/high16 v16, 0x4034000000000000L    # 20.0

    invoke-static/range {v16 .. v17}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v13

    .line 114
    .local v13, "left":I
    const-wide/high16 v16, 0x4026000000000000L    # 11.0

    invoke-static/range {v16 .. v17}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v15

    .line 115
    .local v15, "top":I
    const-wide/high16 v16, 0x4014000000000000L    # 5.0

    invoke-static/range {v16 .. v17}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v14

    .line 116
    .local v14, "right":I
    const-wide/high16 v16, 0x4026000000000000L    # 11.0

    invoke-static/range {v16 .. v17}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v12

    .line 117
    .local v12, "bottom":I
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    invoke-virtual {v8, v13, v15, v14, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 128
    invoke-virtual {v9, v13, v15, v14, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 129
    invoke-virtual {v7, v13, v15, v14, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 130
    invoke-virtual {v5, v13, v15, v14, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 131
    invoke-virtual {v3, v13, v15, v14, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 132
    invoke-virtual {v10, v13, v15, v14, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 133
    invoke-virtual {v4, v13, v15, v14, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 134
    invoke-virtual {v11, v13, v15, v14, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 135
    invoke-virtual {v6, v13, v15, v14, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 136
    invoke-virtual {v2, v13, v15, v14, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 137
    check-cast v8, Landroid/widget/TextView;

    .end local v8    # "action_news":Landroid/view/View;
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 138
    check-cast v9, Landroid/widget/TextView;

    .end local v9    # "action_profile":Landroid/view/View;
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 139
    check-cast v7, Landroid/widget/TextView;

    .end local v7    # "action_messages":Landroid/view/View;
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 140
    check-cast v5, Landroid/widget/TextView;

    .end local v5    # "action_friends":Landroid/view/View;
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 141
    check-cast v3, Landroid/widget/TextView;

    .end local v3    # "action_comments":Landroid/view/View;
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 142
    check-cast v10, Landroid/widget/TextView;

    .end local v10    # "action_replies":Landroid/view/View;
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 143
    check-cast v4, Landroid/widget/TextView;

    .end local v4    # "action_faves":Landroid/view/View;
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 144
    check-cast v11, Landroid/widget/TextView;

    .end local v11    # "action_video":Landroid/view/View;
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 145
    check-cast v6, Landroid/widget/TextView;

    .end local v6    # "action_groups":Landroid/view/View;
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 146
    check-cast v2, Landroid/widget/TextView;

    .end local v2    # "action_audio":Landroid/view/View;
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 149
    .end local v12    # "bottom":I
    .end local v13    # "left":I
    .end local v14    # "right":I
    .end local v15    # "top":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/MainTabletTabsFragment;->paneButtons:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const v17, 0x7f0e020e

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/MainTabletTabsFragment;->paneButtons:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const v17, 0x7f0e0210

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/MainTabletTabsFragment;->paneButtons:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const v17, 0x7f0e0213

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/MainTabletTabsFragment;->paneButtons:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const v17, 0x7f0e0218

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/MainTabletTabsFragment;->paneButtons:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const v17, 0x7f0e0219

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/MainTabletTabsFragment;->paneButtons:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const v17, 0x7f0e0215

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/MainTabletTabsFragment;->paneButtons:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const v17, 0x7f0e0216

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/MainTabletTabsFragment;->paneButtons:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const v17, 0x7f0e021a

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/MainTabletTabsFragment;->paneButtons:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const v17, 0x7f0e0217

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    const v16, 0x7f0e020e

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/perm/kate/MainTabletTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    .line 160
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 37
    check-cast p1, Lcom/perm/kate/TabListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/perm/kate/MainTabletTabsFragment;->listener:Lcom/perm/kate/TabListener;

    .line 38
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 25
    const v1, 0x7f03009e

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 26
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e0212

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/MainTabletTabsFragment;->messagesCounter:Landroid/widget/TextView;

    .line 27
    iget-object v1, p0, Lcom/perm/kate/MainTabletTabsFragment;->messagesCounter:Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v2

    sget-boolean v3, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    invoke-virtual {v2, v3, v4}, Lcom/perm/kate/theme/ColorTheme;->getNotifyBg(ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    invoke-direct {p0, v0}, Lcom/perm/kate/MainTabletTabsFragment;->setupButtons(Landroid/view/View;)V

    .line 29
    sget-object v1, Lcom/perm/kate/KApplication;->newMessageCounter:Lcom/perm/kate/Counter;

    iget-object v2, p0, Lcom/perm/kate/MainTabletTabsFragment;->messagesCounterListener:Lcom/perm/kate/Counter$CounterListener;

    iput-object v2, v1, Lcom/perm/kate/Counter;->listener:Lcom/perm/kate/Counter$CounterListener;

    .line 30
    sget-object v1, Lcom/perm/kate/KApplication;->newMessageCounter:Lcom/perm/kate/Counter;

    invoke-virtual {v1}, Lcom/perm/kate/Counter;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/perm/kate/MainTabletTabsFragment;->displayMessagesCounter(I)V

    .line 31
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 192
    sget-object v0, Lcom/perm/kate/KApplication;->newMessageCounter:Lcom/perm/kate/Counter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/perm/kate/Counter;->listener:Lcom/perm/kate/Counter$CounterListener;

    .line 193
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 194
    return-void
.end method

.method public selectTab(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 173
    const-string v0, "PostsNewsActivityTab"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/perm/kate/MainTabletTabsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e020e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/MainTabletTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    .line 175
    :cond_0
    const-string v0, "FriendsTab"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/perm/kate/MainTabletTabsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0213

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/MainTabletTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    .line 177
    :cond_1
    const-string v0, "MessagesTab"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {p0}, Lcom/perm/kate/MainTabletTabsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0210

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/MainTabletTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    .line 179
    :cond_2
    const-string v0, "ProfileTab"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    invoke-virtual {p0}, Lcom/perm/kate/MainTabletTabsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e020c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/MainTabletTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    .line 181
    :cond_3
    return-void
.end method

.method setActivePaneButton(Landroid/view/View;)V
    .locals 3
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 163
    iget-object v1, p0, Lcom/perm/kate/MainTabletTabsFragment;->paneButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 164
    .local v0, "view":Landroid/view/View;
    if-ne v0, p1, :cond_0

    .line 165
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    .line 167
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    .line 169
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method
