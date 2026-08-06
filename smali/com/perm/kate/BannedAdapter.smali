.class public Lcom/perm/kate/BannedAdapter;
.super Landroid/widget/BaseAdapter;
.source "BannedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/BannedAdapter$BannItem;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/BannedAdapter$BannItem;",
            ">;"
        }
    .end annotation
.end field

.field private photo_click_listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/BannedAdapter$BannItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/BannedAdapter$BannItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 100
    new-instance v0, Lcom/perm/kate/BannedAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/BannedAdapter$1;-><init>(Lcom/perm/kate/BannedAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/BannedAdapter;->photo_click_listener:Landroid/view/View$OnClickListener;

    .line 24
    iput-object p1, p0, Lcom/perm/kate/BannedAdapter;->activity:Landroid/app/Activity;

    .line 25
    iput-object p2, p0, Lcom/perm/kate/BannedAdapter;->items:Ljava/util/ArrayList;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/BannedAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/BannedAdapter;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/perm/kate/BannedAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/perm/kate/BannedAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/perm/kate/BannedAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 40
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 24
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 45
    const/16 v20, 0x0

    .line 47
    .local v20, "vi":Landroid/view/View;
    if-nez p2, :cond_1

    .line 48
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/BannedAdapter;->activity:Landroid/app/Activity;

    const-string v5, "layout_inflater"

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 49
    .local v14, "inflater":Landroid/view/LayoutInflater;
    const v16, 0x7f03010c

    .line 50
    .local v16, "layout_id":I
    const/4 v2, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v14, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    .line 52
    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    const v2, 0x7f0e0064

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 54
    .local v4, "img_user_photo":Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout$LayoutParams;

    .line 55
    .local v18, "params":Landroid/widget/LinearLayout$LayoutParams;
    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v6

    const-wide/high16 v22, 0x4014000000000000L    # 5.0

    invoke-static/range {v22 .. v23}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v7

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 56
    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 57
    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 58
    invoke-virtual {v4}, Landroid/widget/ImageView;->requestLayout()V

    .line 63
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    .end local v14    # "inflater":Landroid/view/LayoutInflater;
    .end local v16    # "layout_id":I
    .end local v18    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_0
    const v2, 0x7f0e0065

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 64
    .local v17, "name":Landroid/widget/TextView;
    const v2, 0x7f0e0064

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 65
    .restart local v4    # "img_user_photo":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/BannedAdapter;->items:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/perm/kate/BannedAdapter$BannItem;

    .line 69
    .local v15, "item":Lcom/perm/kate/BannedAdapter$BannItem;
    const/16 v19, 0x0

    .line 70
    .local v19, "user":Lcom/perm/kate/api/User;
    const/4 v11, 0x0

    .line 71
    .local v11, "group":Lcom/perm/kate/api/Group;
    iget v2, v15, Lcom/perm/kate/BannedAdapter$BannItem;->type:I

    if-nez v2, :cond_2

    .line 72
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v6, v15, Lcom/perm/kate/BannedAdapter$BannItem;->id:J

    invoke-virtual {v2, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v19

    .line 75
    :goto_1
    if-eqz v19, :cond_3

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 77
    .local v9, "display_name":Ljava/lang/String;
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 78
    .local v3, "image_url":Ljava/lang/String;
    move-object/from16 v0, v19

    iget-wide v12, v0, Lcom/perm/kate/api/User;->uid:J

    .line 88
    .local v12, "image_tag":J
    :goto_2
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 89
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    const/4 v5, 0x1

    const/16 v6, 0x5a

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 91
    const v2, 0x7f0e026f

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/BannedAdapter;->photo_click_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    .end local v3    # "image_url":Ljava/lang/String;
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    .end local v9    # "display_name":Ljava/lang/String;
    .end local v11    # "group":Lcom/perm/kate/api/Group;
    .end local v12    # "image_tag":J
    .end local v15    # "item":Lcom/perm/kate/BannedAdapter$BannItem;
    .end local v17    # "name":Landroid/widget/TextView;
    .end local v19    # "user":Lcom/perm/kate/api/User;
    :goto_3
    return-object v20

    .line 62
    :cond_1
    move-object/from16 v20, p2

    goto/16 :goto_0

    .line 74
    .restart local v4    # "img_user_photo":Landroid/widget/ImageView;
    .restart local v11    # "group":Lcom/perm/kate/api/Group;
    .restart local v15    # "item":Lcom/perm/kate/BannedAdapter$BannItem;
    .restart local v17    # "name":Landroid/widget/TextView;
    .restart local v19    # "user":Lcom/perm/kate/api/User;
    :cond_2
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v6, v15, Lcom/perm/kate/BannedAdapter$BannItem;->id:J

    invoke-virtual {v2, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v11

    goto :goto_1

    .line 79
    :cond_3
    if-eqz v11, :cond_4

    .line 80
    iget-object v9, v11, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 81
    .restart local v9    # "display_name":Ljava/lang/String;
    iget-object v3, v11, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    .line 82
    .restart local v3    # "image_url":Ljava/lang/String;
    const-wide/16 v6, -0x1

    iget-wide v0, v11, Lcom/perm/kate/api/Group;->gid:J

    move-wide/from16 v22, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-long v12, v6, v22

    .restart local v12    # "image_tag":J
    goto :goto_2

    .line 84
    .end local v3    # "image_url":Ljava/lang/String;
    .end local v9    # "display_name":Ljava/lang/String;
    .end local v12    # "image_tag":J
    :cond_4
    const/4 v9, 0x0

    .line 85
    .restart local v9    # "display_name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 86
    .restart local v3    # "image_url":Ljava/lang/String;
    const-wide/16 v12, 0x0

    .restart local v12    # "image_tag":J
    goto :goto_2

    .line 93
    .end local v3    # "image_url":Ljava/lang/String;
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    .end local v9    # "display_name":Ljava/lang/String;
    .end local v11    # "group":Lcom/perm/kate/api/Group;
    .end local v12    # "image_tag":J
    .end local v15    # "item":Lcom/perm/kate/BannedAdapter$BannItem;
    .end local v17    # "name":Landroid/widget/TextView;
    .end local v19    # "user":Lcom/perm/kate/api/User;
    :catch_0
    move-exception v10

    .line 94
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    invoke-static {v10}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_3
.end method
