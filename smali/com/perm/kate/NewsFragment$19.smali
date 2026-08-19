.class Lcom/perm/kate/NewsFragment$19;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;

.field final synthetic val$post_owner_id:Ljava/lang/Long;

.field final synthetic val$post_owner_id2:J

.field final synthetic val$sub_menus:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;Ljava/util/ArrayList;Ljava/lang/Long;J)V
    .locals 0

    .line 910
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$19;->this$0:Lcom/perm/kate/NewsFragment;

    iput-object p2, p0, Lcom/perm/kate/NewsFragment$19;->val$sub_menus:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/NewsFragment$19;->val$post_owner_id:Ljava/lang/Long;

    iput-wide p4, p0, Lcom/perm/kate/NewsFragment$19;->val$post_owner_id2:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 913
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$19;->val$sub_menus:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 918
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$19;->this$0:Lcom/perm/kate/NewsFragment;

    iget-wide v0, p0, Lcom/perm/kate/NewsFragment$19;->val$post_owner_id2:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/perm/kate/NewsFragment;->access$1200(Lcom/perm/kate/NewsFragment;Ljava/lang/Long;Ljava/lang/String;)V

    goto :goto_0

    .line 915
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$19;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v0, p0, Lcom/perm/kate/NewsFragment$19;->val$post_owner_id:Ljava/lang/Long;

    invoke-static {p1, v0, p2}, Lcom/perm/kate/NewsFragment;->access$1200(Lcom/perm/kate/NewsFragment;Ljava/lang/Long;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
