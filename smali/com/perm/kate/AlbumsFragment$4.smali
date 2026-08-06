.class Lcom/perm/kate/AlbumsFragment$4;
.super Ljava/lang/Object;
.source "AlbumsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AlbumsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AlbumsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AlbumsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AlbumsFragment;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/perm/kate/AlbumsFragment$4;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    .line 137
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment$4;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-virtual {v2}, Lcom/perm/kate/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/perm/kate/PhotosActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 139
    const-string v3, "com.perm.kate.aid"

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 140
    const-string v2, "com.perm.kate.uid"

    iget-object v3, p0, Lcom/perm/kate/AlbumsFragment$4;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-static {v3}, Lcom/perm/kate/AlbumsFragment;->access$000(Lcom/perm/kate/AlbumsFragment;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v2, "com.perm.kate.select_mode"

    iget-object v3, p0, Lcom/perm/kate/AlbumsFragment$4;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-static {v3}, Lcom/perm/kate/AlbumsFragment;->access$300(Lcom/perm/kate/AlbumsFragment;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment$4;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-static {v2}, Lcom/perm/kate/AlbumsFragment;->access$300(Lcom/perm/kate/AlbumsFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment$4;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-virtual {v2, v1, v6}, Lcom/perm/kate/AlbumsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 160
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment$4;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-static {v2}, Lcom/perm/kate/AlbumsFragment;->access$400(Lcom/perm/kate/AlbumsFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    const-string v2, "photo_to_upload"

    iget-object v3, p0, Lcom/perm/kate/AlbumsFragment$4;->this$0:Lcom/perm/kate/AlbumsFragment;

    iget-object v3, v3, Lcom/perm/kate/AlbumsFragment;->uri_shared:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 146
    const-string v2, "photos_to_upload"

    iget-object v3, p0, Lcom/perm/kate/AlbumsFragment$4;->this$0:Lcom/perm/kate/AlbumsFragment;

    iget-object v3, v3, Lcom/perm/kate/AlbumsFragment;->uris_shared:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 147
    const-string v2, "upload_from_share"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 148
    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment$4;->this$0:Lcom/perm/kate/AlbumsFragment;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/perm/kate/AlbumsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment$4;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-static {v2}, Lcom/perm/kate/AlbumsFragment;->access$500(Lcom/perm/kate/AlbumsFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 155
    .local v0, "i2":Landroid/content/Intent;
    const-string v3, "com.perm.kate.aid"

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 156
    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment$4;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-virtual {v2}, Lcom/perm/kate/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 157
    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment$4;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-virtual {v2}, Lcom/perm/kate/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 159
    .end local v0    # "i2":Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment$4;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-virtual {v2, v1}, Lcom/perm/kate/AlbumsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
