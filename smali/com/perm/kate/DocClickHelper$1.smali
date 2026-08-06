.class Lcom/perm/kate/DocClickHelper$1;
.super Ljava/lang/Object;
.source "DocClickHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/DocClickHelper;->createContextMenu(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DocClickHelper;

.field final synthetic val$access_key:Ljava/lang/String;

.field final synthetic val$doc_id:J

.field final synthetic val$ext:Ljava/lang/String;

.field final synthetic val$menuItems:Ljava/util/ArrayList;

.field final synthetic val$owner_id:J

.field final synthetic val$preview:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/DocClickHelper;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/DocClickHelper;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/perm/kate/DocClickHelper$1;->this$0:Lcom/perm/kate/DocClickHelper;

    iput-object p2, p0, Lcom/perm/kate/DocClickHelper$1;->val$menuItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/DocClickHelper$1;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/perm/kate/DocClickHelper$1;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/DocClickHelper$1;->val$ext:Ljava/lang/String;

    iput-wide p6, p0, Lcom/perm/kate/DocClickHelper$1;->val$doc_id:J

    iput-wide p8, p0, Lcom/perm/kate/DocClickHelper$1;->val$owner_id:J

    iput-object p10, p0, Lcom/perm/kate/DocClickHelper$1;->val$access_key:Ljava/lang/String;

    iput-object p11, p0, Lcom/perm/kate/DocClickHelper$1;->val$preview:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/perm/kate/DocClickHelper$1;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 63
    :pswitch_0
    new-instance v0, Lcom/perm/utils/DownloadManagerHelper;

    invoke-direct {v0}, Lcom/perm/utils/DownloadManagerHelper;-><init>()V

    iget-object v1, p0, Lcom/perm/kate/DocClickHelper$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/DocClickHelper$1;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/DocClickHelper$1;->val$ext:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/utils/DownloadManagerHelper;->downloadDoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :pswitch_1
    iget-object v1, p0, Lcom/perm/kate/DocClickHelper$1;->this$0:Lcom/perm/kate/DocClickHelper;

    iget-object v2, p0, Lcom/perm/kate/DocClickHelper$1;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/DocClickHelper$1;->val$title:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/kate/DocClickHelper$1;->val$ext:Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/perm/kate/DocClickHelper$1;->val$doc_id:J

    iget-wide v8, p0, Lcom/perm/kate/DocClickHelper$1;->val$owner_id:J

    iget-object v10, p0, Lcom/perm/kate/DocClickHelper$1;->val$access_key:Ljava/lang/String;

    iget-object v11, p0, Lcom/perm/kate/DocClickHelper$1;->val$preview:Ljava/lang/String;

    invoke-static/range {v1 .. v11}, Lcom/perm/kate/DocClickHelper;->access$000(Lcom/perm/kate/DocClickHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :pswitch_2
    iget-wide v0, p0, Lcom/perm/kate/DocClickHelper$1;->val$owner_id:J

    iget-wide v2, p0, Lcom/perm/kate/DocClickHelper$1;->val$doc_id:J

    iget-object v4, p0, Lcom/perm/kate/DocClickHelper$1;->this$0:Lcom/perm/kate/DocClickHelper;

    invoke-static {v4}, Lcom/perm/kate/DocClickHelper;->access$100(Lcom/perm/kate/DocClickHelper;)Lcom/perm/kate/BaseActivity;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/perm/kate/Helper;->copyDocLink(JJLandroid/content/Context;)V

    goto :goto_0

    .line 72
    :pswitch_3
    iget-object v0, p0, Lcom/perm/kate/DocClickHelper$1;->this$0:Lcom/perm/kate/DocClickHelper;

    iget-wide v2, p0, Lcom/perm/kate/DocClickHelper$1;->val$doc_id:J

    iget-wide v4, p0, Lcom/perm/kate/DocClickHelper$1;->val$owner_id:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/perm/kate/DocClickHelper;->access$200(Lcom/perm/kate/DocClickHelper;JJ)V

    goto :goto_0

    .line 75
    :pswitch_4
    iget-wide v0, p0, Lcom/perm/kate/DocClickHelper$1;->val$owner_id:J

    iget-wide v2, p0, Lcom/perm/kate/DocClickHelper$1;->val$doc_id:J

    iget-object v4, p0, Lcom/perm/kate/DocClickHelper$1;->val$access_key:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/DocClickHelper$1;->this$0:Lcom/perm/kate/DocClickHelper;

    invoke-static {v5}, Lcom/perm/kate/DocClickHelper;->access$100(Lcom/perm/kate/DocClickHelper;)Lcom/perm/kate/BaseActivity;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/GifViewActivity;->addToMyDocs(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V

    goto :goto_0

    .line 78
    :pswitch_5
    iget-object v1, p0, Lcom/perm/kate/DocClickHelper$1;->this$0:Lcom/perm/kate/DocClickHelper;

    iget-wide v2, p0, Lcom/perm/kate/DocClickHelper$1;->val$doc_id:J

    iget-wide v4, p0, Lcom/perm/kate/DocClickHelper$1;->val$owner_id:J

    iget-object v6, p0, Lcom/perm/kate/DocClickHelper$1;->val$title:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/perm/kate/DocClickHelper;->access$300(Lcom/perm/kate/DocClickHelper;JJLjava/lang/String;)V

    goto :goto_0

    .line 81
    :pswitch_6
    iget-wide v0, p0, Lcom/perm/kate/DocClickHelper$1;->val$owner_id:J

    iget-wide v2, p0, Lcom/perm/kate/DocClickHelper$1;->val$doc_id:J

    iget-object v4, p0, Lcom/perm/kate/DocClickHelper$1;->val$access_key:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/DocClickHelper$1;->this$0:Lcom/perm/kate/DocClickHelper;

    invoke-static {v5}, Lcom/perm/kate/DocClickHelper;->access$100(Lcom/perm/kate/DocClickHelper;)Lcom/perm/kate/BaseActivity;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/GifViewActivity;->sendToFriend(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
