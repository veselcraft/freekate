.class Lcom/perm/kate/VideoAlbumsActivity$3;
.super Ljava/lang/Object;
.source "VideoAlbumsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/VideoAlbumsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoAlbumsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoAlbumsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/VideoAlbumsActivity;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity$3;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/AudioAlbum;

    .line 132
    .local v0, "album":Lcom/perm/kate/api/AudioAlbum;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 133
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "album_id"

    iget-wide v4, v0, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 134
    iget-object v2, p0, Lcom/perm/kate/VideoAlbumsActivity$3;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/perm/kate/VideoAlbumsActivity;->setResult(ILandroid/content/Intent;)V

    .line 135
    iget-object v2, p0, Lcom/perm/kate/VideoAlbumsActivity$3;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-virtual {v2}, Lcom/perm/kate/VideoAlbumsActivity;->finish()V

    .line 136
    return-void
.end method
