.class Lcom/perm/kate/AudioAlbumsActivity$4$1;
.super Ljava/lang/Object;
.source "AudioAlbumsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AudioAlbumsActivity$4;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/AudioAlbumsActivity$4;

.field final synthetic val$album_id:J

.field final synthetic val$album_title:Ljava/lang/String;

.field final synthetic val$menuItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioAlbumsActivity$4;Ljava/util/ArrayList;JLjava/lang/String;)V
    .locals 1
    .param p1, "this$1"    # Lcom/perm/kate/AudioAlbumsActivity$4;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$4$1;->this$1:Lcom/perm/kate/AudioAlbumsActivity$4;

    iput-object p2, p0, Lcom/perm/kate/AudioAlbumsActivity$4$1;->val$menuItems:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/perm/kate/AudioAlbumsActivity$4$1;->val$album_id:J

    iput-object p5, p0, Lcom/perm/kate/AudioAlbumsActivity$4$1;->val$album_title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 219
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$4$1;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 227
    :goto_0
    return-void

    .line 221
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$4$1;->this$1:Lcom/perm/kate/AudioAlbumsActivity$4;

    iget-object v0, v0, Lcom/perm/kate/AudioAlbumsActivity$4;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    iget-wide v2, p0, Lcom/perm/kate/AudioAlbumsActivity$4$1;->val$album_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/AudioAlbumsActivity$4$1;->val$album_title:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/perm/kate/AudioAlbumsActivity;->access$900(Lcom/perm/kate/AudioAlbumsActivity;Ljava/lang/Long;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$4$1;->this$1:Lcom/perm/kate/AudioAlbumsActivity$4;

    iget-object v0, v0, Lcom/perm/kate/AudioAlbumsActivity$4;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    iget-wide v2, p0, Lcom/perm/kate/AudioAlbumsActivity$4$1;->val$album_id:J

    invoke-static {v0, v2, v3}, Lcom/perm/kate/AudioAlbumsActivity;->access$1000(Lcom/perm/kate/AudioAlbumsActivity;J)V

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
