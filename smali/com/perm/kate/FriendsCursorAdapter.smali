.class public Lcom/perm/kate/FriendsCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "FriendsCursorAdapter.java"


# instance fields
.field activity:Ljava/lang/ref/WeakReference;

.field private checkboxClickListener:Landroid/view/View$OnClickListener;

.field private checked:Ljava/util/HashMap;

.field clickable_checkboxes:Z

.field private itemMenuClickListener:Landroid/view/View$OnClickListener;

.field private use_checks:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/perm/kate/FriendsCursorAdapter;->itemMenuClickListener:Landroid/view/View$OnClickListener;

    .line 27
    iput-boolean v0, p0, Lcom/perm/kate/FriendsCursorAdapter;->clickable_checkboxes:Z

    .line 116
    new-instance p2, Lcom/perm/kate/FriendsCursorAdapter$1;

    invoke-direct {p2, p0}, Lcom/perm/kate/FriendsCursorAdapter$1;-><init>(Lcom/perm/kate/FriendsCursorAdapter;)V

    iput-object p2, p0, Lcom/perm/kate/FriendsCursorAdapter;->checkboxClickListener:Landroid/view/View$OnClickListener;

    .line 32
    iput-object p1, p0, Lcom/perm/kate/FriendsCursorAdapter;->checked:Ljava/util/HashMap;

    .line 33
    iput-boolean v0, p0, Lcom/perm/kate/FriendsCursorAdapter;->use_checks:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/database/Cursor;Landroid/view/View$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/perm/kate/FriendsCursorAdapter;->itemMenuClickListener:Landroid/view/View$OnClickListener;

    .line 27
    iput-boolean v0, p0, Lcom/perm/kate/FriendsCursorAdapter;->clickable_checkboxes:Z

    .line 116
    new-instance p2, Lcom/perm/kate/FriendsCursorAdapter$1;

    invoke-direct {p2, p0}, Lcom/perm/kate/FriendsCursorAdapter$1;-><init>(Lcom/perm/kate/FriendsCursorAdapter;)V

    iput-object p2, p0, Lcom/perm/kate/FriendsCursorAdapter;->checkboxClickListener:Landroid/view/View$OnClickListener;

    .line 45
    iput-object p1, p0, Lcom/perm/kate/FriendsCursorAdapter;->checked:Ljava/util/HashMap;

    .line 46
    iput-boolean v0, p0, Lcom/perm/kate/FriendsCursorAdapter;->use_checks:Z

    .line 47
    iput-object p3, p0, Lcom/perm/kate/FriendsCursorAdapter;->itemMenuClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/database/Cursor;Ljava/util/HashMap;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    const/4 p2, 0x0

    .line 26
    iput-object p2, p0, Lcom/perm/kate/FriendsCursorAdapter;->itemMenuClickListener:Landroid/view/View$OnClickListener;

    .line 27
    iput-boolean v0, p0, Lcom/perm/kate/FriendsCursorAdapter;->clickable_checkboxes:Z

    .line 116
    new-instance p2, Lcom/perm/kate/FriendsCursorAdapter$1;

    invoke-direct {p2, p0}, Lcom/perm/kate/FriendsCursorAdapter$1;-><init>(Lcom/perm/kate/FriendsCursorAdapter;)V

    iput-object p2, p0, Lcom/perm/kate/FriendsCursorAdapter;->checkboxClickListener:Landroid/view/View$OnClickListener;

    .line 38
    iput-object p3, p0, Lcom/perm/kate/FriendsCursorAdapter;->checked:Ljava/util/HashMap;

    const/4 p2, 0x1

    .line 39
    iput-boolean p2, p0, Lcom/perm/kate/FriendsCursorAdapter;->use_checks:Z

    .line 40
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/perm/kate/FriendsCursorAdapter;->activity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/FriendsCursorAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/perm/kate/FriendsCursorAdapter;->checked:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9

    const p2, 0x7f0903e6

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "first_name"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "last_name"

    .line 54
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p2, "_id"

    .line 57
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const-string v1, "photo_medium_rec"

    .line 59
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f090188

    .line 60
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    .line 61
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    .line 62
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v5, 0x1

    const/16 v6, 0x5a

    const/4 v8, 0x1

    .line 61
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    const-string v1, "online"

    .line 64
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-nez v7, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "online_mobile"

    .line 65
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    cmp-long p3, v7, v3

    if-nez p3, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const v2, 0x7f090234

    .line 66
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f09009a

    .line 67
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p3, 0x0

    goto :goto_3

    :cond_3
    const/16 p3, 0x8

    :goto_3
    invoke-virtual {v2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-boolean p3, p0, Lcom/perm/kate/FriendsCursorAdapter;->use_checks:Z

    if-eqz p3, :cond_7

    const p3, 0x7f0900ba

    .line 69
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    .line 70
    iget-object v1, p0, Lcom/perm/kate/FriendsCursorAdapter;->checked:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    const/4 v4, 0x0

    :cond_4
    invoke-virtual {p3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 71
    iget-object v1, p0, Lcom/perm/kate/FriendsCursorAdapter;->checked:Ljava/util/HashMap;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 72
    iget-boolean v1, p0, Lcom/perm/kate/FriendsCursorAdapter;->clickable_checkboxes:Z

    if-eqz v1, :cond_6

    .line 73
    invoke-virtual {p3, p2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p3, v5}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 77
    iget-object v1, p0, Lcom/perm/kate/FriendsCursorAdapter;->checkboxClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    :cond_6
    invoke-virtual {p3, v0}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 81
    :cond_7
    iget-object p3, p0, Lcom/perm/kate/FriendsCursorAdapter;->itemMenuClickListener:Landroid/view/View$OnClickListener;

    if-eqz p3, :cond_8

    const p3, 0x7f090182

    .line 82
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 83
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    iget-object p3, p0, Lcom/perm/kate/FriendsCursorAdapter;->itemMenuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 136
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 133
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 109
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 111
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 112
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 91
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c012c

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 94
    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f090188

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 96
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    .line 97
    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    const-wide/high16 v1, 0x4014000000000000L    # 5.0

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v4

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v1

    invoke-virtual {p3, v0, v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    .line 98
    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    iput v2, p3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 99
    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    iput v0, p3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 100
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    :cond_0
    return-object p1
.end method
