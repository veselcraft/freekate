.class public Lcom/perm/kate/GroupManagersAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupManagersAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private profileClickListener:Landroid/view/View$OnClickListener;

.field private users:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/GroupManagersAdapter;->users:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Lcom/perm/kate/GroupManagersAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupManagersAdapter$1;-><init>(Lcom/perm/kate/GroupManagersAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/GroupManagersAdapter;->profileClickListener:Landroid/view/View$OnClickListener;

    .line 23
    iput-object p1, p0, Lcom/perm/kate/GroupManagersAdapter;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GroupManagersAdapter;)Landroid/app/Activity;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/perm/kate/GroupManagersAdapter;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method private getStringRole(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "creator"

    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object p1, p0, Lcom/perm/kate/GroupManagersAdapter;->activity:Landroid/app/Activity;

    const v0, 0x7f0f01e1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "administrator"

    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object p1, p0, Lcom/perm/kate/GroupManagersAdapter;->activity:Landroid/app/Activity;

    const v0, 0x7f0f0189

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "editor"

    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-object p1, p0, Lcom/perm/kate/GroupManagersAdapter;->activity:Landroid/app/Activity;

    const v0, 0x7f0f01f0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "moderator"

    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 127
    iget-object p1, p0, Lcom/perm/kate/GroupManagersAdapter;->activity:Landroid/app/Activity;

    const v0, 0x7f0f023f

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public displayData(Ljava/util/ArrayList;)V
    .locals 2

    if-nez p1, :cond_0

    .line 28
    iget-object p1, p0, Lcom/perm/kate/GroupManagersAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/perm/kate/GroupManagersAdapter;->users:Ljava/util/ArrayList;

    .line 31
    :goto_0
    new-instance p1, Lcom/perm/kate/api/User;

    invoke-direct {p1}, Lcom/perm/kate/api/User;-><init>()V

    .line 32
    iget-object v0, p0, Lcom/perm/kate/GroupManagersAdapter;->activity:Landroid/app/Activity;

    const v1, 0x7f0f0277

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    const-string v0, ""

    .line 33
    iput-object v0, p1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    const-string v0, "add"

    .line 34
    iput-object v0, p1, Lcom/perm/kate/api/User;->role:Ljava/lang/String;

    .line 35
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    .line 36
    iget-object v0, p0, Lcom/perm/kate/GroupManagersAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/perm/kate/GroupManagersAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/perm/kate/GroupManagersAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/GroupManagersAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/perm/kate/GroupManagersAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const v0, 0x7f090188

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 74
    :try_start_0
    iget-object p2, p0, Lcom/perm/kate/GroupManagersAdapter;->activity:Landroid/app/Activity;

    const-string v3, "layout_inflater"

    invoke-virtual {p2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v3, 0x7f0c004a

    .line 75
    invoke-virtual {p2, v3, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :try_start_1
    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 78
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 79
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    .line 80
    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v6

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v7

    const-wide/high16 v8, 0x402e000000000000L    # 15.0

    invoke-static {v8, v9}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v8

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v4

    invoke-virtual {v3, v6, v7, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    .line 81
    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 82
    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 83
    invoke-virtual {p3}, Landroid/widget/ImageView;->requestLayout()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_4

    .line 87
    :cond_0
    :goto_0
    iget-object p3, p0, Lcom/perm/kate/GroupManagersAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/User;

    const p3, 0x7f0903e6

    .line 88
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Landroid/widget/ImageView;

    .line 93
    iget-object p3, p1, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v0, "add"

    if-eqz p3, :cond_1

    .line 94
    :try_start_2
    iget-object p3, p0, Lcom/perm/kate/GroupManagersAdapter;->profileClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 96
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v3

    iget-object v4, p1, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const/4 v6, 0x1

    const/16 v7, 0x5a

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual/range {v3 .. v9}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object p3, p1, Lcom/perm/kate/api/User;->role:Ljava/lang/String;

    if-eqz p3, :cond_2

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const p3, 0x7f0801cd

    .line 100
    invoke-virtual {v5, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 102
    :cond_2
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    const p3, 0x7f09009a

    .line 104
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v1, p1, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/16 v3, 0x8

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f090364

    .line 105
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 106
    iget-object v1, p1, Lcom/perm/kate/api/User;->role:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 107
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object p1, p1, Lcom/perm/kate/api/User;->role:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/perm/kate/GroupManagersAdapter;->getStringRole(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 110
    :cond_4
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    return-object p2

    :catch_1
    move-exception p1

    move-object v1, p2

    .line 113
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
