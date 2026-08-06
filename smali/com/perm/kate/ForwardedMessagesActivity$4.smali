.class Lcom/perm/kate/ForwardedMessagesActivity$4;
.super Ljava/lang/Object;
.source "ForwardedMessagesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ForwardedMessagesActivity;->createContextMenu(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ForwardedMessagesActivity;

.field final synthetic val$menuItems:Ljava/util/ArrayList;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$urls:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/ForwardedMessagesActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ForwardedMessagesActivity;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/perm/kate/ForwardedMessagesActivity$4;->this$0:Lcom/perm/kate/ForwardedMessagesActivity;

    iput-object p2, p0, Lcom/perm/kate/ForwardedMessagesActivity$4;->val$menuItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/ForwardedMessagesActivity$4;->val$urls:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/perm/kate/ForwardedMessagesActivity$4;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/perm/kate/ForwardedMessagesActivity$4;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 151
    :goto_0
    return-void

    .line 145
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/ForwardedMessagesActivity$4;->val$urls:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/ForwardedMessagesActivity$4;->this$0:Lcom/perm/kate/ForwardedMessagesActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->displayLinksMenu(Ljava/util/ArrayList;Landroid/app/Activity;)V

    goto :goto_0

    .line 148
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/ForwardedMessagesActivity$4;->val$text:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/ForwardedMessagesActivity$4;->this$0:Lcom/perm/kate/ForwardedMessagesActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
