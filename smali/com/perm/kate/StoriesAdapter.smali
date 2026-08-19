.class public Lcom/perm/kate/StoriesAdapter;
.super Landroid/widget/BaseAdapter;
.source "StoriesAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private items:Ljava/util/ArrayList;

.field user_photo_OnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 89
    new-instance v0, Lcom/perm/kate/StoriesAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/StoriesAdapter$1;-><init>(Lcom/perm/kate/StoriesAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/StoriesAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    .line 21
    iput-object p1, p0, Lcom/perm/kate/StoriesAdapter;->items:Ljava/util/ArrayList;

    .line 22
    iput-object p2, p0, Lcom/perm/kate/StoriesAdapter;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/StoriesAdapter;)Landroid/app/Activity;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/perm/kate/StoriesAdapter;->activity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public Destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/perm/kate/StoriesAdapter;->activity:Landroid/app/Activity;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/perm/kate/StoriesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/perm/kate/StoriesAdapter;->items:Ljava/util/ArrayList;

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
    .locals 22

    move-object/from16 v0, p0

    if-nez p2, :cond_0

    .line 44
    iget-object v1, v0, Lcom/perm/kate/StoriesAdapter;->activity:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0c0121

    const/4 v3, 0x0

    move-object/from16 v4, p3

    .line 45
    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    .line 49
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/perm/kate/StoriesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Story;

    const v3, 0x7f09017f

    .line 51
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 53
    iget-object v4, v2, Lcom/perm/kate/api/Story;->photo:Lcom/perm/kate/api/Photo;

    const-string v14, ""

    if-eqz v4, :cond_1

    .line 54
    iget-object v4, v4, Lcom/perm/kate/api/Photo;->src_256:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v4, v14

    .line 55
    :goto_1
    iget-object v5, v2, Lcom/perm/kate/api/Story;->video:Lcom/perm/kate/api/Video;

    if-eqz v5, :cond_2

    .line 56
    iget-object v4, v5, Lcom/perm/kate/api/Video;->image_big:Ljava/lang/String;

    :cond_2
    move-object v5, v4

    .line 57
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v4

    const/4 v7, 0x1

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    invoke-static {v8, v9}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v8

    const-wide v9, 0x4060400000000000L    # 130.0

    invoke-static {v9, v10}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v9

    const v10, 0x7f080208

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v3

    invoke-virtual/range {v4 .. v13}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIIZZZ)V

    .line 61
    iget-wide v4, v2, Lcom/perm/kate/api/Story;->owner_id:J

    const-wide/16 v6, 0x0

    const-string v8, " "

    cmp-long v9, v4, v6

    if-lez v9, :cond_4

    .line 62
    sget-object v6, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v6, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 64
    iget-object v5, v4, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 65
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v14, v5

    goto :goto_2

    :cond_3
    move-object v4, v14

    goto :goto_2

    .line 68
    :cond_4
    sget-object v6, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    neg-long v4, v4

    invoke-virtual {v6, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 70
    iget-object v14, v4, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    .line 71
    iget-object v4, v4, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    :goto_2
    move-object/from16 v16, v14

    move-object v14, v4

    goto :goto_3

    :cond_5
    move-object/from16 v16, v14

    :goto_3
    const v4, 0x7f09004e

    .line 74
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 75
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v15

    const/16 v18, 0x1

    const/16 v19, 0x5a

    .line 76
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v20

    const/16 v21, 0x1

    move-object/from16 v17, v4

    .line 75
    invoke-virtual/range {v15 .. v21}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 77
    iget-object v5, v0, Lcom/perm/kate/StoriesAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f090186

    .line 78
    iget-wide v6, v2, Lcom/perm/kate/api/Story;->owner_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/perm/kate/StoriesAdapter;->activity:Landroid/app/Activity;

    const v6, 0x7f0f0236

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0418\u0441\u0442\u043e\u0440\u0438\u044f \u043e\u0442 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object v1
.end method
