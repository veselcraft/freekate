.class Lcom/perm/kate/BannedActivity$3$1;
.super Ljava/lang/Object;
.source "BannedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/BannedActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/BannedActivity$3;

.field final synthetic val$item:Lcom/perm/kate/BannedAdapter$BannItem;

.field final synthetic val$menus:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/BannedActivity$3;Ljava/util/ArrayList;Lcom/perm/kate/BannedAdapter$BannItem;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/perm/kate/BannedActivity$3$1;->this$1:Lcom/perm/kate/BannedActivity$3;

    iput-object p2, p0, Lcom/perm/kate/BannedActivity$3$1;->val$menus:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/BannedActivity$3$1;->val$item:Lcom/perm/kate/BannedAdapter$BannItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 111
    iget-object p1, p0, Lcom/perm/kate/BannedActivity$3$1;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/BannedActivity$3$1;->this$1:Lcom/perm/kate/BannedActivity$3;

    iget-object p1, p1, Lcom/perm/kate/BannedActivity$3;->this$0:Lcom/perm/kate/BannedActivity;

    iget-object p2, p0, Lcom/perm/kate/BannedActivity$3$1;->val$item:Lcom/perm/kate/BannedAdapter$BannItem;

    invoke-static {p1, p2}, Lcom/perm/kate/BannedActivity;->access$400(Lcom/perm/kate/BannedActivity;Lcom/perm/kate/BannedAdapter$BannItem;)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/BannedActivity$3$1;->val$item:Lcom/perm/kate/BannedAdapter$BannItem;

    iget-wide p1, p1, Lcom/perm/kate/BannedAdapter$BannItem;->id:J

    iget-object v0, p0, Lcom/perm/kate/BannedActivity$3$1;->this$1:Lcom/perm/kate/BannedActivity$3;

    iget-object v0, v0, Lcom/perm/kate/BannedActivity$3;->this$0:Lcom/perm/kate/BannedActivity;

    invoke-static {p1, p2, v0}, Lcom/perm/kate/Helper;->ShowProfile(JLandroid/app/Activity;)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/BannedActivity$3$1;->val$item:Lcom/perm/kate/BannedAdapter$BannItem;

    iget-wide p1, p1, Lcom/perm/kate/BannedAdapter$BannItem;->id:J

    iget-object v0, p0, Lcom/perm/kate/BannedActivity$3$1;->this$1:Lcom/perm/kate/BannedActivity$3;

    iget-object v0, v0, Lcom/perm/kate/BannedActivity$3;->this$0:Lcom/perm/kate/BannedActivity;

    invoke-static {p1, p2, v0}, Lcom/perm/kate/Helper;->showGroup(JLandroid/app/Activity;)V

    :goto_0
    return-void
.end method
