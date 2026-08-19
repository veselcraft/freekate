.class Lcom/perm/kate/VideoAlbumsActivity$5$1;
.super Ljava/lang/Object;
.source "VideoAlbumsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoAlbumsActivity$5;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/VideoAlbumsActivity$5;

.field final synthetic val$album_id:J

.field final synthetic val$album_title:Ljava/lang/String;

.field final synthetic val$menuItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoAlbumsActivity$5;Ljava/util/ArrayList;JLjava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity$5$1;->this$1:Lcom/perm/kate/VideoAlbumsActivity$5;

    iput-object p2, p0, Lcom/perm/kate/VideoAlbumsActivity$5$1;->val$menuItems:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/perm/kate/VideoAlbumsActivity$5$1;->val$album_id:J

    iput-object p5, p0, Lcom/perm/kate/VideoAlbumsActivity$5$1;->val$album_title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 180
    iget-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity$5$1;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity$5$1;->this$1:Lcom/perm/kate/VideoAlbumsActivity$5;

    iget-object p1, p1, Lcom/perm/kate/VideoAlbumsActivity$5;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    iget-wide v0, p0, Lcom/perm/kate/VideoAlbumsActivity$5$1;->val$album_id:J

    invoke-static {p1, v0, v1}, Lcom/perm/kate/VideoAlbumsActivity;->access$700(Lcom/perm/kate/VideoAlbumsActivity;J)V

    goto :goto_0

    .line 182
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity$5$1;->this$1:Lcom/perm/kate/VideoAlbumsActivity$5;

    iget-object p1, p1, Lcom/perm/kate/VideoAlbumsActivity$5;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    iget-wide v0, p0, Lcom/perm/kate/VideoAlbumsActivity$5$1;->val$album_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$5$1;->val$album_title:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/perm/kate/VideoAlbumsActivity;->access$600(Lcom/perm/kate/VideoAlbumsActivity;Ljava/lang/Long;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
