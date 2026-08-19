.class public Lcom/perm/kate/RequestsToGroupListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RequestsToGroupListAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private addClickListener:Landroid/view/View$OnClickListener;

.field private group_id:J

.field private keepClickListener:Landroid/view/View$OnClickListener;

.field private users:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(JLandroid/app/Activity;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->users:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Lcom/perm/kate/RequestsToGroupListAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/RequestsToGroupListAdapter$1;-><init>(Lcom/perm/kate/RequestsToGroupListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->addClickListener:Landroid/view/View$OnClickListener;

    .line 128
    new-instance v0, Lcom/perm/kate/RequestsToGroupListAdapter$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/RequestsToGroupListAdapter$2;-><init>(Lcom/perm/kate/RequestsToGroupListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->keepClickListener:Landroid/view/View$OnClickListener;

    .line 25
    iput-wide p1, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->group_id:J

    .line 26
    iput-object p3, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/RequestsToGroupListAdapter;J)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/RequestsToGroupListAdapter;->groupsApproveRequest(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/RequestsToGroupListAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->users:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/RequestsToGroupListAdapter;J)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/RequestsToGroupListAdapter;->groupsRemoveUser(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/RequestsToGroupListAdapter;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->group_id:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/perm/kate/RequestsToGroupListAdapter;)Landroid/app/Activity;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method private groupsApproveRequest(J)V
    .locals 1

    .line 148
    new-instance v0, Lcom/perm/kate/RequestsToGroupListAdapter$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/RequestsToGroupListAdapter$3;-><init>(Lcom/perm/kate/RequestsToGroupListAdapter;J)V

    .line 153
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private groupsRemoveUser(J)V
    .locals 1

    .line 157
    new-instance v0, Lcom/perm/kate/RequestsToGroupListAdapter$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/RequestsToGroupListAdapter$4;-><init>(Lcom/perm/kate/RequestsToGroupListAdapter;J)V

    .line 162
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setButtonsBg(Landroid/view/View;)V
    .locals 2

    .line 107
    sget-boolean v0, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-eqz v0, :cond_0

    const v0, 0x7f090135

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/theme/ColorTheme;->getButtonBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f090144

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getButtonBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayData(Ljava/util/ArrayList;)V
    .locals 1

    if-nez p1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->users:Ljava/util/ArrayList;

    .line 34
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->users:Ljava/util/ArrayList;

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
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 71
    :try_start_0
    iget-object p2, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->activity:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    invoke-virtual {p2, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v2, 0x7f0c012d

    .line 72
    invoke-virtual {p2, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    .line 75
    :cond_0
    :goto_0
    :try_start_1
    iget-object p3, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/User;

    const p3, 0x7f0903e6

    .line 76
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p3, 0x7f090188

    .line 80
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Landroid/widget/ImageView;

    .line 81
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v1

    iget-object v2, p1, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const/4 v4, 0x1

    const/16 v5, 0x5a

    .line 82
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v6

    const/4 v7, 0x1

    .line 81
    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    const p3, 0x7f09009a

    .line 83
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v1, p1, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f0901c4

    .line 84
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    .line 85
    iget-wide v1, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->group_id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 86
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const p1, 0x7f090064

    .line 88
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f09007d

    .line 89
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v2, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->addClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v2, p0, Lcom/perm/kate/RequestsToGroupListAdapter;->keepClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 93
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f090135

    .line 94
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f090144

    .line 95
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 96
    invoke-direct {p0, p2}, Lcom/perm/kate/RequestsToGroupListAdapter;->setButtonsBg(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    return-object p2

    :catch_1
    move-exception p1

    move-object v1, p2

    .line 100
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
