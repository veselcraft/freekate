.class Lcom/perm/kate/PhotoViewerActrivity$7;
.super Ljava/lang/Object;
.source "PhotoViewerActrivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoViewerActrivity;->showShareDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoViewerActrivity;

.field final synthetic val$menus:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 663
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$7;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iput-object p2, p0, Lcom/perm/kate/PhotoViewerActrivity$7;->val$menus:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 667
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$7;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/MenuItemDetails;

    iget v1, v1, Lcom/perm/kate/MenuItemDetails;->code:I

    sparse-switch v1, :sswitch_data_0

    .line 688
    :goto_0
    return-void

    .line 669
    :sswitch_0
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$7;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$900(Lcom/perm/kate/PhotoViewerActrivity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 684
    :catch_0
    move-exception v0

    .line 685
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 686
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 672
    .end local v0    # "th":Ljava/lang/Throwable;
    :sswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$7;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/perm/kate/PhotoViewerActrivity;->access$1000(Lcom/perm/kate/PhotoViewerActrivity;J)V

    goto :goto_0

    .line 675
    :sswitch_2
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$7;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$1100(Lcom/perm/kate/PhotoViewerActrivity;)V

    goto :goto_0

    .line 678
    :sswitch_3
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$7;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$1200(Lcom/perm/kate/PhotoViewerActrivity;)V

    goto :goto_0

    .line 681
    :sswitch_4
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$7;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$1300(Lcom/perm/kate/PhotoViewerActrivity;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 667
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x16 -> :sswitch_2
        0x19 -> :sswitch_1
        0x1c -> :sswitch_3
        0x25 -> :sswitch_4
    .end sparse-switch
.end method
