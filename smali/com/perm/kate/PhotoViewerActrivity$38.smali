.class Lcom/perm/kate/PhotoViewerActrivity$38;
.super Ljava/lang/Object;
.source "PhotoViewerActrivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoViewerActrivity;->showEditDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoViewerActrivity;

.field final synthetic val$is_saved_photos_album:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 1580
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$38;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iput-boolean p2, p0, Lcom/perm/kate/PhotoViewerActrivity$38;->val$is_saved_photos_album:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1584
    packed-switch p2, :pswitch_data_0

    .line 1599
    :goto_0
    return-void

    .line 1586
    :pswitch_0
    :try_start_0
    iget-boolean v1, p0, Lcom/perm/kate/PhotoViewerActrivity$38;->val$is_saved_photos_album:Z

    if-eqz v1, :cond_0

    .line 1587
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$38;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$4200(Lcom/perm/kate/PhotoViewerActrivity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1595
    :catch_0
    move-exception v0

    .line 1596
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1597
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1589
    .end local v0    # "th":Ljava/lang/Throwable;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$38;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$4300(Lcom/perm/kate/PhotoViewerActrivity;)V

    goto :goto_0

    .line 1592
    :pswitch_1
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$38;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$4200(Lcom/perm/kate/PhotoViewerActrivity;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1584
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
