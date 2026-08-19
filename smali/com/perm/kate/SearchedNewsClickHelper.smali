.class public abstract Lcom/perm/kate/SearchedNewsClickHelper;
.super Ljava/lang/Object;
.source "SearchedNewsClickHelper.java"


# direct methods
.method static synthetic access$000(Lcom/perm/kate/NewsItemTag;Landroid/app/Activity;Z)V
    .locals 0

    .line 13
    invoke-static {p0, p1, p2}, Lcom/perm/kate/SearchedNewsClickHelper;->showWallPostFromNews(Lcom/perm/kate/NewsItemTag;Landroid/app/Activity;Z)V

    return-void
.end method

.method private static createContextMenuSearchedNewsItem(Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/SearchActivity;)V
    .locals 4

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    iget-object v1, p0, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-static {v1}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f03ae

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f00b2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v1, p0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v2, "reply"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f025d

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 55
    :cond_2
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/perm/kate/SearchedNewsClickHelper$1;

    invoke-direct {v3, v0, p0, p1}, Lcom/perm/kate/SearchedNewsClickHelper$1;-><init>(Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/SearchActivity;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    const/4 p1, 0x1

    .line 77
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 78
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static newsItemClick(Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/SearchActivity;)V
    .locals 2

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v1, "post"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v1, "copy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 21
    :cond_1
    invoke-static {p0, p1}, Lcom/perm/kate/SearchedNewsClickHelper;->createContextMenuSearchedNewsItem(Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/SearchActivity;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 19
    invoke-static {p0, p1, v0}, Lcom/perm/kate/SearchedNewsClickHelper;->showWallPostFromNews(Lcom/perm/kate/NewsItemTag;Landroid/app/Activity;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static showWallPostFromNews(Lcom/perm/kate/NewsItemTag;Landroid/app/Activity;Z)V
    .locals 4

    .line 25
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 26
    const-class v1, Lcom/perm/kate/WallMessageActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 27
    new-instance v1, Lcom/perm/kate/api/WallMessage;

    invoke-direct {v1}, Lcom/perm/kate/api/WallMessage;-><init>()V

    .line 28
    iget-object v2, p0, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/perm/kate/api/WallMessage;->id:J

    if-eqz p2, :cond_0

    .line 30
    iget-object p2, p0, Lcom/perm/kate/NewsItemTag;->user_id:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/perm/kate/api/WallMessage;->to_id:J

    .line 31
    iget-object p0, p0, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    iput-object p0, v1, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    goto :goto_0

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/perm/kate/api/WallMessage;->to_id:J

    :goto_0
    const-string p0, "post"

    .line 34
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p0, 0x0

    const-string p2, "cache_post"

    .line 35
    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 36
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
