.class final Lcom/perm/kate/Helper$7;
.super Ljava/lang/Object;
.source "Helper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Helper;->createCopyContextMenu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$post_id:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$wall_owner_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/perm/kate/Helper$7;->val$menus:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/perm/kate/Helper$7;->val$text:Ljava/lang/String;

    iput-object p3, p0, Lcom/perm/kate/Helper$7;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/perm/kate/Helper$7;->val$wall_owner_id:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/Helper$7;->val$post_id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1011
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/Helper$7;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/MenuItemDetails;

    iget v1, v1, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v1, :pswitch_data_0

    .line 1023
    :goto_0
    return-void

    .line 1013
    :pswitch_0
    iget-object v1, p0, Lcom/perm/kate/Helper$7;->val$text:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/Helper$7;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1019
    :catch_0
    move-exception v0

    .line 1020
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1021
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1016
    .end local v0    # "th":Ljava/lang/Throwable;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/perm/kate/Helper$7;->val$wall_owner_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/Helper$7;->val$post_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/Helper$7;->val$context:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/perm/kate/Helper;->copyPostLink(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1011
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
