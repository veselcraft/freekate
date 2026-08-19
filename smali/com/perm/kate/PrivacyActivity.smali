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

    .line 19
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 48
    new-instance v0, Lcom/perm/kate/PrivacyActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PrivacyActivity$2;-><init>(Lcom/perm/kate/PrivacyActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PrivacyActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 257
    new-instance v0, Lcom/perm/kate/PrivacyActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/PrivacyActivity$4;-><init>(Lcom/perm/kate/PrivacyActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PrivacyActivity;->itemClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PrivacyActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/perm/kate/PrivacyActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/PrivacyActivity;Lcom/perm/kate/api/PrivacySettings;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/PrivacyActivity;->displayDataInUiThread(Lcom/perm/kate/api/PrivacySettings;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/PrivacyActivity;Lcom/perm/kate/api/PrivacySettings;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/PrivacyActivity;->displayData(Lcom/perm/kate/api/PrivacySettings;)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/PrivacyActivity;Lcom/perm/kate/api/PrivacyItem;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/PrivacyActivity;->showPrivacyItemActivity(Lcom/perm/kate/api/PrivacyItem;)V

    return-void
.end method

.method private displayData(Lcom/perm/kate/api/PrivacySettings;)V
    .locals 6

    .line 101
    iget-object v0, p0, Lcom/perm/kate/PrivacyActivity;->items_container:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-eqz p1, :cond_3

    .line 102
    iget-object v0, p1, Lcom/perm/kate/api/PrivacySettings;->settings:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/perm/kate/api/PrivacySettings;->sections:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    .line 104
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/PrivacySection;

    .line 105
    iget-object v2, p0, Lcom/perm/kate/PrivacyActivity;->items_container:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lcom/perm/kate/api/PrivacySection;->title:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/perm/kate/PrivacyActivity;->getSectionTextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-direct {p0}, Lcom/perm/kate/PrivacyActivity;->getSectionLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v2, p1, Lcom/perm/kate/api/PrivacySettings;->settings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/PrivacyItem;

    .line 107
    iget-object v4, v3, Lcom/perm/kate/api/PrivacyItem;->section:Ljava/lang/String;

    iget-object v5, v1, Lcom/perm/kate/api/PrivacySection;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 108
    iget-object v4, p0, Lcom/perm/kate/PrivacyActivity;->items_container:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3}, Lcom/perm/kate/PrivacyActivity;->getPrivacyItemView(Lcom/perm/kate/api/PrivacyItem;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-direct {p0}, Lcom/perm/kate/PrivacyActivity;->getPrivacyItemLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private displayDataInUiThread(Lcom/perm/kate/api/PrivacySettings;)V
    .locals 1

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 92
    :cond_0
    new-instance v0, Lcom/perm/kate/PrivacyActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/PrivacyActivity$3;-><init>(Lcom/perm/kate/PrivacyActivity;Lcom/perm/kate/api/PrivacySettings;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getPrivacyItemLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 231
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private getPrivacyItemView(Lcom/perm/kate/api/PrivacyItem;)Landroid/widget/LinearLayout;
    .locals 6

    .line 129
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 130
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 131
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 132
    invoke-direct {p0}, Lcom/perm/kate/PrivacyActivity;->getTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x2

    const/high16 v4, 0x41880000    # 17.0f

    .line 133
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 134
    iget-object v4, p1, Lcom/perm/kate/api/PrivacyItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    .line 135
    invoke-direct {p0, v4}, Lcom/perm/kate/PrivacyActivity;->getPrivacyTextLayoutParams(Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 137
    invoke-direct {p0}, Lcom/perm/kate/PrivacyActivity;->getValeTextColor()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41700000    # 15.0f

    .line 138
    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 139
    iget-object v3, p1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/perm/kate/PrivacyActivity;->getTextByValue(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-direct {p0, v1}, Lcom/perm/kate/PrivacyActivity;->getPrivacyTextLayoutParams(Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    invoke-static {v4}, Lcom/perm/kate/MessageAdapterCore;->getBgByTheme(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 143
    iget-object v1, p0, Lcom/perm/kate/PrivacyActivity;->itemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method private getPrivacyTextLayoutParams(Z)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 236
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v1, 0x4030000000000000L    # 16.0

    .line 237
    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 239
    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :goto_0
    return-object v0
.end method

.method private getSectionLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 122
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v1, 0x4030000000000000L    # 16.0

    .line 123
    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v1

    const/4 v2, 0x0

    .line 124
    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method private getSectionTextView(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .line 114
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-direct {p0}, Lcom/perm/kate/PrivacyActivity;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x2

    const/high16 v2, 0x41b00000    # 22.0f

    .line 116
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 117
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static getTextByValue(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 12

    .line 149
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "all"

    .line 153
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, " "

    const-wide/16 v4, 0x0

    const-string v6, ": "

    const-string v7, ", "

    if-eqz v2, :cond_1

    .line 154
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f0f019c

    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_1
    const-string v2, "friends"

    .line 155
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 156
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f0f03fd

    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_2
    const-string v2, "friends_of_friends"

    .line 157
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v8, 0x7f0f03fe

    if-eqz v2, :cond_3

    .line 158
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    const-string v2, "hidden_friends_only"

    .line 159
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "\u0421\u043a\u0440\u044b\u0442\u044b\u0435 \u0434\u0440\u0443\u0437\u044c\u044f"

    goto/16 :goto_1

    :cond_4
    const-string v2, "friends_and_contacts"

    .line 161
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "\u0414\u0440\u0443\u0437\u044c\u044f \u0438 \u043a\u043e\u043d\u0442\u0430\u043a\u0442\u044b"

    goto/16 :goto_1

    :cond_5
    const-string v2, "friends_of_friends_only"

    .line 163
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 165
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    const-string v2, "only_me"

    .line 166
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 167
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f0f0400

    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    const-string v2, "nobody"

    .line 168
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 169
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f0f03ff

    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    const-string v2, "true"

    .line 170
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 171
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f0f0147

    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    const-string v2, "false"

    .line 172
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 173
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f0f0146

    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 175
    :cond_a
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f0f0402

    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v8, v1

    :cond_b
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 178
    invoke-static {v9}, Lcom/perm/utils/PrivacyHelper;->isType(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    goto :goto_0

    .line 180
    :cond_c
    invoke-static {v9}, Lcom/perm/utils/PrivacyHelper;->isExcept(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    goto :goto_0

    .line 182
    :cond_d
    invoke-static {v9}, Lcom/perm/utils/PrivacyHelper;->getId0(Ljava/lang/String;)J

    move-result-wide v10

    .line 183
    invoke-static {v9}, Lcom/perm/utils/PrivacyHelper;->isList(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    long-to-int v9, v10

    .line 184
    invoke-static {v9}, Lcom/perm/utils/FriendsListsHelper;->getFriendsListName(I)Ljava/lang/String;

    move-result-object v9

    .line 185
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 186
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_e

    .line 187
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 188
    :cond_e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_f
    cmp-long v9, v10, v4

    if-lez v9, :cond_b

    .line 191
    sget-object v9, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v9, v10, v11}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 193
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_10

    .line 194
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 195
    :cond_10
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 199
    :cond_11
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_12

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    :cond_12
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 204
    invoke-static {v2}, Lcom/perm/utils/PrivacyHelper;->isType(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    goto :goto_2

    .line 206
    :cond_14
    invoke-static {v2}, Lcom/perm/utils/PrivacyHelper;->isExcept(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_15

    goto :goto_2

    .line 208
    :cond_15
    invoke-static {v2}, Lcom/perm/utils/PrivacyHelper;->getId0(Ljava/lang/String;)J

    move-result-wide v8

    .line 209
    invoke-static {v2}, Lcom/perm/utils/PrivacyHelper;->isList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    long-to-int v2, v8

    .line 210
    invoke-static {v2}, Lcom/perm/utils/FriendsListsHelper;->getFriendsListName(I)Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_13

    .line 212
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_16

    .line 213
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    :cond_16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_17
    cmp-long v2, v8, v4

    if-lez v2, :cond_13

    .line 217
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2, v8, v9}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 219
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_18

    .line 220
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    :cond_18
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 225
    :cond_19
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1a

    .line 226
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f0f00d7

    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1a
    return-object v0
.end method

.method private getTextColor()I
    .locals 4

    .line 246
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 247
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f040048

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 248
    iget v0, v0, Landroid/util/TypedValue;->data:I

    return v0
.end method

.method private getValeTextColor()I
    .locals 4

    .line 252
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 253
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f040047

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 254
    iget v0, v0, Landroid/util/TypedValue;->data:I

    return v0
.end method

.method private showPrivacyItemActivity(Lcom/perm/kate/api/PrivacyItem;)V
    .locals 2

    .line 267
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PrivacyItemActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "privacy_item"

    .line 268
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 269
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 276
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/perm/kate/PrivacyActivity;->refreshInThread()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00ff

    .line 26
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0401

    .line 27
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 28
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    const p1, 0x7f09018f

    .line 29
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/perm/kate/PrivacyActivity;->items_container:Landroid/widget/LinearLayout;

    .line 30
    invoke-virtual {p0}, Lcom/perm/kate/PrivacyActivity;->refreshInThread()V

    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/perm/kate/PrivacyActivity;->refreshInThread()V

    return-void
.end method

.method public refreshInThread()V
    .locals 1

    .line 39
    new-instance v0, Lcom/perm/kate/PrivacyActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PrivacyActivity$1;-><init>(Lcom/perm/kate/PrivacyActivity;)V

    .line 45
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
