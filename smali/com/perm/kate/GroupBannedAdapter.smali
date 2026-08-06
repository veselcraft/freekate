.class public Lcom/perm/kate/GroupBannedAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupBannedAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/GroupBanItem;",
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
            "Lcom/perm/kate/api/GroupBanItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/GroupBanItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 102
    new-instance v0, Lcom/perm/kate/GroupBannedAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupBannedAdapter$1;-><init>(Lcom/perm/kate/GroupBannedAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/GroupBannedAdapter;->photo_click_listener:Landroid/view/View$OnClickListener;

    .line 23
    iput-object p1, p0, Lcom/perm/kate/GroupBannedAdapter;->activity:Landroid/app/Activity;

    .line 24
    iput-object p2, p0, Lcom/perm/kate/GroupBannedAdapter;->items:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GroupBannedAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupBannedAdapter;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/perm/kate/GroupBannedAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/perm/kate/GroupBannedAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/perm/kate/GroupBannedAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 39
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 44
    const/16 v21, 0x0

    .line 46
    .local v21, "vi":Landroid/view/View;
    if-nez p2, :cond_1

    .line 47
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupBannedAdapter;->activity:Landroid/app/Activity;

    const-string v5, "layout_inflater"

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 48
    .local v14, "inflater":Landroid/view/LayoutInflater;
    const v16, 0x7f030034

    .line 49
    .local v16, "layout_id":I
    const/4 v2, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v14, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    .line 52
    .end local v14    # "inflater":Landroid/view/LayoutInflater;
    .end local v16    # "layout_id":I
    :goto_0
    const v2, 0x7f0e0065

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 53
    .local v17, "name":Landroid/widget/TextView;
    const v2, 0x7f0e00b1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 54
    .local v19, "tv_admin_name":Landroid/widget/TextView;
    const v2, 0x7f0e00b2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 55
    .local v20, "tv_comment":Landroid/widget/TextView;
    const v2, 0x7f0e0064

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 56
    .local v4, "img_user_photo":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupBannedAdapter;->items:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/perm/kate/api/GroupBanItem;

    .line 57
    .local v15, "item":Lcom/perm/kate/api/GroupBanItem;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v15, Lcom/perm/kate/api/GroupBanItem;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v15, Lcom/perm/kate/api/GroupBanItem;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 58
    .local v10, "display_name":Ljava/lang/String;
    iget-wide v12, v15, Lcom/perm/kate/api/GroupBanItem;->id:J

    .line 59
    .local v12, "image_tag":J
    iget-object v3, v15, Lcom/perm/kate/api/GroupBanItem;->photo_100:Ljava/lang/String;

    .line 60
    .local v3, "image_url":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v2, v15, Lcom/perm/kate/api/GroupBanItem;->banInfo:Lcom/perm/kate/api/BanInfo;

    if-eqz v2, :cond_0

    .line 63
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v5, v15, Lcom/perm/kate/api/GroupBanItem;->banInfo:Lcom/perm/kate/api/BanInfo;

    iget-wide v6, v5, Lcom/perm/kate/api/BanInfo;->admin_id:J

    invoke-virtual {v2, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v9

    .line 64
    .local v9, "admin":Lcom/perm/kate/api/User;
    if-eqz v9, :cond_2

    .line 65
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v9, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v9, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v2, v15, Lcom/perm/kate/api/GroupBanItem;->banInfo:Lcom/perm/kate/api/BanInfo;

    iget-object v2, v2, Lcom/perm/kate/api/BanInfo;->comment:Ljava/lang/String;

    invoke-static {v2}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v15, Lcom/perm/kate/api/GroupBanItem;->banInfo:Lcom/perm/kate/api/BanInfo;

    iget v2, v2, Lcom/perm/kate/api/BanInfo;->reason:I

    if-nez v2, :cond_3

    .line 71
    const/16 v2, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    .end local v9    # "admin":Lcom/perm/kate/api/User;
    :cond_0
    :goto_2
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    const/4 v5, 0x1

    const/16 v6, 0x5a

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 93
    const v2, 0x7f0e026f

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupBannedAdapter;->photo_click_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    .end local v3    # "image_url":Ljava/lang/String;
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    .end local v10    # "display_name":Ljava/lang/String;
    .end local v12    # "image_tag":J
    .end local v15    # "item":Lcom/perm/kate/api/GroupBanItem;
    .end local v17    # "name":Landroid/widget/TextView;
    .end local v19    # "tv_admin_name":Landroid/widget/TextView;
    .end local v20    # "tv_comment":Landroid/widget/TextView;
    :goto_3
    return-object v21

    .line 51
    :cond_1
    move-object/from16 v21, p2

    goto/16 :goto_0

    .line 68
    .restart local v3    # "image_url":Ljava/lang/String;
    .restart local v4    # "img_user_photo":Landroid/widget/ImageView;
    .restart local v9    # "admin":Lcom/perm/kate/api/User;
    .restart local v10    # "display_name":Ljava/lang/String;
    .restart local v12    # "image_tag":J
    .restart local v15    # "item":Lcom/perm/kate/api/GroupBanItem;
    .restart local v17    # "name":Landroid/widget/TextView;
    .restart local v19    # "tv_admin_name":Landroid/widget/TextView;
    .restart local v20    # "tv_comment":Landroid/widget/TextView;
    :cond_2
    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 95
    .end local v3    # "image_url":Ljava/lang/String;
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    .end local v9    # "admin":Lcom/perm/kate/api/User;
    .end local v10    # "display_name":Ljava/lang/String;
    .end local v12    # "image_tag":J
    .end local v15    # "item":Lcom/perm/kate/api/GroupBanItem;
    .end local v17    # "name":Landroid/widget/TextView;
    .end local v19    # "tv_admin_name":Landroid/widget/TextView;
    .end local v20    # "tv_comment":Landroid/widget/TextView;
    :catch_0
    move-exception v11

    .line 96
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    invoke-static {v11}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 72
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v3    # "image_url":Ljava/lang/String;
    .restart local v4    # "img_user_photo":Landroid/widget/ImageView;
    .restart local v9    # "admin":Lcom/perm/kate/api/User;
    .restart local v10    # "display_name":Ljava/lang/String;
    .restart local v12    # "image_tag":J
    .restart local v15    # "item":Lcom/perm/kate/api/GroupBanItem;
    .restart local v17    # "name":Landroid/widget/TextView;
    .restart local v19    # "tv_admin_name":Landroid/widget/TextView;
    .restart local v20    # "tv_comment":Landroid/widget/TextView;
    :cond_3
    :try_start_1
    iget-object v2, v15, Lcom/perm/kate/api/GroupBanItem;->banInfo:Lcom/perm/kate/api/BanInfo;

    iget v2, v2, Lcom/perm/kate/api/BanInfo;->reason:I

    if-lez v2, :cond_4

    .line 73
    iget-object v2, v15, Lcom/perm/kate/api/GroupBanItem;->banInfo:Lcom/perm/kate/api/BanInfo;

    iget-object v0, v2, Lcom/perm/kate/api/BanInfo;->comment:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 74
    .local v18, "reason_text":Ljava/lang/String;
    iget-object v2, v15, Lcom/perm/kate/api/GroupBanItem;->banInfo:Lcom/perm/kate/api/BanInfo;

    iget v2, v2, Lcom/perm/kate/api/BanInfo;->reason:I

    packed-switch v2, :pswitch_data_0

    .line 88
    :goto_4
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 76
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupBannedAdapter;->activity:Landroid/app/Activity;

    const v5, 0x7f070141

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 77
    goto :goto_4

    .line 79
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupBannedAdapter;->activity:Landroid/app/Activity;

    const v5, 0x7f070142

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 80
    goto :goto_4

    .line 82
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupBannedAdapter;->activity:Landroid/app/Activity;

    const v5, 0x7f070143

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 83
    goto :goto_4

    .line 85
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupBannedAdapter;->activity:Landroid/app/Activity;

    const v5, 0x7f070144

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto :goto_4

    .line 90
    .end local v18    # "reason_text":Ljava/lang/String;
    :cond_4
    iget-object v2, v15, Lcom/perm/kate/api/GroupBanItem;->banInfo:Lcom/perm/kate/api/BanInfo;

    iget-object v2, v2, Lcom/perm/kate/api/BanInfo;->comment:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
