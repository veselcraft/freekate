.class public Lcom/perm/kate/LikesAdapter;
.super Landroid/widget/BaseAdapter;
.source "LikesAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private items:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/LikesAdapter;->items:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 27
    iget-object v1, p0, Lcom/perm/kate/LikesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    :cond_0
    iput-object p2, p0, Lcom/perm/kate/LikesAdapter;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public addItems(Ljava/util/ArrayList;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/perm/kate/LikesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 35
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/perm/kate/LikesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/perm/kate/LikesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/LikesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/perm/kate/LikesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const v0, 0x7f090188

    if-nez p2, :cond_0

    .line 61
    iget-object p2, p0, Lcom/perm/kate/LikesAdapter;->activity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v1, 0x7f0c012c

    const/4 v2, 0x0

    .line 62
    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 64
    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 66
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    .line 67
    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v6

    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    invoke-virtual {v1, v2, v5, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    .line 68
    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 69
    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 70
    invoke-virtual {p3}, Landroid/widget/ImageView;->requestLayout()V

    :cond_0
    const p3, 0x7f0903e6

    .line 74
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 75
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/ImageView;

    .line 79
    iget-object v0, p0, Lcom/perm/kate/LikesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 80
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_2

    .line 81
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v1, p1, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 85
    iget-wide v4, p1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v2

    move-object v0, p1

    move-object v1, v0

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 87
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gez v6, :cond_3

    .line 88
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    mul-long v4, v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 90
    iget-object v0, p1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 91
    iget-object v1, p1, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    .line 92
    iget-wide v4, p1, Lcom/perm/kate/api/Group;->gid:J

    mul-long v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v2

    move-object v0, p1

    move-object v4, v0

    .line 95
    :goto_1
    invoke-static {v0}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    const v8, 0x7f090239

    if-eqz v1, :cond_4

    .line 96
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v1

    const/4 p3, 0x1

    const/16 v5, 0x5a

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v6

    const/4 v7, 0x1

    move-object v2, v4

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 98
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p2, v8, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    const-string p1, ""

    .line 101
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {p2, v8, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 103
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2
    return-object p2
.end method
