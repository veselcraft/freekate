.class public Lcom/perm/kate/SearchedNewsClickHelper;
.super Ljava/lang/Object;
.source "SearchedNewsClickHelper.java"


# direct methods
.method static synthetic access$000(Lcom/perm/kate/NewsItemTag;Landroid/app/Activity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewsItemTag;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Z

    .prologue
    .line 13
    invoke-static {p0, p1, p2}, Lcom/perm/kate/SearchedNewsClickHelper;->showWallPostFromNews(Lcom/perm/kate/NewsItemTag;Landroid/app/Activity;Z)V

    return-void
.end method

.method private static createContextMenuSearchedNewsItem(Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/SearchActivity;)V
    .locals 6
    .param p0, "tag"    # Lcom/perm/kate/NewsItemTag;
    .param p1, "activity"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v1, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    iget-object v3, p0, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 47
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f07034a

    const/4 v5, 0x5

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f07007e

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v3, p0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v4, "reply"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070203

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 79
    :goto_0
    return-void

    .line 55
    :cond_2
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/SearchedNewsClickHelper$1;

    invoke-direct {v5, v1, p0, p1}, Lcom/perm/kate/SearchedNewsClickHelper$1;-><init>(Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/SearchActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 76
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 77
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 78
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public static newsItemClick(Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/SearchActivity;)V
    .locals 2
    .param p0, "tag"    # Lcom/perm/kate/NewsItemTag;
    .param p1, "activity"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 16
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 22
    :cond_0
    :goto_0
    return-void

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v1, "post"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v1, "copy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    :cond_2
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/perm/kate/SearchedNewsClickHelper;->showWallPostFromNews(Lcom/perm/kate/NewsItemTag;Landroid/app/Activity;Z)V

    goto :goto_0

    .line 21
    :cond_3
    invoke-static {p0, p1}, Lcom/perm/kate/SearchedNewsClickHelper;->createContextMenuSearchedNewsItem(Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/SearchActivity;)V

    goto :goto_0
.end method

.method private static showWallPostFromNews(Lcom/perm/kate/NewsItemTag;Landroid/app/Activity;Z)V
    .locals 4
    .param p0, "tag"    # Lcom/perm/kate/NewsItemTag;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "from_post"    # Z

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 26
    .local v0, "intent":Landroid/content/Intent;
    const-class v2, Lcom/perm/kate/WallMessageActivity;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 27
    new-instance v1, Lcom/perm/kate/api/WallMessage;

    invoke-direct {v1}, Lcom/perm/kate/api/WallMessage;-><init>()V

    .line 28
    .local v1, "post":Lcom/perm/kate/api/WallMessage;
    iget-object v2, p0, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/perm/kate/api/WallMessage;->id:J

    .line 29
    if-eqz p2, :cond_0

    .line 30
    iget-object v2, p0, Lcom/perm/kate/NewsItemTag;->user_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/perm/kate/api/WallMessage;->to_id:J

    .line 31
    iget-object v2, p0, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    iput-object v2, v1, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    .line 34
    :goto_0
    const-string v2, "post"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 35
    const-string v2, "cache_post"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 36
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 37
    return-void

    .line 33
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/perm/kate/api/WallMessage;->to_id:J

    goto :goto_0
.end method
