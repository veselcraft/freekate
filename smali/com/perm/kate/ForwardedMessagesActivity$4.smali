.class Lcom/perm/kate/ForwardedMessagesActivity$4;
.super Ljava/lang/Object;
.source "ForwardedMessagesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ForwardedMessagesActivity;->createContextMenu(Ljava/lang/String;JLcom/perm/kate/api/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ForwardedMessagesActivity;

.field final synthetic val$menuItems:Ljava/util/ArrayList;

.field final synthetic val$message:Lcom/perm/kate/api/Message;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$urls:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/ForwardedMessagesActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/perm/kate/api/Message;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/perm/kate/ForwardedMessagesActivity$4;->this$0:Lcom/perm/kate/ForwardedMessagesActivity;

    iput-object p2, p0, Lcom/perm/kate/ForwardedMessagesActivity$4;->val$menuItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/ForwardedMessagesActivity$4;->val$urls:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/perm/kate/ForwardedMessagesActivity$4;->val$text:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/ForwardedMessagesActivity$4;->val$message:Lcom/perm/kate/api/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 143
    iget-object p1, p0, Lcom/perm/kate/ForwardedMessagesActivity$4;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/ForwardedMessagesActivity$4;->val$text:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/ForwardedMessagesActivity$4;->val$message:Lcom/perm/kate/api/Message;

    invoke-static {p1, p2}, Lcom/perm/kate/MessageThreadFragment;->getTextToCopy(Ljava/lang/String;Lcom/perm/kate/api/Message;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/perm/kate/ForwardedMessagesActivity$4;->this$0:Lcom/perm/kate/ForwardedMessagesActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/ForwardedMessagesActivity$4;->val$urls:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/perm/kate/ForwardedMessagesActivity$4;->this$0:Lcom/perm/kate/ForwardedMessagesActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->displayLinksMenu(Ljava/util/ArrayList;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
