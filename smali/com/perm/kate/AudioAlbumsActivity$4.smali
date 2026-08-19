.class Lcom/perm/kate/AudioAlbumsActivity$4;
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

    .line 156
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$4;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 159
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/AudioAlbum;

    .line 161
    iget-object p2, p0, Lcom/perm/kate/AudioAlbumsActivity$4;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {p2}, Lcom/perm/kate/AudioAlbumsActivity;->access$700(Lcom/perm/kate/AudioAlbumsActivity;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 162
    iget-wide v0, p1, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    iget-object p2, p0, Lcom/perm/kate/AudioAlbumsActivity$4;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {p2}, Lcom/perm/kate/AudioAlbumsActivity;->access$100(Lcom/perm/kate/AudioAlbumsActivity;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p1, Lcom/perm/kate/api/AudioAlbum;->access_key:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/AudioAlbumsActivity$4;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v5}, Lcom/perm/kate/AudioAlbumsActivity;->access$800(Lcom/perm/kate/AudioAlbumsActivity;)Z

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/perm/kate/Helper;->openAudioPlaylist(JJLjava/lang/String;Landroid/app/Activity;Z)V

    return-void

    .line 166
    :cond_0
    iget-object p2, p0, Lcom/perm/kate/AudioAlbumsActivity$4;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {p2}, Lcom/perm/kate/AudioAlbumsActivity;->access$900(Lcom/perm/kate/AudioAlbumsActivity;)Ljava/util/ArrayList;

    move-result-object p3

    iget-object p4, p0, Lcom/perm/kate/AudioAlbumsActivity$4;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {p4}, Lcom/perm/kate/AudioAlbumsActivity;->access$100(Lcom/perm/kate/AudioAlbumsActivity;)Ljava/lang/Long;

    move-result-object p4

    iget-wide v0, p1, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p3, p4, p1}, Lcom/perm/kate/AudioAlbumsActivity;->moveToAlbum(Ljava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method
