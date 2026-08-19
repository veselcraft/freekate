.class Lcom/perm/kate/GroupTopicsActivity$7;
.super Ljava/lang/Object;
.source "GroupTopicsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupTopicsActivity;->displayContextMenu(JJZZ)V
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
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$7;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iput-object p2, p0, Lcom/perm/kate/GroupTopicsActivity$7;->val$menus:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/perm/kate/GroupTopicsActivity$7;->val$topic_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 250
    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$7;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 273
    :pswitch_0
    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$7;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iget-wide v1, p0, Lcom/perm/kate/GroupTopicsActivity$7;->val$topic_id:J

    invoke-static {p1, v1, v2, v0}, Lcom/perm/kate/GroupTopicsActivity;->access$1100(Lcom/perm/kate/GroupTopicsActivity;JZ)V

    goto :goto_0

    .line 270
    :pswitch_1
    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$7;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iget-wide v0, p0, Lcom/perm/kate/GroupTopicsActivity$7;->val$topic_id:J

    invoke-static {p1, v0, v1, p2}, Lcom/perm/kate/GroupTopicsActivity;->access$1100(Lcom/perm/kate/GroupTopicsActivity;JZ)V

    goto :goto_0

    .line 267
    :pswitch_2
    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$7;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iget-wide v0, p0, Lcom/perm/kate/GroupTopicsActivity$7;->val$topic_id:J

    invoke-static {p1, v0, v1, p2}, Lcom/perm/kate/GroupTopicsActivity;->access$1000(Lcom/perm/kate/GroupTopicsActivity;JZ)V

    goto :goto_0

    .line 264
    :pswitch_3
    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$7;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iget-wide v1, p0, Lcom/perm/kate/GroupTopicsActivity$7;->val$topic_id:J

    invoke-static {p1, v1, v2, v0}, Lcom/perm/kate/GroupTopicsActivity;->access$1000(Lcom/perm/kate/GroupTopicsActivity;JZ)V

    goto :goto_0

    .line 261
    :pswitch_4
    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$7;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iget-wide v0, p0, Lcom/perm/kate/GroupTopicsActivity$7;->val$topic_id:J

    invoke-static {p1, v0, v1}, Lcom/perm/kate/GroupTopicsActivity;->access$900(Lcom/perm/kate/GroupTopicsActivity;J)V

    goto :goto_0

    :pswitch_5
    const/4 v2, 0x4

    .line 258
    iget-wide p1, p0, Lcom/perm/kate/GroupTopicsActivity$7;->val$topic_id:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$7;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupTopicsActivity;->access$100(Lcom/perm/kate/GroupTopicsActivity;)J

    move-result-wide v4

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/perm/kate/GroupTopicsActivity$7;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static/range {v2 .. v7}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JZLandroid/content/Context;)V

    goto :goto_0

    .line 255
    :pswitch_6
    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$7;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iget-wide v0, p0, Lcom/perm/kate/GroupTopicsActivity$7;->val$topic_id:J

    invoke-static {p1, v0, v1}, Lcom/perm/kate/GroupTopicsActivity;->access$800(Lcom/perm/kate/GroupTopicsActivity;J)V

    goto :goto_0

    .line 252
    :pswitch_7
    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$7;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iget-wide v0, p0, Lcom/perm/kate/GroupTopicsActivity$7;->val$topic_id:J

    invoke-static {p1, v0, v1}, Lcom/perm/kate/GroupTopicsActivity;->access$700(Lcom/perm/kate/GroupTopicsActivity;J)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
