.class public Lcom/perm/kate/InterestingPagesAdapter;
.super Landroid/widget/BaseAdapter;
.source "InterestingPagesAdapter.java"


# instance fields
.field private activity:Ljava/lang/ref/WeakReference;

.field private items:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/perm/kate/api/InterestingPages;Landroid/app/Activity;)V
    .locals 5

    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/InterestingPagesAdapter;->items:Ljava/util/ArrayList;

    .line 26
    iget-object v0, p1, Lcom/perm/kate/api/InterestingPages;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 27
    iget-object v2, p0, Lcom/perm/kate/InterestingPagesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/InterestingPagesAdapter;->items:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/perm/kate/api/InterestingPages;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 29
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/perm/kate/InterestingPagesAdapter;->activity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/perm/kate/InterestingPagesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/perm/kate/InterestingPagesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    move-object/from16 v0, p0

    const v1, 0x7f090188

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 52
    iget-object v3, v0, Lcom/perm/kate/InterestingPagesAdapter;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v4, 0x7f0c012c

    move-object/from16 v5, p3

    .line 53
    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 55
    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 57
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    .line 58
    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v6

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    invoke-static {v7, v8}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v9

    const-wide/high16 v10, 0x402e000000000000L    # 15.0

    invoke-static {v10, v11}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v10

    invoke-static {v7, v8}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v7

    invoke-virtual {v5, v6, v9, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    .line 59
    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v8

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 60
    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 61
    invoke-virtual {v4}, Landroid/widget/ImageView;->requestLayout()V

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    .line 64
    :cond_1
    :goto_0
    iget-object v4, v0, Lcom/perm/kate/InterestingPagesAdapter;->items:Ljava/util/ArrayList;

    move/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 65
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v6, 0x7f0903e6

    .line 66
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 67
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v7, 0x1

    const-wide/16 v14, 0x0

    cmp-long v8, v4, v14

    if-lez v8, :cond_2

    .line 70
    sget-object v8, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v8, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 72
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v8, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v8, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v7

    iget-object v8, v8, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const/4 v10, 0x1

    const/16 v11, 0x5a

    .line 74
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v12

    const/4 v13, 0x1

    move-object v9, v1

    .line 73
    invoke-virtual/range {v7 .. v13}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    const/4 v7, 0x0

    :cond_2
    cmp-long v8, v4, v14

    if-gez v8, :cond_3

    .line 80
    sget-object v8, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    neg-long v4, v4

    invoke-virtual {v8, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 82
    iget-object v5, v4, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v7

    iget-object v8, v4, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    const/4 v10, 0x1

    const/16 v11, 0x5a

    .line 84
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v12

    const/4 v13, 0x1

    move-object v9, v1

    .line 83
    invoke-virtual/range {v7 .. v13}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    goto :goto_1

    :cond_3
    move v2, v7

    :goto_1
    if-eqz v2, :cond_4

    const-string v2, ""

    .line 89
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    return-object v3
.end method
