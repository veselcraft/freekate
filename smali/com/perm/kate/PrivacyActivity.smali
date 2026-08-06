.class public Lcom/perm/kate/PrivacyActivity;
.super Lcom/perm/kate/BaseActivity;
.source "PrivacyActivity.java"


# instance fields
.field private callback:Lcom/perm/kate/session/Callback;

.field private itemClickListener:Landroid/view/View$OnClickListener;

.field private items_container:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 48
    new-instance v0, Lcom/perm/kate/PrivacyActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PrivacyActivity$2;-><init>(Lcom/perm/kate/PrivacyActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PrivacyActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 241
    new-instance v0, Lcom/perm/kate/PrivacyActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/PrivacyActivity$4;-><init>(Lcom/perm/kate/PrivacyActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PrivacyActivity;->itemClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PrivacyActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PrivacyActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/perm/kate/PrivacyActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/PrivacyActivity;Lcom/perm/kate/api/PrivacySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PrivacyActivity;
    .param p1, "x1"    # Lcom/perm/kate/api/PrivacySettings;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/PrivacyActivity;->displayDataInUiThread(Lcom/perm/kate/api/PrivacySettings;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/PrivacyActivity;Lcom/perm/kate/api/PrivacySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PrivacyActivity;
    .param p1, "x1"    # Lcom/perm/kate/api/PrivacySettings;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/PrivacyActivity;->displayData(Lcom/perm/kate/api/PrivacySettings;)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/PrivacyActivity;Lcom/perm/kate/api/PrivacyItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PrivacyActivity;
    .param p1, "x1"    # Lcom/perm/kate/api/PrivacyItem;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/PrivacyActivity;->showPrivacyItemActivity(Lcom/perm/kate/api/PrivacyItem;)V

    return-void
.end method

.method private displayData(Lcom/perm/kate/api/PrivacySettings;)V
    .locals 7
    .param p1, "ps"    # Lcom/perm/kate/api/PrivacySettings;

    .prologue
    .line 95
    iget-object v2, p0, Lcom/perm/kate/PrivacyActivity;->items_container:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 96
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/perm/kate/api/PrivacySettings;->settings:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/perm/kate/api/PrivacySettings;->sections:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 105
    :cond_0
    return-void

    .line 98
    :cond_1
    iget-object v2, p1, Lcom/perm/kate/api/PrivacySettings;->sections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/PrivacySection;

    .line 99
    .local v1, "section":Lcom/perm/kate/api/PrivacySection;
    iget-object v3, p0, Lcom/perm/kate/PrivacyActivity;->items_container:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lcom/perm/kate/api/PrivacySection;->title:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/perm/kate/PrivacyActivity;->getSectionTextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {p0}, Lcom/perm/kate/PrivacyActivity;->getSectionLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v3, p1, Lcom/perm/kate/api/PrivacySettings;->settings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/PrivacyItem;

    .line 101
    .local v0, "pi":Lcom/perm/kate/api/PrivacyItem;
    iget-object v4, v0, Lcom/perm/kate/api/PrivacyItem;->section:Ljava/lang/String;

    iget-object v5, v1, Lcom/perm/kate/api/PrivacySection;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 102
    iget-object v4, p0, Lcom/perm/kate/PrivacyActivity;->items_container:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/perm/kate/PrivacyActivity;->getPrivacyItemView(Lcom/perm/kate/api/PrivacyItem;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-direct {p0}, Lcom/perm/kate/PrivacyActivity;->getPrivacyItemLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private displayDataInUiThread(Lcom/perm/kate/api/PrivacySettings;)V
    .locals 1
    .param p1, "ps"    # Lcom/perm/kate/api/PrivacySettings;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/perm/kate/PrivacyActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 86
    :cond_0
    new-instance v0, Lcom/perm/kate/PrivacyActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/PrivacyActivity$3;-><init>(Lcom/perm/kate/PrivacyActivity;Lcom/perm/kate/api/PrivacySettings;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/PrivacyActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private getPrivacyItemLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 215
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 216
    .local v0, "ll":Landroid/widget/LinearLayout$LayoutParams;
    return-object v0
.end method

.method private getPrivacyItemView(Lcom/perm/kate/api/PrivacyItem;)Landroid/widget/LinearLayout;
    .locals 7
    .param p1, "pi"    # Lcom/perm/kate/api/PrivacyItem;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 123
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 124
    .local v0, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 125
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 126
    .local v1, "tv":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/perm/kate/PrivacyActivity;->getTextColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v1, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 128
    iget-object v3, p1, Lcom/perm/kate/api/PrivacyItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-direct {p0, v4}, Lcom/perm/kate/PrivacyActivity;->getPrivacyTextLayoutParams(Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 131
    .local v2, "tv2":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/perm/kate/PrivacyActivity;->getValeTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v2, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 133
    iget-object v3, p1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/perm/kate/PrivacyActivity;->getTextByValue(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-direct {p0, v5}, Lcom/perm/kate/PrivacyActivity;->getPrivacyTextLayoutParams(Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    invoke-static {v4}, Lcom/perm/kate/MessageAdapterCore;->getBgByTheme(Z)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 137
    iget-object v3, p0, Lcom/perm/kate/PrivacyActivity;->itemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 139
    return-object v0
.end method

.method private getPrivacyTextLayoutParams(Z)Landroid/widget/LinearLayout$LayoutParams;
    .locals 5
    .param p1, "value"    # Z

    .prologue
    const/4 v4, 0x0

    .line 220
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 221
    .local v0, "ll":Landroid/widget/LinearLayout$LayoutParams;
    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v1

    .line 222
    .local v1, "margin":I
    if-eqz p1, :cond_0

    .line 223
    invoke-virtual {v0, v1, v4, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 226
    :goto_0
    return-object v0

    .line 225
    :cond_0
    invoke-virtual {v0, v1, v1, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private getSectionLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .prologue
    .line 116
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 117
    .local v0, "ll":Landroid/widget/LinearLayout$LayoutParams;
    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v1

    .line 118
    .local v1, "margin":I
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 119
    return-object v0
.end method

.method private getSectionTextView(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 108
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, "tv":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/perm/kate/PrivacyActivity;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    const/4 v1, 0x2

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 111
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    return-object v0
.end method

.method static getTextByValue(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/16 v12, 0x0

    const v10, 0x7f07038e

    .line 143
    const-string v3, ""

    .line 144
    .local v3, "res":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 145
    .local v7, "type":Ljava/lang/String;
    const-string v9, "all"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 146
    sget-object v9, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v10, 0x7f07038c

    invoke-virtual {v9, v10}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 186
    :cond_0
    :goto_0
    const-string v5, ""

    .line 187
    .local v5, "str_except":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 188
    .local v6, "str_id":Ljava/lang/String;
    invoke-static {v6}, Lcom/perm/utils/PrivacyHelper;->isType(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 190
    invoke-static {v6}, Lcom/perm/utils/PrivacyHelper;->isExcept(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 192
    invoke-static {v6}, Lcom/perm/utils/PrivacyHelper;->getId0(Ljava/lang/String;)J

    move-result-wide v0

    .line 193
    .local v0, "id":J
    invoke-static {v6}, Lcom/perm/utils/PrivacyHelper;->isList(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 194
    long-to-int v10, v0

    invoke-static {v10}, Lcom/perm/utils/FriendsListsHelper;->getFriendsListName(I)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "listName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 196
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 197
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 198
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 147
    .end local v0    # "id":J
    .end local v2    # "listName":Ljava/lang/String;
    .end local v5    # "str_except":Ljava/lang/String;
    .end local v6    # "str_id":Ljava/lang/String;
    :cond_3
    const-string v9, "friends"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 148
    sget-object v9, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v10, 0x7f07038d

    invoke-virtual {v9, v10}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 149
    :cond_4
    const-string v9, "friends_of_friends"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 150
    sget-object v9, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v9, v10}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 151
    :cond_5
    const-string v9, "friends_of_friends_only"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 153
    sget-object v9, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v9, v10}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 154
    :cond_6
    const-string v9, "only_me"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 155
    sget-object v9, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v10, 0x7f070390

    invoke-virtual {v9, v10}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 156
    :cond_7
    const-string v9, "nobody"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 157
    sget-object v9, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v10, 0x7f07038f

    invoke-virtual {v9, v10}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 159
    :cond_8
    sget-object v9, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v10, 0x7f070392

    invoke-virtual {v9, v10}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 160
    const-string v4, ""

    .line 161
    .local v4, "str_allowed":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 162
    .restart local v6    # "str_id":Ljava/lang/String;
    invoke-static {v6}, Lcom/perm/utils/PrivacyHelper;->isType(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 164
    invoke-static {v6}, Lcom/perm/utils/PrivacyHelper;->isExcept(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 166
    invoke-static {v6}, Lcom/perm/utils/PrivacyHelper;->getId0(Ljava/lang/String;)J

    move-result-wide v0

    .line 167
    .restart local v0    # "id":J
    invoke-static {v6}, Lcom/perm/utils/PrivacyHelper;->isList(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 168
    long-to-int v10, v0

    invoke-static {v10}, Lcom/perm/utils/FriendsListsHelper;->getFriendsListName(I)Ljava/lang/String;

    move-result-object v2

    .line 169
    .restart local v2    # "listName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 170
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_a

    .line 171
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 174
    .end local v2    # "listName":Ljava/lang/String;
    :cond_b
    cmp-long v10, v0, v12

    if-lez v10, :cond_9

    .line 175
    sget-object v10, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v10, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v8

    .line 176
    .local v8, "user":Lcom/perm/kate/api/User;
    if-eqz v8, :cond_9

    .line 177
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_c

    .line 178
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 179
    :cond_c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 183
    .end local v0    # "id":J
    .end local v6    # "str_id":Ljava/lang/String;
    .end local v8    # "user":Lcom/perm/kate/api/User;
    :cond_d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 184
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 200
    .end local v4    # "str_allowed":Ljava/lang/String;
    .restart local v0    # "id":J
    .restart local v5    # "str_except":Ljava/lang/String;
    .restart local v6    # "str_id":Ljava/lang/String;
    :cond_e
    cmp-long v10, v0, v12

    if-lez v10, :cond_1

    .line 201
    sget-object v10, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v10, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v8

    .line 202
    .restart local v8    # "user":Lcom/perm/kate/api/User;
    if-eqz v8, :cond_1

    .line 203
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_f

    .line 204
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 205
    :cond_f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 209
    .end local v0    # "id":J
    .end local v6    # "str_id":Ljava/lang/String;
    .end local v8    # "user":Lcom/perm/kate/api/User;
    :cond_10
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_11

    .line 210
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v11, 0x7f07009d

    invoke-virtual {v10, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 211
    :cond_11
    return-object v3
.end method

.method private getTextColor()I
    .locals 4

    .prologue
    .line 230
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 231
    .local v0, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/perm/kate/PrivacyActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f010139

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 232
    iget v1, v0, Landroid/util/TypedValue;->data:I

    return v1
.end method

.method private getValeTextColor()I
    .locals 4

    .prologue
    .line 236
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 237
    .local v0, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/perm/kate/PrivacyActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f01013d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 238
    iget v1, v0, Landroid/util/TypedValue;->data:I

    return v1
.end method

.method private showPrivacyItemActivity(Lcom/perm/kate/api/PrivacyItem;)V
    .locals 2
    .param p1, "pi"    # Lcom/perm/kate/api/PrivacyItem;

    .prologue
    .line 251
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PrivacyItemActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "privacy_item"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 253
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/PrivacyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 254
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 260
    invoke-super {p0, p1, p2, p3}, Lcom/perm/kate/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 261
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/perm/kate/PrivacyActivity;->refreshInThread()V

    .line 263
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f0300e4

    invoke-virtual {p0, v0}, Lcom/perm/kate/PrivacyActivity;->setContentView(I)V

    .line 27
    const v0, 0x7f070391

    invoke-virtual {p0, v0}, Lcom/perm/kate/PrivacyActivity;->setHeaderTitle(I)V

    .line 28
    invoke-virtual {p0}, Lcom/perm/kate/PrivacyActivity;->setupRefreshButton()V

    .line 29
    const v0, 0x7f0e02c6

    invoke-virtual {p0, v0}, Lcom/perm/kate/PrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/PrivacyActivity;->items_container:Landroid/widget/LinearLayout;

    .line 30
    invoke-virtual {p0}, Lcom/perm/kate/PrivacyActivity;->refreshInThread()V

    .line 31
    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/perm/kate/PrivacyActivity;->refreshInThread()V

    .line 36
    return-void
.end method

.method public refreshInThread()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/perm/kate/PrivacyActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PrivacyActivity$1;-><init>(Lcom/perm/kate/PrivacyActivity;)V

    .line 45
    invoke-virtual {v0}, Lcom/perm/kate/PrivacyActivity$1;->start()V

    .line 46
    return-void
.end method
