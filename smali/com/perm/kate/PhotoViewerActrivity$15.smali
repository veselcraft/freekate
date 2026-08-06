.class Lcom/perm/kate/PhotoViewerActrivity$15;
.super Ljava/lang/Object;
.source "PhotoViewerActrivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoViewerActrivity;->showPhotoTagDialog(Lcom/perm/kate/api/PhotoTag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoViewerActrivity;

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$pt:Lcom/perm/kate/api/PhotoTag;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;Ljava/util/ArrayList;Lcom/perm/kate/api/PhotoTag;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 971
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$15;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iput-object p2, p0, Lcom/perm/kate/PhotoViewerActrivity$15;->val$menus:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/PhotoViewerActrivity$15;->val$pt:Lcom/perm/kate/api/PhotoTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 975
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$15;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/MenuItemDetails;

    iget v1, v1, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v1, :pswitch_data_0

    .line 987
    :goto_0
    return-void

    .line 977
    :pswitch_0
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$15;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity$15;->val$pt:Lcom/perm/kate/api/PhotoTag;

    iget-wide v2, v2, Lcom/perm/kate/api/PhotoTag;->uid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/PhotoViewerActrivity;->access$2000(Lcom/perm/kate/PhotoViewerActrivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 983
    :catch_0
    move-exception v0

    .line 984
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 985
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 980
    .end local v0    # "th":Ljava/lang/Throwable;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$15;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity$15;->val$pt:Lcom/perm/kate/api/PhotoTag;

    invoke-static {v1, v2}, Lcom/perm/kate/PhotoViewerActrivity;->access$2100(Lcom/perm/kate/PhotoViewerActrivity;Lcom/perm/kate/api/PhotoTag;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 975
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
