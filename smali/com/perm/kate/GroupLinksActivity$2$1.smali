.class Lcom/perm/kate/GroupLinksActivity$2$1;
.super Ljava/lang/Object;
.source "GroupLinksActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupLinksActivity$2;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/GroupLinksActivity$2;

.field final synthetic val$link:Lcom/perm/kate/api/Link;

.field final synthetic val$menuItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupLinksActivity$2;Ljava/util/ArrayList;Lcom/perm/kate/api/Link;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/perm/kate/GroupLinksActivity$2$1;->this$1:Lcom/perm/kate/GroupLinksActivity$2;

    iput-object p2, p0, Lcom/perm/kate/GroupLinksActivity$2$1;->val$menuItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/GroupLinksActivity$2$1;->val$link:Lcom/perm/kate/api/Link;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 102
    iget-object p1, p0, Lcom/perm/kate/GroupLinksActivity$2$1;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/GroupLinksActivity$2$1;->this$1:Lcom/perm/kate/GroupLinksActivity$2;

    iget-object p1, p1, Lcom/perm/kate/GroupLinksActivity$2;->this$0:Lcom/perm/kate/GroupLinksActivity;

    iget-object p2, p0, Lcom/perm/kate/GroupLinksActivity$2$1;->val$link:Lcom/perm/kate/api/Link;

    invoke-static {p1, p2}, Lcom/perm/kate/GroupLinksActivity;->access$200(Lcom/perm/kate/GroupLinksActivity;Lcom/perm/kate/api/Link;)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/GroupLinksActivity$2$1;->this$1:Lcom/perm/kate/GroupLinksActivity$2;

    iget-object p1, p1, Lcom/perm/kate/GroupLinksActivity$2;->this$0:Lcom/perm/kate/GroupLinksActivity;

    iget-object p2, p0, Lcom/perm/kate/GroupLinksActivity$2$1;->val$link:Lcom/perm/kate/api/Link;

    invoke-static {p1, p2}, Lcom/perm/kate/GroupLinksActivity;->access$100(Lcom/perm/kate/GroupLinksActivity;Lcom/perm/kate/api/Link;)V

    :goto_0
    return-void
.end method
