.class Lcom/perm/kate/VideoLogic$3$1;
.super Ljava/lang/Object;
.source "VideoLogic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoLogic$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoLogic$3;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoLogic$3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/VideoLogic$3;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/perm/kate/VideoLogic$3$1;->this$0:Lcom/perm/kate/VideoLogic$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/perm/kate/VideoLogic$3$1;->this$0:Lcom/perm/kate/VideoLogic$3;

    iget-object v0, v0, Lcom/perm/kate/VideoLogic$3;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    sparse-switch v0, :sswitch_data_0

    .line 130
    :goto_0
    return-void

    .line 115
    :sswitch_0
    iget-object v0, p0, Lcom/perm/kate/VideoLogic$3$1;->this$0:Lcom/perm/kate/VideoLogic$3;

    iget-object v0, v0, Lcom/perm/kate/VideoLogic$3;->val$video:Lcom/perm/kate/api/Video;

    iget-object v1, p0, Lcom/perm/kate/VideoLogic$3$1;->this$0:Lcom/perm/kate/VideoLogic$3;

    iget-object v1, v1, Lcom/perm/kate/VideoLogic$3;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/perm/kate/VideoLogic$3$1;->this$0:Lcom/perm/kate/VideoLogic$3;

    iget-object v2, v2, Lcom/perm/kate/VideoLogic$3;->val$video:Lcom/perm/kate/api/Video;

    iget-object v2, v2, Lcom/perm/kate/api/Video;->mp4_240:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/perm/kate/VideoLogic;->access$100(Lcom/perm/kate/api/Video;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :sswitch_1
    iget-object v0, p0, Lcom/perm/kate/VideoLogic$3$1;->this$0:Lcom/perm/kate/VideoLogic$3;

    iget-object v0, v0, Lcom/perm/kate/VideoLogic$3;->val$video:Lcom/perm/kate/api/Video;

    iget-object v1, p0, Lcom/perm/kate/VideoLogic$3$1;->this$0:Lcom/perm/kate/VideoLogic$3;

    iget-object v1, v1, Lcom/perm/kate/VideoLogic$3;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/perm/kate/VideoLogic$3$1;->this$0:Lcom/perm/kate/VideoLogic$3;

    iget-object v2, v2, Lcom/perm/kate/VideoLogic$3;->val$video:Lcom/perm/kate/api/Video;

    iget-object v2, v2, Lcom/perm/kate/api/Video;->mp4_360:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/perm/kate/VideoLogic;->access$100(Lcom/perm/kate/api/Video;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :sswitch_2
    iget-object v0, p0, Lcom/perm/kate/VideoLogic$3$1;->this$0:Lcom/perm/kate/VideoLogic$3;

    iget-object v0, v0, Lcom/perm/kate/VideoLogic$3;->val$video:Lcom/perm/kate/api/Video;

    iget-object v1, p0, Lcom/perm/kate/VideoLogic$3$1;->this$0:Lcom/perm/kate/VideoLogic$3;

    iget-object v1, v1, Lcom/perm/kate/VideoLogic$3;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/perm/kate/VideoLogic$3$1;->this$0:Lcom/perm/kate/VideoLogic$3;

    iget-object v2, v2, Lcom/perm/kate/VideoLogic$3;->val$video:Lcom/perm/kate/api/Video;

    iget-object v2, v2, Lcom/perm/kate/api/Video;->mp4_480:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/perm/kate/VideoLogic;->access$100(Lcom/perm/kate/api/Video;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :sswitch_3
    iget-object v0, p0, Lcom/perm/kate/VideoLogic$3$1;->this$0:Lcom/perm/kate/VideoLogic$3;

    iget-object v0, v0, Lcom/perm/kate/VideoLogic$3;->val$video:Lcom/perm/kate/api/Video;

    iget-object v1, p0, Lcom/perm/kate/VideoLogic$3$1;->this$0:Lcom/perm/kate/VideoLogic$3;

    iget-object v1, v1, Lcom/perm/kate/VideoLogic$3;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/perm/kate/VideoLogic$3$1;->this$0:Lcom/perm/kate/VideoLogic$3;

    iget-object v2, v2, Lcom/perm/kate/VideoLogic$3;->val$video:Lcom/perm/kate/api/Video;

    iget-object v2, v2, Lcom/perm/kate/api/Video;->mp4_720:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/perm/kate/VideoLogic;->access$100(Lcom/perm/kate/api/Video;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :sswitch_4
    iget-object v0, p0, Lcom/perm/kate/VideoLogic$3$1;->this$0:Lcom/perm/kate/VideoLogic$3;

    iget-object v0, v0, Lcom/perm/kate/VideoLogic$3;->val$video:Lcom/perm/kate/api/Video;

    iget-object v1, p0, Lcom/perm/kate/VideoLogic$3$1;->this$0:Lcom/perm/kate/VideoLogic$3;

    iget-object v1, v1, Lcom/perm/kate/VideoLogic$3;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/perm/kate/VideoLogic$3$1;->this$0:Lcom/perm/kate/VideoLogic$3;

    iget-object v2, v2, Lcom/perm/kate/VideoLogic$3;->val$video:Lcom/perm/kate/api/Video;

    iget-object v2, v2, Lcom/perm/kate/api/Video;->mp4_1080:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/perm/kate/VideoLogic;->access$100(Lcom/perm/kate/api/Video;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :sswitch_data_0
    .sparse-switch
        0xf0 -> :sswitch_0
        0x168 -> :sswitch_1
        0x1e0 -> :sswitch_2
        0x2d0 -> :sswitch_3
        0x438 -> :sswitch_4
    .end sparse-switch
.end method
