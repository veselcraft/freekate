.class Lcom/perm/kate/NewsFragment$19;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewsFragment;->hidePost(Ljava/lang/Long;Lcom/perm/kate/api/Group;Lcom/perm/kate/api/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;

.field final synthetic val$post_owner_id:Ljava/lang/Long;

.field final synthetic val$post_owner_id2:J

.field final synthetic val$sub_menus:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;Ljava/util/ArrayList;Ljava/lang/Long;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewsFragment;

    .prologue
    .line 878
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$19;->this$0:Lcom/perm/kate/NewsFragment;

    iput-object p2, p0, Lcom/perm/kate/NewsFragment$19;->val$sub_menus:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/NewsFragment$19;->val$post_owner_id:Ljava/lang/Long;

    iput-wide p4, p0, Lcom/perm/kate/NewsFragment$19;->val$post_owner_id2:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 881
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$19;->val$sub_menus:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 889
    :goto_0
    return-void

    .line 883
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$19;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$19;->val$post_owner_id:Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/perm/kate/NewsFragment;->access$1200(Lcom/perm/kate/NewsFragment;Ljava/lang/Long;)V

    goto :goto_0

    .line 886
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$19;->this$0:Lcom/perm/kate/NewsFragment;

    iget-wide v2, p0, Lcom/perm/kate/NewsFragment$19;->val$post_owner_id2:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/NewsFragment;->access$1200(Lcom/perm/kate/NewsFragment;Ljava/lang/Long;)V

    goto :goto_0

    .line 881
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
