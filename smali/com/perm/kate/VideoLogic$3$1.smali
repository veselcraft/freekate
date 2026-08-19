.class Lcom/perm/kate/VideoLogic$3$1;
.super Ljava/lang/Object;
.source "VideoLogic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoLogic$3;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoLogic$3;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/perm/kate/VideoLogic$3$1;->this$0:Lcom/perm/kate/VideoLogic$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 131
    iget-object p1, p0, Lcom/perm/kate/VideoLogic$3$1;->this$0:Lcom/perm/kate/VideoLogic$3;

    iget-object p1, p1, Lcom/perm/kate/VideoLogic$3;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/16 p2, 0xf0

    if-eq p1, p2, :cond_4

    const/16 p2, 0x168

    if-eq p1, p2, :cond_3

    const/16 p2, 0x1e0

    if-eq p1, p2, :cond_2

    const/16 p2, 0x2d0

    if-eq p1, p2, :cond_1

    const/16 p2, 0x438

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/VideoLogic$3$1;->this$0:Lcom/perm/kate/VideoLogic$3;

    iget-object p2, p1, Lcom/perm/kate/VideoLogic$3;->val$video:Lcom/perm/kate/api/Video;

    iget-object p1, p1, Lcom/perm/kate/VideoLogic$3;->val$activity:Landroid/app/Activity;

    iget-object v0, p2, Lcom/perm/kate/api/Video;->mp4_1080:Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lcom/perm/kate/VideoLogic;->access$500(Lcom/perm/kate/api/Video;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/VideoLogic$3$1;->this$0:Lcom/perm/kate/VideoLogic$3;

    iget-object p2, p1, Lcom/perm/kate/VideoLogic$3;->val$video:Lcom/perm/kate/api/Video;

    iget-object p1, p1, Lcom/perm/kate/VideoLogic$3;->val$activity:Landroid/app/Activity;

    iget-object v0, p2, Lcom/perm/kate/api/Video;->mp4_720:Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lcom/perm/kate/VideoLogic;->access$500(Lcom/perm/kate/api/Video;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/VideoLogic$3$1;->this$0:Lcom/perm/kate/VideoLogic$3;

    iget-object p2, p1, Lcom/perm/kate/VideoLogic$3;->val$video:Lcom/perm/kate/api/Video;

    iget-object p1, p1, Lcom/perm/kate/VideoLogic$3;->val$activity:Landroid/app/Activity;

    iget-object v0, p2, Lcom/perm/kate/api/Video;->mp4_480:Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lcom/perm/kate/VideoLogic;->access$500(Lcom/perm/kate/api/Video;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/VideoLogic$3$1;->this$0:Lcom/perm/kate/VideoLogic$3;

    iget-object p2, p1, Lcom/perm/kate/VideoLogic$3;->val$video:Lcom/perm/kate/api/Video;

    iget-object p1, p1, Lcom/perm/kate/VideoLogic$3;->val$activity:Landroid/app/Activity;

    iget-object v0, p2, Lcom/perm/kate/api/Video;->mp4_360:Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lcom/perm/kate/VideoLogic;->access$500(Lcom/perm/kate/api/Video;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_4
    iget-object p1, p0, Lcom/perm/kate/VideoLogic$3$1;->this$0:Lcom/perm/kate/VideoLogic$3;

    iget-object p2, p1, Lcom/perm/kate/VideoLogic$3;->val$video:Lcom/perm/kate/api/Video;

    iget-object p1, p1, Lcom/perm/kate/VideoLogic$3;->val$activity:Landroid/app/Activity;

    iget-object v0, p2, Lcom/perm/kate/api/Video;->mp4_240:Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lcom/perm/kate/VideoLogic;->access$500(Lcom/perm/kate/api/Video;Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
