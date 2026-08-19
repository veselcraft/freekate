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


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/ContactsListAdapter;->items:Ljava/util/ArrayList;

    .line 23
    iput-object p1, p0, Lcom/perm/kate/ContactsListAdapter;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public displayData(Ljava/util/ArrayList;)V
    .locals 1

    if-nez p1, :cond_0

    .line 28
    iget-object p1, p0, Lcom/perm/kate/ContactsListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/perm/kate/ContactsListAdapter;->items:Ljava/util/ArrayList;

    .line 31
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/perm/kate/ContactsListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/perm/kate/ContactsListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ContactsListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/perm/kate/ContactsListAdapter;->items:Ljava/util/ArrayList;

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
    .locals 16

    move-object/from16 v1, p0

    const v0, 0x7f090188

    const/4 v3, 0x0

    if-nez p2, :cond_0

    .line 68
    :try_start_0
    iget-object v4, v1, Lcom/perm/kate/ContactsListAdapter;->activity:Landroid/app/Activity;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v5, 0x7f0c004a

    move-object/from16 v6, p3

    .line 69
    invoke-virtual {v4, v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :try_start_1
    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 72
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 73
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    .line 74
    invoke-static {v7, v8}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v9

    invoke-static {v7, v8}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v10

    const-wide/high16 v11, 0x402e000000000000L    # 15.0

    invoke-static {v11, v12}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v11

    invoke-static {v7, v8}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v7

    invoke-virtual {v6, v9, v10, v11, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    .line 75
    invoke-static {v7, v8}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v9

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 76
    invoke-static {v7, v8}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 77
    invoke-virtual {v5}, Landroid/widget/ImageView;->requestLayout()V

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_0
    move-object/from16 v4, p2

    :cond_1
    :goto_0
    const v5, 0x7f0903e6

    .line 81
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f090364

    .line 82
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 83
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    const v0, 0x7f09009a

    .line 84
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 85
    iget-object v7, v1, Lcom/perm/kate/ContactsListAdapter;->items:Ljava/util/ArrayList;

    move/from16 v8, p1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Lcom/perm/kate/ContactsListAdapter$ContactItem;

    .line 87
    iget-object v7, v14, Lcom/perm/kate/ContactsListAdapter$ContactItem;->type:Lcom/perm/kate/ContactsListAdapter$ContactType;

    sget-object v8, Lcom/perm/kate/ContactsListAdapter$ContactType;->USER:Lcom/perm/kate/ContactsListAdapter$ContactType;

    const/16 v15, 0x8

    if-ne v7, v8, :cond_3

    iget-object v13, v14, Lcom/perm/kate/ContactsListAdapter$ContactItem;->user:Lcom/perm/kate/api/User;

    if-eqz v13, :cond_3

    .line 89
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v13, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v13, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 90
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v7

    iget-object v8, v13, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const/4 v10, 0x1

    const/16 v11, 0x5a

    .line 92
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v12

    const/4 v5, 0x1

    move-object v2, v13

    move v13, v5

    .line 91
    invoke-virtual/range {v7 .. v13}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 93
    iget-object v2, v2, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 95
    :cond_3
    sget-object v2, Lcom/perm/kate/ContactsListAdapter$ContactType;->PHONE:Lcom/perm/kate/ContactsListAdapter$ContactType;

    if-ne v7, v2, :cond_4

    .line 96
    iget-object v2, v14, Lcom/perm/kate/ContactsListAdapter$ContactItem;->contact:Lcom/perm/kate/api/Contact;

    iget-object v2, v2, Lcom/perm/kate/api/Contact;->phone:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 98
    :cond_4
    iget-object v2, v14, Lcom/perm/kate/ContactsListAdapter$ContactItem;->contact:Lcom/perm/kate/api/Contact;

    iget-object v2, v2, Lcom/perm/kate/api/Contact;->email:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const v2, 0x7f0800a6

    .line 99
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    :goto_3
    iget-object v0, v14, Lcom/perm/kate/ContactsListAdapter$ContactItem;->contact:Lcom/perm/kate/api/Contact;

    iget-object v0, v0, Lcom/perm/kate/api/Contact;->desc:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 103
    iget-object v0, v14, Lcom/perm/kate/ContactsListAdapter$ContactItem;->contact:Lcom/perm/kate/api/Contact;

    iget-object v0, v0, Lcom/perm/kate/api/Contact;->desc:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 106
    :cond_5
    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    :goto_4
    invoke-virtual {v4, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    :catch_1
    move-exception v0

    .line 110
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    .line 111
    invoke-static {v0, v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v4
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
