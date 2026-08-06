.class public Lcom/perm/kate/LikesAdapter;
.super Landroid/widget/BaseAdapter;
.source "LikesAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 3
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/LikesAdapter;->items:Ljava/util/ArrayList;

    .line 25
    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 27
    .local v0, "id":Ljava/lang/Long;
    iget-object v2, p0, Lcom/perm/kate/LikesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    .end local v0    # "id":Ljava/lang/Long;
    :cond_0
    iput-object p2, p0, Lcom/perm/kate/LikesAdapter;->activity:Landroid/app/Activity;

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/perm/kate/LikesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/perm/kate/LikesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/LikesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/perm/kate/LikesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 48
    const-wide/16 v0, -0x1

    .line 49
    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 55
    if-nez p2, :cond_2

    .line 56
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/LikesAdapter;->activity:Landroid/app/Activity;

    const-string v5, "layout_inflater"

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 57
    .local v12, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03010c

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v2, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 59
    .local v17, "vi":Landroid/view/View;
    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    const v2, 0x7f0e0064

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 61
    .local v4, "img_user_photo":Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 62
    .local v14, "params":Landroid/widget/LinearLayout$LayoutParams;
    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v6

    const-wide/high16 v18, 0x4014000000000000L    # 5.0

    invoke-static/range {v18 .. v19}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v7

    invoke-virtual {v14, v2, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 63
    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    iput v2, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 64
    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    iput v2, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 65
    invoke-virtual {v4}, Landroid/widget/ImageView;->requestLayout()V

    .line 69
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    .end local v12    # "inflater":Landroid/view/LayoutInflater;
    .end local v14    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_0
    const v2, 0x7f0e0065

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 70
    .local v13, "name":Landroid/widget/TextView;
    const v2, 0x7f0e0064

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 71
    .restart local v4    # "img_user_photo":Landroid/widget/ImageView;
    const/4 v9, 0x0

    .line 72
    .local v9, "display_name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 73
    .local v3, "photo_url":Ljava/lang/String;
    const/4 v15, 0x0

    .line 74
    .local v15, "uid_str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/LikesAdapter;->items:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 75
    .local v11, "id":Ljava/lang/Long;
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v18, 0x0

    cmp-long v2, v6, v18

    if-lez v2, :cond_3

    .line 76
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v16

    .line 77
    .local v16, "user":Lcom/perm/kate/api/User;
    if-eqz v16, :cond_1

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 79
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 80
    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    .line 90
    .end local v16    # "user":Lcom/perm/kate/api/User;
    :cond_1
    :goto_1
    invoke-static {v9}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 91
    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    const/4 v5, 0x1

    const/16 v6, 0x5a

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 93
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    const v2, 0x7f0e0198

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 101
    :goto_2
    return-object v17

    .line 68
    .end local v3    # "photo_url":Ljava/lang/String;
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    .end local v9    # "display_name":Ljava/lang/String;
    .end local v11    # "id":Ljava/lang/Long;
    .end local v13    # "name":Landroid/widget/TextView;
    .end local v15    # "uid_str":Ljava/lang/String;
    .end local v17    # "vi":Landroid/view/View;
    :cond_2
    move-object/from16 v17, p2

    .restart local v17    # "vi":Landroid/view/View;
    goto/16 :goto_0

    .line 82
    .restart local v3    # "photo_url":Ljava/lang/String;
    .restart local v4    # "img_user_photo":Landroid/widget/ImageView;
    .restart local v9    # "display_name":Ljava/lang/String;
    .restart local v11    # "id":Ljava/lang/Long;
    .restart local v13    # "name":Landroid/widget/TextView;
    .restart local v15    # "uid_str":Ljava/lang/String;
    :cond_3
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v18, 0x0

    cmp-long v2, v6, v18

    if-gez v2, :cond_1

    .line 83
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const-wide/16 v6, -0x1

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    mul-long v6, v6, v18

    invoke-virtual {v2, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v10

    .line 84
    .local v10, "group":Lcom/perm/kate/api/Group;
    if-eqz v10, :cond_1

    .line 85
    iget-object v9, v10, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 86
    iget-object v3, v10, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    .line 87
    const-wide/16 v6, -0x1

    iget-wide v0, v10, Lcom/perm/kate/api/Group;->gid:J

    move-wide/from16 v18, v0

    mul-long v6, v6, v18

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    .line 96
    .end local v10    # "group":Lcom/perm/kate/api/Group;
    :cond_4
    const-string v2, ""

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const v2, 0x7f0e0198

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 98
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2
.end method
