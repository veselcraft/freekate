.class Lcom/perm/kate/GroupTopicsActivity$6;
.super Ljava/lang/Object;
.source "GroupTopicsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupTopicsActivity;->displayContextMenu(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupTopicsActivity;

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$topic_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupTopicsActivity;Ljava/util/ArrayList;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/GroupTopicsActivity;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$6;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iput-object p2, p0, Lcom/perm/kate/GroupTopicsActivity$6;->val$menus:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/perm/kate/GroupTopicsActivity$6;->val$topic_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$6;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 210
    :goto_0
    return-void

    .line 201
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$6;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iget-wide v2, p0, Lcom/perm/kate/GroupTopicsActivity$6;->val$topic_id:J

    invoke-static {v0, v2, v3}, Lcom/perm/kate/GroupTopicsActivity;->access$700(Lcom/perm/kate/GroupTopicsActivity;J)V

    goto :goto_0

    .line 204
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$6;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iget-wide v2, p0, Lcom/perm/kate/GroupTopicsActivity$6;->val$topic_id:J

    invoke-static {v0, v2, v3}, Lcom/perm/kate/GroupTopicsActivity;->access$800(Lcom/perm/kate/GroupTopicsActivity;J)V

    goto :goto_0

    .line 207
    :pswitch_2
    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/perm/kate/GroupTopicsActivity$6;->val$topic_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/GroupTopicsActivity$6;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v2}, Lcom/perm/kate/GroupTopicsActivity;->access$100(Lcom/perm/kate/GroupTopicsActivity;)J

    move-result-wide v2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/perm/kate/GroupTopicsActivity$6;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JZLandroid/content/Context;)V

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
