.class Lcom/perm/kate/AudioAlbumsActivity$3;
.super Ljava/lang/Object;
.source "AudioAlbumsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AudioAlbumsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioAlbumsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioAlbumsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioAlbumsActivity;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$3;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

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
    .line 144
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/AudioAlbum;

    .line 145
    .local v0, "album":Lcom/perm/kate/api/AudioAlbum;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 146
    .local v1, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/perm/kate/AudioAlbumsActivity$3;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v2}, Lcom/perm/kate/AudioAlbumsActivity;->access$700(Lcom/perm/kate/AudioAlbumsActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    const-string v2, "owner_id"

    iget-object v3, p0, Lcom/perm/kate/AudioAlbumsActivity$3;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v3}, Lcom/perm/kate/AudioAlbumsActivity;->access$000(Lcom/perm/kate/AudioAlbumsActivity;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 148
    const-string v2, "aid"

    iget-object v3, p0, Lcom/perm/kate/AudioAlbumsActivity$3;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v3}, Lcom/perm/kate/AudioAlbumsActivity;->access$800(Lcom/perm/kate/AudioAlbumsActivity;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 150
    :cond_0
    const-string v2, "album_id"

    iget-wide v4, v0, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 151
    iget-object v2, p0, Lcom/perm/kate/AudioAlbumsActivity$3;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/perm/kate/AudioAlbumsActivity;->setResult(ILandroid/content/Intent;)V

    .line 152
    iget-object v2, p0, Lcom/perm/kate/AudioAlbumsActivity$3;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-virtual {v2}, Lcom/perm/kate/AudioAlbumsActivity;->finish()V

    .line 153
    return-void
.end method
