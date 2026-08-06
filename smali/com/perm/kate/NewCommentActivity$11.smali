.class Lcom/perm/kate/NewCommentActivity$11;
.super Ljava/lang/Object;
.source "NewCommentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewCommentActivity;->createAttachAudioDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewCommentActivity;

.field final synthetic val$menuItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewCommentActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewCommentActivity;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity$11;->this$0:Lcom/perm/kate/NewCommentActivity;

    iput-object p2, p0, Lcom/perm/kate/NewCommentActivity$11;->val$menuItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 416
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$11;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 427
    :goto_0
    :pswitch_0
    return-void

    .line 418
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$11;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/NewCommentActivity;->access$1700(Lcom/perm/kate/NewCommentActivity;Z)V

    goto :goto_0

    .line 421
    :pswitch_2
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$11;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/NewCommentActivity;->access$1800(Lcom/perm/kate/NewCommentActivity;Z)V

    goto :goto_0

    .line 424
    :pswitch_3
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$11;->this$0:Lcom/perm/kate/NewCommentActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/perm/kate/NewCommentActivity;->access$1700(Lcom/perm/kate/NewCommentActivity;Z)V

    goto :goto_0

    .line 416
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
