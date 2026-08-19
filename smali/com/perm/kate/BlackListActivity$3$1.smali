.class Lcom/perm/kate/BlackListActivity$3$1;
.super Ljava/lang/Object;
.source "BlackListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/BlackListActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/BlackListActivity$3;

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$uid:J


# direct methods
.method constructor <init>(Lcom/perm/kate/BlackListActivity$3;Ljava/util/ArrayList;J)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/perm/kate/BlackListActivity$3$1;->this$1:Lcom/perm/kate/BlackListActivity$3;

    iput-object p2, p0, Lcom/perm/kate/BlackListActivity$3$1;->val$menus:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/perm/kate/BlackListActivity$3$1;->val$uid:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 97
    iget-object p1, p0, Lcom/perm/kate/BlackListActivity$3$1;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/BlackListActivity$3$1;->this$1:Lcom/perm/kate/BlackListActivity$3;

    iget-object p1, p1, Lcom/perm/kate/BlackListActivity$3;->this$0:Lcom/perm/kate/BlackListActivity;

    iget-wide v0, p0, Lcom/perm/kate/BlackListActivity$3$1;->val$uid:J

    invoke-static {p1, v0, v1}, Lcom/perm/kate/BlackListActivity;->access$500(Lcom/perm/kate/BlackListActivity;J)V

    goto :goto_0

    .line 99
    :cond_1
    iget-wide p1, p0, Lcom/perm/kate/BlackListActivity$3$1;->val$uid:J

    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$3$1;->this$1:Lcom/perm/kate/BlackListActivity$3;

    iget-object v0, v0, Lcom/perm/kate/BlackListActivity$3;->this$0:Lcom/perm/kate/BlackListActivity;

    invoke-static {p1, p2, v0}, Lcom/perm/kate/Helper;->ShowProfile(JLandroid/app/Activity;)V

    :goto_0
    return-void
.end method
