.class public abstract Lcom/perm/kate/BotKeyboardHelper;
.super Ljava/lang/Object;
.source "BotKeyboardHelper.java"


# direct methods
.method public static fillKeyboard(Lcom/perm/kate/api/BotKeyboard;Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 5

    .line 21
    iget-object v0, p0, Lcom/perm/kate/api/BotKeyboard;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 24
    iget-object v0, p0, Lcom/perm/kate/api/BotKeyboard;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 25
    invoke-static {p2}, Lcom/perm/kate/BotKeyboardHelper;->getBotButtonsScrollView(Landroid/content/Context;)Landroid/widget/ScrollView;

    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 27
    invoke-static {p2}, Lcom/perm/kate/BotKeyboardHelper;->getBotButtonsLL(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/perm/kate/api/BotKeyboard;->buttons:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 34
    invoke-static {p2}, Lcom/perm/kate/BotKeyboardHelper;->getBotButtonsLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/BotButton;

    .line 36
    invoke-static {v3, p2, p3}, Lcom/perm/kate/BotKeyboardHelper;->getBotButtonsWidget(Lcom/perm/kate/api/BotButton;Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/perm/kate/BotKeyboardHelper;->getLLLayoutParams(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 37
    :cond_1
    invoke-static {v2}, Lcom/perm/kate/BotKeyboardHelper;->getLLLayoutParams(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/BotButton;

    invoke-static {v0, p2, p3}, Lcom/perm/kate/BotKeyboardHelper;->getBotButtonsWidget(Lcom/perm/kate/api/BotButton;Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    invoke-static {v1}, Lcom/perm/kate/BotKeyboardHelper;->getLLLayoutParams(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static getBotButtonsBg(Ljava/lang/String;)I
    .locals 1

    const-string v0, "primary"

    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f08014a

    goto :goto_0

    :cond_0
    const p0, 0x7f08014b

    :goto_0
    return p0

    :cond_1
    const-string v0, "negative"

    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p0, 0x7f08013a

    return p0

    :cond_2
    const-string v0, "positive"

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const p0, 0x7f080149

    return p0

    :cond_3
    const p0, 0x7f0800de

    return p0
.end method

.method private static getBotButtonsLL(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 3

    .line 89
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 90
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 91
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private static getBotButtonsLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 1

    .line 97
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 98
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-object v0
.end method

.method private static getBotButtonsScrollView(Landroid/content/Context;)Landroid/widget/ScrollView;
    .locals 3

    .line 82
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v1, 0x406b800000000000L    # 220.0

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {p0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private static getBotButtonsTextColor(Ljava/lang/String;)I
    .locals 3

    const-string v0, "primary"

    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, -0x1000000

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    .line 72
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, -0x1

    :cond_0
    return v1

    :cond_1
    const-string v0, "negative"

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const-string v0, "positive"

    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method private static getBotButtonsWidget(Lcom/perm/kate/api/BotButton;Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 3

    const-string v0, "layout_inflater"

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0c003a

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 48
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090138

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/perm/kate/api/BotButton;->color:Ljava/lang/String;

    invoke-static {v1}, Lcom/perm/kate/BotKeyboardHelper;->getBotButtonsBg(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f090069

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 52
    iget-object v1, p0, Lcom/perm/kate/api/BotButton;->color:Ljava/lang/String;

    invoke-static {v1}, Lcom/perm/kate/BotKeyboardHelper;->getBotButtonsTextColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 53
    iget-object v1, p0, Lcom/perm/kate/api/BotButton;->action_label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 55
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public static getImageBotKeyboard(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const p0, 0x7f0801dc

    return p0

    .line 116
    :cond_0
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0801db

    goto :goto_0

    :cond_1
    const p0, 0x7f0801dd

    :goto_0
    return p0
.end method

.method public static getImageBotKeyboardActive()I
    .locals 1

    const v0, 0x7f0801dc

    return v0
.end method

.method private static getLLLayoutParams(I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 6

    .line 103
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    if-nez p0, :cond_0

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    .line 105
    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result p0

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v1

    invoke-virtual {v0, p0, v5, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne p0, v3, :cond_1

    .line 107
    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result p0

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v1

    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    invoke-virtual {v0, p0, v5, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 109
    :cond_1
    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result p0

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v4

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v1

    invoke-virtual {v0, p0, v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :goto_0
    return-object v0
.end method
