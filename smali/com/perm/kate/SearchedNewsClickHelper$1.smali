.class final Lcom/perm/kate/SearchedNewsClickHelper$1;
.super Ljava/lang/Object;
.source "SearchedNewsClickHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchedNewsClickHelper;->createContextMenuSearchedNewsItem(Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/SearchActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/SearchActivity;

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$tag:Lcom/perm/kate/NewsItemTag;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/SearchActivity;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/perm/kate/SearchedNewsClickHelper$1;->val$menus:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/perm/kate/SearchedNewsClickHelper$1;->val$tag:Lcom/perm/kate/NewsItemTag;

    iput-object p3, p0, Lcom/perm/kate/SearchedNewsClickHelper$1;->val$activity:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/SearchedNewsClickHelper$1;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/MenuItemDetails;

    iget v1, v1, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v1, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 62
    :pswitch_0
    iget-object v1, p0, Lcom/perm/kate/SearchedNewsClickHelper$1;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v2, p0, Lcom/perm/kate/SearchedNewsClickHelper$1;->val$activity:Lcom/perm/kate/SearchActivity;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/perm/kate/SearchedNewsClickHelper;->access$000(Lcom/perm/kate/NewsItemTag;Landroid/app/Activity;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 65
    .end local v0    # "th":Ljava/lang/Throwable;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/perm/kate/SearchedNewsClickHelper$1;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v1, v1, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/SearchedNewsClickHelper$1;->val$activity:Lcom/perm/kate/SearchActivity;

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 68
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://m.vk.com/wall"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/SearchedNewsClickHelper$1;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v2, v2, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/SearchedNewsClickHelper$1;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-wide v2, v2, Lcom/perm/kate/NewsItemTag;->_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/SearchedNewsClickHelper$1;->val$activity:Lcom/perm/kate/SearchActivity;

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
