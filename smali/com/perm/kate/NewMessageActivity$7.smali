.class Lcom/perm/kate/NewMessageActivity$7;
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

    .line 527
    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity$7;->this$0:Lcom/perm/kate/NewMessageActivity;

    iput-object p2, p0, Lcom/perm/kate/NewMessageActivity$7;->val$menuItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 530
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity$7;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 535
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity$7;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/NewMessageActivity;->access$1100(Lcom/perm/kate/NewMessageActivity;Z)V

    goto :goto_0

    .line 532
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity$7;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {p1}, Lcom/perm/kate/NewMessageActivity;->access$1200(Lcom/perm/kate/NewMessageActivity;)V

    :goto_0
    return-void
.end method
