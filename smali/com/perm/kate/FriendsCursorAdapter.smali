.class public Lcom/perm/kate/FriendsCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "FriendsCursorAdapter.java"


# instance fields
.field private checkboxClickListener:Landroid/view/View$OnClickListener;

.field private checked:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field clickable_checkboxes:Z

.field private itemMenuClickListener:Landroid/view/View$OnClickListener;

.field private use_checks:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 24
    iput-object v2, p0, Lcom/perm/kate/FriendsCursorAdapter;->itemMenuClickListener:Landroid/view/View$OnClickListener;

    .line 25
    iput-boolean v1, p0, Lcom/perm/kate/FriendsCursorAdapter;->clickable_checkboxes:Z

    .line 111
    new-instance v0, Lcom/perm/kate/FriendsCursorAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsCursorAdapter$1;-><init>(Lcom/perm/kate/FriendsCursorAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsCursorAdapter;->checkboxClickListener:Landroid/view/View$OnClickListener;

    .line 29
    iput-object v2, p0, Lcom/perm/kate/FriendsCursorAdapter;->checked:Ljava/util/HashMap;

    .line 30
    iput-boolean v1, p0, Lcom/perm/kate/FriendsCursorAdapter;->use_checks:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/database/Cursor;Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "imcl"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 24
    iput-object v2, p0, Lcom/perm/kate/FriendsCursorAdapter;->itemMenuClickListener:Landroid/view/View$OnClickListener;

    .line 25
    iput-boolean v1, p0, Lcom/perm/kate/FriendsCursorAdapter;->clickable_checkboxes:Z

    .line 111
    new-instance v0, Lcom/perm/kate/FriendsCursorAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsCursorAdapter$1;-><init>(Lcom/perm/kate/FriendsCursorAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsCursorAdapter;->checkboxClickListener:Landroid/view/View$OnClickListener;

    .line 41
    iput-object v2, p0, Lcom/perm/kate/FriendsCursorAdapter;->checked:Ljava/util/HashMap;

    .line 42
    iput-boolean v1, p0, Lcom/perm/kate/FriendsCursorAdapter;->use_checks:Z

    .line 43
    iput-object p3, p0, Lcom/perm/kate/FriendsCursorAdapter;->itemMenuClickListener:Landroid/view/View$OnClickListener;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/database/Cursor;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/database/Cursor;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p3, "ch":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/FriendsCursorAdapter;->itemMenuClickListener:Landroid/view/View$OnClickListener;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/FriendsCursorAdapter;->clickable_checkboxes:Z

    .line 111
    new-instance v0, Lcom/perm/kate/FriendsCursorAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsCursorAdapter$1;-><init>(Lcom/perm/kate/FriendsCursorAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsCursorAdapter;->checkboxClickListener:Landroid/view/View$OnClickListener;

    .line 35
    iput-object p3, p0, Lcom/perm/kate/FriendsCursorAdapter;->checked:Ljava/util/HashMap;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/FriendsCursorAdapter;->use_checks:Z

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/FriendsCursorAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FriendsCursorAdapter;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/perm/kate/FriendsCursorAdapter;->checked:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 48
    const v2, 0x7f0e0065

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 49
    .local v12, "name":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "first_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "last_name"

    .line 50
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 51
    .local v10, "display_name":Ljava/lang/String;
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const-string v2, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 54
    .local v15, "uid_str":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    const-string v2, "photo_medium_rec"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "photo_medium":Ljava/lang/String;
    const v2, 0x7f0e0064

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 57
    .local v4, "img_user_photo":Landroid/widget/ImageView;
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 58
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    .line 57
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 60
    const-string v2, "online"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v16, 0x1

    cmp-long v2, v6, v16

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 61
    .local v13, "online":Ljava/lang/Boolean;
    const-string v2, "online_mobile"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v16, 0x1

    cmp-long v2, v6, v16

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 62
    .local v14, "online_mobile":Ljava/lang/Boolean;
    const v2, 0x7f0e00ef

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    const v2, 0x7f0e00ee

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/perm/kate/FriendsCursorAdapter;->use_checks:Z

    if-eqz v2, :cond_0

    .line 65
    const v2, 0x7f0e005a

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    .line 66
    .local v9, "checkbox":Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/FriendsCursorAdapter;->checked:Ljava/util/HashMap;

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v9, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 67
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/FriendsCursorAdapter;->checked:Ljava/util/HashMap;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/FriendsCursorAdapter;->checked:Ljava/util/HashMap;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {v9, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 68
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/perm/kate/FriendsCursorAdapter;->clickable_checkboxes:Z

    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {v9, v15}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 71
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 73
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/FriendsCursorAdapter;->checkboxClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    .end local v9    # "checkbox":Landroid/widget/CheckBox;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/FriendsCursorAdapter;->itemMenuClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_1

    .line 77
    const v2, 0x7f0e02b2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 78
    .local v11, "menu_view":Landroid/widget/ImageView;
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/FriendsCursorAdapter;->itemMenuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 82
    .end local v11    # "menu_view":Landroid/widget/ImageView;
    :cond_1
    return-void

    .line 60
    .end local v13    # "online":Ljava/lang/Boolean;
    .end local v14    # "online_mobile":Ljava/lang/Boolean;
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 61
    .restart local v13    # "online":Ljava/lang/Boolean;
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 62
    .restart local v14    # "online_mobile":Ljava/lang/Boolean;
    :cond_4
    const/16 v2, 0x8

    goto/16 :goto_2

    .line 63
    :cond_5
    const/16 v2, 0x8

    goto :goto_3

    .line 66
    .restart local v9    # "checkbox":Landroid/widget/CheckBox;
    :cond_6
    const/16 v2, 0x8

    goto :goto_4

    .line 67
    :cond_7
    const/4 v2, 0x0

    goto :goto_5
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 104
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "th":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 107
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const-wide/high16 v10, 0x4049000000000000L    # 50.0

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    .line 86
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 87
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f03010c

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 89
    .local v3, "v":Landroid/view/View;
    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    const v4, 0x7f0e0064

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 91
    .local v0, "img_user_photo":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 92
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v4

    invoke-static {v8, v9}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v6

    invoke-static {v8, v9}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 93
    invoke-static {v10, v11}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 94
    invoke-static {v10, v11}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 95
    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 98
    .end local v0    # "img_user_photo":Landroid/widget/ImageView;
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-object v3
.end method
