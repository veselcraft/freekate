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

.field private photo_click_listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 100
    new-instance v0, Lcom/perm/kate/BannedAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/BannedAdapter$1;-><init>(Lcom/perm/kate/BannedAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/BannedAdapter;->photo_click_listener:Landroid/view/View$OnClickListener;

    .line 24
    iput-object p1, p0, Lcom/perm/kate/BannedAdapter;->activity:Landroid/app/Activity;

    .line 25
    iput-object p2, p0, Lcom/perm/kate/BannedAdapter;->items:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/BannedAdapter;)Landroid/app/Activity;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/perm/kate/BannedAdapter;->activity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/perm/kate/BannedAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/perm/kate/BannedAdapter;->items:Ljava/util/ArrayList;

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
    .locals 11

    const v0, 0x7f090188

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 48
    :try_start_0
    iget-object p2, p0, Lcom/perm/kate/BannedAdapter;->activity:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    invoke-virtual {p2, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v2, 0x7f0c012c

    const/4 v3, 0x0

    .line 50
    invoke-virtual {p2, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :try_start_1
    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 53
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 54
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    .line 55
    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v6

    const-wide/high16 v7, 0x402e000000000000L    # 15.0

    invoke-static {v7, v8}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v7

    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    invoke-virtual {v2, v5, v6, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const-wide/high16 v3, 0x4049000000000000L    # 50.0

    .line 56
    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 57
    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 58
    invoke-virtual {p3}, Landroid/widget/ImageView;->requestLayout()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    const p3, 0x7f0903e6

    .line 63
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 64
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 65
    iget-object v2, p0, Lcom/perm/kate/BannedAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/BannedAdapter$BannItem;

    .line 71
    iget v2, p1, Lcom/perm/kate/BannedAdapter$BannItem;->type:I

    if-nez v2, :cond_1

    .line 72
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v3, p1, Lcom/perm/kate/BannedAdapter$BannItem;->id:J

    invoke-virtual {v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object p1

    move-object v2, v1

    goto :goto_1

    .line 74
    :cond_1
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v3, p1, Lcom/perm/kate/BannedAdapter$BannItem;->id:J

    invoke-virtual {v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object p1

    move-object v2, p1

    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_2

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    iget-object v2, p1, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 78
    iget-wide v3, p1, Lcom/perm/kate/api/User;->uid:J

    move-wide v9, v3

    move-object v3, v2

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    .line 80
    iget-object v1, v2, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 81
    iget-object p1, v2, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    const-wide/16 v3, -0x1

    .line 82
    iget-wide v5, v2, Lcom/perm/kate/api/Group;->gid:J

    mul-long v3, v3, v5

    move-wide v9, v3

    move-object v3, p1

    goto :goto_2

    :cond_3
    const-wide/16 v3, 0x0

    move-wide v9, v3

    move-object v3, v1

    .line 88
    :goto_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 89
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    const/4 v5, 0x1

    const/16 v6, 0x5a

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    move-object v4, v0

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    const p1, 0x7f090186

    .line 91
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 92
    iget-object p1, p0, Lcom/perm/kate/BannedAdapter;->photo_click_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v1, p2

    .line 94
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    move-object p2, v1

    :goto_4
    return-object p2
.end method
