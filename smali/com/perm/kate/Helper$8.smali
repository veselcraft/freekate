.class Lcom/perm/kate/Helper$8;
.super Ljava/lang/Object;
.source "Helper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$post_id:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$wall_owner_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1156
    iput-object p1, p0, Lcom/perm/kate/Helper$8;->val$menus:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/perm/kate/Helper$8;->val$text:Ljava/lang/String;

    iput-object p3, p0, Lcom/perm/kate/Helper$8;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/perm/kate/Helper$8;->val$wall_owner_id:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/Helper$8;->val$post_id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1160
    :try_start_0
    iget-object p1, p0, Lcom/perm/kate/Helper$8;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 p2, 0x7

    if-eq p1, p2, :cond_1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1165
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/Helper$8;->val$wall_owner_id:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/Helper$8;->val$post_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/Helper$8;->val$context:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lcom/perm/kate/Helper;->copyPostLink(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 1162
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/Helper$8;->val$text:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/Helper$8;->val$context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1169
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1170
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
