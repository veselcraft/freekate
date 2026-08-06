.class public Lcom/perm/kate/ContactsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/ContactsListAdapter$ContactType;,
        Lcom/perm/kate/ContactsListAdapter$ContactItem;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/ContactsListAdapter$ContactItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/ContactsListAdapter;->items:Ljava/util/ArrayList;

    .line 23
    iput-object p1, p0, Lcom/perm/kate/ContactsListAdapter;->activity:Landroid/app/Activity;

    .line 24
    return-void
.end method


# virtual methods
.method public displayData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/ContactsListAdapter$ContactItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/ContactsListAdapter$ContactItem;>;"
    if-nez p1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/perm/kate/ContactsListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 31
    :goto_0
    invoke-virtual {p0}, Lcom/perm/kate/ContactsListAdapter;->notifyDataSetChanged()V

    .line 32
    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/perm/kate/ContactsListAdapter;->items:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/perm/kate/ContactsListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/perm/kate/ContactsListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ContactsListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/perm/kate/ContactsListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 49
    const-wide/16 v0, -0x1

    .line 50
    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 65
    const/16 v18, 0x0

    .line 67
    .local v18, "vi":Landroid/view/View;
    if-nez p2, :cond_1

    .line 68
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ContactsListAdapter;->activity:Landroid/app/Activity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 69
    .local v13, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030045

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 71
    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    const v2, 0x7f0e0064

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 73
    .local v4, "img_user_photo":Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout$LayoutParams;

    .line 74
    .local v16, "params":Landroid/widget/LinearLayout$LayoutParams;
    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 75
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    move-object/from16 v0, v16

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 76
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    move-object/from16 v0, v16

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 77
    invoke-virtual {v4}, Landroid/widget/ImageView;->requestLayout()V

    .line 81
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    .end local v13    # "inflater":Landroid/view/LayoutInflater;
    .end local v16    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_0
    const v2, 0x7f0e0065

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 82
    .local v15, "name":Landroid/widget/TextView;
    const v2, 0x7f0e00f0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 83
    .local v10, "description":Landroid/widget/TextView;
    const v2, 0x7f0e0064

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 84
    .restart local v4    # "img_user_photo":Landroid/widget/ImageView;
    const v2, 0x7f0e00ee

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 85
    .local v9, "bullet":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ContactsListAdapter;->items:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perm/kate/ContactsListAdapter$ContactItem;

    .line 87
    .local v14, "item":Lcom/perm/kate/ContactsListAdapter$ContactItem;
    iget-object v2, v14, Lcom/perm/kate/ContactsListAdapter$ContactItem;->type:Lcom/perm/kate/ContactsListAdapter$ContactType;

    sget-object v3, Lcom/perm/kate/ContactsListAdapter$ContactType;->USER:Lcom/perm/kate/ContactsListAdapter$ContactType;

    if-ne v2, v3, :cond_3

    iget-object v2, v14, Lcom/perm/kate/ContactsListAdapter$ContactItem;->user:Lcom/perm/kate/api/User;

    if-eqz v2, :cond_3

    .line 88
    iget-object v0, v14, Lcom/perm/kate/ContactsListAdapter$ContactItem;->user:Lcom/perm/kate/api/User;

    move-object/from16 v17, v0

    .line 89
    .local v17, "user":Lcom/perm/kate/api/User;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 90
    .local v11, "display_name":Ljava/lang/String;
    invoke-virtual {v15, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 92
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    .line 91
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 93
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    .end local v11    # "display_name":Ljava/lang/String;
    .end local v17    # "user":Lcom/perm/kate/api/User;
    :goto_2
    iget-object v2, v14, Lcom/perm/kate/ContactsListAdapter$ContactItem;->contact:Lcom/perm/kate/api/Contact;

    iget-object v2, v2, Lcom/perm/kate/api/Contact;->desc:Ljava/lang/String;

    invoke-static {v2}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 103
    iget-object v2, v14, Lcom/perm/kate/ContactsListAdapter$ContactItem;->contact:Lcom/perm/kate/api/Contact;

    iget-object v2, v2, Lcom/perm/kate/api/Contact;->desc:Ljava/lang/String;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    :goto_3
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v19, v18

    .line 112
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    .end local v9    # "bullet":Landroid/widget/ImageView;
    .end local v10    # "description":Landroid/widget/TextView;
    .end local v14    # "item":Lcom/perm/kate/ContactsListAdapter$ContactItem;
    .end local v15    # "name":Landroid/widget/TextView;
    .end local v18    # "vi":Landroid/view/View;
    .local v19, "vi":Landroid/view/View;
    :goto_4
    return-object v19

    .line 80
    .end local v19    # "vi":Landroid/view/View;
    .restart local v18    # "vi":Landroid/view/View;
    :cond_1
    move-object/from16 v18, p2

    goto/16 :goto_0

    .line 93
    .restart local v4    # "img_user_photo":Landroid/widget/ImageView;
    .restart local v9    # "bullet":Landroid/widget/ImageView;
    .restart local v10    # "description":Landroid/widget/TextView;
    .restart local v11    # "display_name":Ljava/lang/String;
    .restart local v14    # "item":Lcom/perm/kate/ContactsListAdapter$ContactItem;
    .restart local v15    # "name":Landroid/widget/TextView;
    .restart local v17    # "user":Lcom/perm/kate/api/User;
    :cond_2
    const/16 v2, 0x8

    goto :goto_1

    .line 95
    .end local v11    # "display_name":Ljava/lang/String;
    .end local v17    # "user":Lcom/perm/kate/api/User;
    :cond_3
    iget-object v2, v14, Lcom/perm/kate/ContactsListAdapter$ContactItem;->type:Lcom/perm/kate/ContactsListAdapter$ContactType;

    sget-object v3, Lcom/perm/kate/ContactsListAdapter$ContactType;->PHONE:Lcom/perm/kate/ContactsListAdapter$ContactType;

    if-ne v2, v3, :cond_4

    .line 96
    iget-object v2, v14, Lcom/perm/kate/ContactsListAdapter$ContactItem;->contact:Lcom/perm/kate/api/Contact;

    iget-object v2, v2, Lcom/perm/kate/api/Contact;->phone:Ljava/lang/String;

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_5
    const v2, 0x7f020072

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 109
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    .end local v9    # "bullet":Landroid/widget/ImageView;
    .end local v10    # "description":Landroid/widget/TextView;
    .end local v14    # "item":Lcom/perm/kate/ContactsListAdapter$ContactItem;
    .end local v15    # "name":Landroid/widget/TextView;
    :catch_0
    move-exception v12

    .line 110
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    const/4 v2, 0x0

    invoke-static {v12, v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object/from16 v19, v18

    .line 112
    .end local v18    # "vi":Landroid/view/View;
    .restart local v19    # "vi":Landroid/view/View;
    goto :goto_4

    .line 98
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v19    # "vi":Landroid/view/View;
    .restart local v4    # "img_user_photo":Landroid/widget/ImageView;
    .restart local v9    # "bullet":Landroid/widget/ImageView;
    .restart local v10    # "description":Landroid/widget/TextView;
    .restart local v14    # "item":Lcom/perm/kate/ContactsListAdapter$ContactItem;
    .restart local v15    # "name":Landroid/widget/TextView;
    .restart local v18    # "vi":Landroid/view/View;
    :cond_4
    :try_start_1
    iget-object v2, v14, Lcom/perm/kate/ContactsListAdapter$ContactItem;->contact:Lcom/perm/kate/api/Contact;

    iget-object v2, v2, Lcom/perm/kate/api/Contact;->email:Ljava/lang/String;

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 106
    :cond_5
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method
