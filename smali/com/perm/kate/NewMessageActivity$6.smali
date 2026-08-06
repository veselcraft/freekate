.class Lcom/perm/kate/NewMessageActivity$6;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewMessageActivity;->createAttachVideoDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewMessageActivity;

.field final synthetic val$menuItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewMessageActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewMessageActivity;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity$6;->this$0:Lcom/perm/kate/NewMessageActivity;

    iput-object p2, p0, Lcom/perm/kate/NewMessageActivity$6;->val$menuItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 492
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$6;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 500
    :goto_0
    return-void

    .line 494
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$6;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMessageActivity;->access$1200(Lcom/perm/kate/NewMessageActivity;)V

    goto :goto_0

    .line 497
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$6;->this$0:Lcom/perm/kate/NewMessageActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/perm/kate/NewMessageActivity;->access$1100(Lcom/perm/kate/NewMessageActivity;Z)V

    goto :goto_0

    .line 492
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
