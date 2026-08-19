.class Lcom/perm/kate/SearchWallActivity$9;
.super Ljava/lang/Object;
.source "SearchWallActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchWallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchWallActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchWallActivity;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/perm/kate/SearchWallActivity$9;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 307
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/NewsItemTag;

    if-nez p1, :cond_0

    return-void

    .line 310
    :cond_0
    iget-object p2, p1, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string p3, "reply"

    if-ne p2, p3, :cond_1

    .line 311
    iget-object p2, p0, Lcom/perm/kate/SearchWallActivity$9;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {p2, p1}, Lcom/perm/kate/SearchWallActivity;->access$1400(Lcom/perm/kate/SearchWallActivity;Lcom/perm/kate/NewsItemTag;)V

    goto :goto_0

    .line 312
    :cond_1
    invoke-static {}, Lcom/perm/kate/NewsFragment;->clickOpensNews()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 313
    iget-object p2, p1, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 314
    iget-object p3, p1, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    .line 315
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iget-boolean p1, p1, Lcom/perm/kate/NewsItemTag;->is_suggested:Z

    const/4 p4, 0x0

    iget-object p5, p0, Lcom/perm/kate/SearchWallActivity$9;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {p2, p3, p1, p4, p5}, Lcom/perm/kate/Helper;->showWallPost(Ljava/lang/Long;Ljava/lang/Long;ZZLandroid/content/Context;)V

    goto :goto_0

    .line 317
    :cond_2
    iget-object p2, p0, Lcom/perm/kate/SearchWallActivity$9;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-virtual {p2, p1}, Lcom/perm/kate/SearchWallActivity;->CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V

    :goto_0
    return-void
.end method
