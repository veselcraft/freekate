.class Lcom/perm/kate/AlbumsFragment$3;
.super Ljava/lang/Object;
.source "AlbumsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AlbumsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AlbumsFragment;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/perm/kate/AlbumsFragment$3;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .line 147
    iget-object p1, p0, Lcom/perm/kate/AlbumsFragment$3;->this$0:Lcom/perm/kate/AlbumsFragment;

    iget-object p4, p1, Lcom/perm/kate/AlbumsFragment;->album_move:Lcom/perm/kate/AlbumsFragment$AlbumData;

    if-eqz p4, :cond_0

    .line 148
    invoke-static {p1, p3}, Lcom/perm/kate/AlbumsFragment;->access$200(Lcom/perm/kate/AlbumsFragment;I)V

    return-void

    .line 151
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 152
    iget-object p3, p0, Lcom/perm/kate/AlbumsFragment$3;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-class p4, Lcom/perm/kate/PhotosActivity;

    invoke-virtual {p1, p3, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 153
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    const-string p4, "com.perm.kate.aid"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 154
    iget-object p3, p0, Lcom/perm/kate/AlbumsFragment$3;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-static {p3}, Lcom/perm/kate/AlbumsFragment;->access$000(Lcom/perm/kate/AlbumsFragment;)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    const-string p5, "com.perm.kate.uid"

    invoke-virtual {p1, p5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-object p3, p0, Lcom/perm/kate/AlbumsFragment$3;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-static {p3}, Lcom/perm/kate/AlbumsFragment;->access$300(Lcom/perm/kate/AlbumsFragment;)Z

    move-result p3

    const-string p5, "com.perm.kate.select_mode"

    invoke-virtual {p1, p5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    iget-object p3, p0, Lcom/perm/kate/AlbumsFragment$3;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-static {p3}, Lcom/perm/kate/AlbumsFragment;->access$300(Lcom/perm/kate/AlbumsFragment;)Z

    move-result p3

    const/4 p5, 0x1

    if-eqz p3, :cond_1

    .line 157
    iget-object p2, p0, Lcom/perm/kate/AlbumsFragment$3;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-virtual {p2, p1, p5}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 158
    :cond_1
    iget-object p3, p0, Lcom/perm/kate/AlbumsFragment$3;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-static {p3}, Lcom/perm/kate/AlbumsFragment;->access$400(Lcom/perm/kate/AlbumsFragment;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 159
    iget-object p2, p0, Lcom/perm/kate/AlbumsFragment$3;->this$0:Lcom/perm/kate/AlbumsFragment;

    iget-object p2, p2, Lcom/perm/kate/AlbumsFragment;->uri_shared:Landroid/net/Uri;

    const-string p3, "photo_to_upload"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 160
    iget-object p2, p0, Lcom/perm/kate/AlbumsFragment$3;->this$0:Lcom/perm/kate/AlbumsFragment;

    iget-object p2, p2, Lcom/perm/kate/AlbumsFragment;->uris_shared:Ljava/util/ArrayList;

    const-string p3, "photos_to_upload"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p2, "upload_from_share"

    .line 161
    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 162
    iget-object p2, p0, Lcom/perm/kate/AlbumsFragment$3;->this$0:Lcom/perm/kate/AlbumsFragment;

    const/4 p3, 0x2

    invoke-virtual {p2, p1, p3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 167
    :cond_2
    iget-object p3, p0, Lcom/perm/kate/AlbumsFragment$3;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-static {p3}, Lcom/perm/kate/AlbumsFragment;->access$500(Lcom/perm/kate/AlbumsFragment;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 168
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 169
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 170
    iget-object p2, p0, Lcom/perm/kate/AlbumsFragment$3;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p2, p3, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 171
    iget-object p1, p0, Lcom/perm/kate/AlbumsFragment$3;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 173
    :cond_3
    iget-object p2, p0, Lcom/perm/kate/AlbumsFragment$3;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
